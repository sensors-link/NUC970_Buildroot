################################################################################
#
# argparse
#
################################################################################

ARGPARSE_VERSION_UPSTREAM = 0.7.1
ARGPARSE_VERSION = $(ARGPARSE_VERSION_UPSTREAM)-1
ARGPARSE_SUBDIR = argparse-$(ARGPARSE_VERSION_UPSTREAM)
ARGPARSE_LICENSE = MIT
ARGPARSE_LICENSE_FILES = $(ARGPARSE_SUBDIR)/LICENSE

$(eval $(luarocks-package))
