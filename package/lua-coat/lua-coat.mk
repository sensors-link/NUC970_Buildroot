################################################################################
#
# lua-coat
#
################################################################################

LUA_COAT_VERSION = 0.9.2-1
LUA_COAT_SUBDIR = lua-Coat-0.9.2
LUA_COAT_LICENSE = MIT
LUA_COAT_LICENSE_FILES = $(LUA_COAT_SUBDIR)/COPYRIGHT

$(eval $(luarocks-package))
