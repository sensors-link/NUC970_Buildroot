################################################################################
#
# cjson
#
################################################################################

CJSON_VERSION = 1.7.15
CJSON_SITE = $(call github,DaveGamble,cJSON,v$(CJSON_VERSION))
CJSON_INSTALL_STAGING = YES
CJSON_LICENSE = MIT
CJSON_LICENSE_FILES = LICENSE

define CJSON_BUILD_CMDS
	cd $(@D) && $(TARGET_CC) $(TARGET_CFLAGS) -shared -fPIC -lm \
		cJSON.c -o libcJSON.so
endef

define CJSON_INSTALL_STAGING_CMDS
	$(INSTALL) -D $(@D)/cJSON.h $(STAGING_DIR)/usr/include/cJSON.h
	$(INSTALL) -D $(@D)/libcJSON.so $(STAGING_DIR)/usr/lib/libcJSON.so
	mkdir -p $(STAGING_DIR)/usr/include/cjson/
	rm -f $(STAGING_DIR)/usr/include/cjson/cJSON.h $(STAGING_DIR)/usr/lib/libcjson.so
	ln -s ../cJSON.h $(STAGING_DIR)/usr/include/cjson/cJSON.h
	ln -s libcJSON.so $(STAGING_DIR)/usr/lib/libcjson.so
endef

define CJSON_INSTALL_TARGET_CMDS
	$(INSTALL) -D $(@D)/cJSON.h $(TARGET_DIR)/usr/include/cJSON.h
	$(INSTALL) -D $(@D)/libcJSON.so $(TARGET_DIR)/usr/lib/libcJSON.so
	mkdir -p $(STAGING_DIR)/usr/include/cjson/ 
	rm -f $(STAGING_DIR)/usr/include/cjson/cJSON.h $(TARGET_DIR)/usr/lib/libcjson.so
	ln -s ../cJSON.h $(STAGING_DIR)/usr/include/cjson/cJSON.h	
	ln -s libcJSON.so $(TARGET_DIR)/usr/lib/libcjson.so
endef

$(eval $(generic-package))
