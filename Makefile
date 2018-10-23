NAME := $(shell grep '"name"' ./META6.json | col | cut -f2 | sed 's/[", ]//g' | sed 's/::/-/g')

ifndef VERSION
	VERSION := $(git describe --exact-match --abbrev=0)
	VERSION_FROM_GIT = 1
else
	VERSION_FROM_GIT = 0
endif

ifndef VERSION
	VERSION = 0.0.1
	VERSION_FROM_GIT = 0
endif

FILE = $(NAME)-$(VERSION).tar.gz

test:
	zef test .

clean:
	rm -f ./$(FILE)

dist:
	tar --warning=no-file-changed -cvzf $(FILE) --transform s/^\./$(NAME)-$(VERSION)/ --exclude-vcs --exclude=.[^/]* --exclude=*.tar.gz .
