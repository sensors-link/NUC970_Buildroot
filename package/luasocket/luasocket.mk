################################################################################
#
# luasocket
#
################################################################################

LUASOCKET_VERSION_UPSTREAM = 3.0.0
LUASOCKET_VERSION = $(LUASOCKET_VERSION_UPSTREAM)-1
LUASOCKET_SUBDIR = luasocket
LUASOCKET_LICENSE = MIT
LUASOCKET_LICENSE_FILES = $(LUASOCKET_SUBDIR)/LICENSE

$(eval $(luarocks-package))
