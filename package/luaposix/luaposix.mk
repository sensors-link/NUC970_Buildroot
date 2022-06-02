################################################################################
#
# luaposix
#
################################################################################

LUAPOSIX_VERSION = 35.1-1
LUASOCKET_SUBDIR =
LUAPOSIX_LICENSE = MIT
LUAPOSIX_LICENSE_FILES = LICENSE
LUAPOSIX_DEPENDENCIES = luainterpreter host-lua
LUAPOSIX_CONF_OPTS = --libdir="/usr/lib/lua/$(LUAINTERPRETER_ABIVER)" --datarootdir="/usr/share/lua/$(LUAINTERPRETER_ABIVER)"

$(eval $(luarocks-package))
