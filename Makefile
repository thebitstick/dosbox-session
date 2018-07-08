#
# Global Settings
#

INSTALL = install
DESTDIR ?= /
PREFIX  ?= $(DESTDIR)/usr

PATH_DOSBOX = $(PREFIX)/bin/dosbox-session
PATH_DOSBOX_DESKTOP = $(PREFIX)/share/applications/dosbox-session.desktop
PATH_DOSBOX_XSESSION = $(PREFIX)/share/xsessions/dosbox-xsession.desktop

#
# Targets
#

all:
	@echo "Nothing to do"


install:
	$(INSTALL) -m0644 -D session/dosbox-xsession.desktop $(PATH_DOSBOX_XSESSION)
	$(INSTALL) -m0644 -D session/dosbox-session.desktop $(PATH_DOSBOX_DESKTOP)
	$(INSTALL) -m0755 -D session/dosbox-session $(PATH_DOSBOX)


uninstall:
	rm -f $(PATH_DOSBOX)
	rm -f $(PATH_DOSBOX_DESKTOP)
	rm -f $(PATH_DOSBOX_XSESSION)


.PHONY: all install uninstall
