SHELL = /bin/sh

prefix = /usr
datarootdir = $(prefix)/share
exec_prefix = $(prefix)
MKINSTALLDIRS = mkdir -p
INSTALL = cp

bindir = $(exec_prefix)/bin
docdir = $(datarootdir)/doc/bdchapters

installdirs: 
	$(MKINSTALLDIRS) \
	$(DESTDIR)$(bindir) $(DESTDIR)$(docdir)

install: installdirs 
	$(NORMAL_INSTALL)
		$(INSTALL) bdchapters $(DESTDIR)$(bindir)/
		$(INSTALL) README $(DESTDIR)$(docdir)/
