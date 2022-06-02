################################################################################
#
# LUA_MOSQUITTO
#
################################################################################

LUA_MOSQUITTO_VERSION_UPSTREAM = 0.4.1
LUA_MOSQUITTO_VERSION = $(LUA_MOSQUITTO_VERSION_UPSTREAM)-2
LUA_MOSQUITTO_SUBDIR = lua-mosquitto
LUA_MOSQUITTO_DEPENDENCIES = mosquitto
LUA_MOSQUITTO_LICENSE = MIT
LUA_MOSQUITTO_LICENSE_FILES = $(LUA_MOSQUITTO_SUBDIR)/LICENSE

$(eval $(luarocks-package))
