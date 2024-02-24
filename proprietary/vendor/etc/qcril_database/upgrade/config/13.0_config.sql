/*
  Copyright (c) 2022 Qualcomm Technologies, Inc.
  All Rights Reserved.
  Confidential and Proprietary - Qualcomm Technologies, Inc.
*/

CREATE TABLE IF NOT EXISTS qcril_properties_table (property TEXT PRIMARY KEY NOT NULL, def_val TEXT, value TEXT);
INSERT OR REPLACE INTO qcril_properties_table(property, def_val) VALUES('qcrildb_version',13.0);
INSERT OR REPLACE INTO qcril_properties_table(property, def_val) VALUES("persist.vendor.radio.force_gba_over_isim_app", "false");

/* xiaomi begin
 maweiying HOUJI-19985 2023/09/09 Description:resolve non sim card can not get limited mcc and mnc
*/
DELETE FROM qcril_properties_table WHERE property="persist.vendor.radio.sglte.eons_domain";
DELETE FROM qcril_properties_table WHERE property="persist.vendor.radio.sglte.eons_roam";
/* xiaomi end */
