################################################################################
#
# lua-testmore
#
################################################################################

LUA_TESTMORE_VERSION = 0.3.6-1
LUA_TESTMORE_SUBDIR = lua-TestMore-0.3.6
LUA_TESTMORE_LICENSE = MIT
LUA_TESTMORE_LICENSE_FILES = $(LUA_TESTMORE_SUBDIR)/COPYRIGHT

$(eval $(luarocks-package))
