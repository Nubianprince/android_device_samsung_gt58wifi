/*
   Copyright (c) 2017, The LineageOS Project

   Redistribution and use in source and binary forms, with or without
   modification, are permitted provided that the following conditions are
   met:
    * Redistributions of source code must retain the above copyright
      notice, this list of conditions and the following disclaimer.
    * Redistributions in binary form must reproduce the above
      copyright notice, this list of conditions and the following
      disclaimer in the documentation and/or other materials provided
      with the distribution.
    * Neither the name of The Linux Foundation nor the names of its
      contributors may be used to endorse or promote products derived
      from this software without specific prior written permission.

   THIS SOFTWARE IS PROVIDED "AS IS" AND ANY EXPRESS OR IMPLIED
   WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
   MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NON-INFRINGEMENT
   ARE DISCLAIMED.  IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS
   BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
   CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
   SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR
   BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY,
   WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE
   OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN
   IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 */

#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <fcntl.h>
#include <unistd.h>

#include <android-base/file.h>
#include <android-base/properties.h>
#include <android-base/strings.h>

#define _REALLY_INCLUDE_SYS__SYSTEM_PROPERTIES_H_
#include <sys/_system_properties.h>

#include "vendor_init.h"
#include "property_service.h"
#include "util.h"

#define SIMSLOT_FILE "/proc/simslot_count"

using android::base::GetProperty;
using android::base::ReadFileToString;
using android::base::Trim;

#define SERIAL_NUMBER_FILE "/efs/FactoryApp/serial_no"

// copied from build/tools/releasetools/ota_from_target_files.py
// but with "." at the end and empty entry
std::vector<std::string> ro_product_props_default_source_order = {
    ".",
    "product.",
    "product_services.",
    "odm.",
    "vendor.",
    "system.",
};

void property_override(char const prop[], char const value[], bool add = true)
{
    auto pi = (prop_info *) __system_property_find(prop);

    if (pi != nullptr) {
        __system_property_update(pi, value, strlen(value));
    } else if (add) {
        __system_property_add(prop, strlen(prop), value, strlen(value));
    }
}

/* Read the file at filename and returns the integer
 * value in the file.
 *
 * @prereq: Assumes that integer is non-negative.
 *
 * @return: integer value read if succesful, -1 otherwise. */
int read_integer(const char* filename)
{
    int retval;
    FILE * file;

    /* open the file */
    if (!(file = fopen(filename, "r"))) {
        return -1;
    }

    /* read the value from the file */
    fscanf(file, "%d", &retval);
    fclose(file);

    return retval;
}

void set_dsds_properties()
{
    property_override("ro.multisim.simslotcount", "2");
    property_override("ro.telephony.ril.config", "simactivation");
    property_override("persist.radio.multisim.config", "dsds");
    property_override("rild.libpath2", "/vendor/lib/libsec-ril-dsds.so");
}

void set_gsm_properties()
{
    property_override("telephony.lteOnCdmaDevice", "0");
    property_override("ro.telephony.default_network", "9");
}

void set_wifi_properties()
{
    property_override("ro.carrier", "wifi-only");
    property_override("ro.radio.noril", "1");
}

void set_target_properties(const char *device, const char *model)
{
    const auto set_ro_product_prop = [](const std::string &source,
            const std::string &prop, const std::string &value) {
        auto prop_name = "ro.product." + source + prop;
        property_override(prop_name.c_str(), value.c_str(), false);
    };

    for (const auto &source : ro_product_props_default_source_order) {
        set_ro_product_prop(source, "device", device);
        set_ro_product_prop(source, "model", model);
    }

    property_override("ro.ril.telephony.mqanelements", "6");

    property_override("ro.boot.btmacaddr", "00:00:00:00:00:00");

    /* check if the simslot count file exists */
    if (access(SIMSLOT_FILE, F_OK) == 0) {
        int sim_count = read_integer(SIMSLOT_FILE);

        /* set the dual sim props */
        if (sim_count == 2)
            set_dsds_properties();
    }

    char const *serial_number_file = SERIAL_NUMBER_FILE;
    std::string serial_number;

    if (ReadFileToString(serial_number_file, &serial_number)) {
            serial_number = Trim(serial_number);
            property_override("ro.serialno", serial_number.c_str());
    }
}

void init_target_properties()
{
    char *device = NULL;
    char *model = NULL;

    /* set the device properties */
    std::string bootloader = android::base::GetProperty("ro.bootloader", "");

    if (bootloader.find("T350") == 0) {
        device = (char *)"gt58wifi";
        model = (char *)"SM-T350";
        set_wifi_properties();
    } else if (bootloader.find("T357T") == 0) {
        device = (char *)"gt58ltetmo";
        model = (char *)"SM-T357T";
        set_gsm_properties();
    } else {
        return;
    }

    /* set the properties */
    set_target_properties(device, model);
}

void vendor_load_properties(void)
{
    init_target_properties();
}
