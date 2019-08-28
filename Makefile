SHELL = /bin/bash
PRIVATE_FILES = $(shell find Private)

# we want the freedom to have a traditional git ignore
# so this is just stuff that we don't want to check in
define GIT_IGNORED
Makefile
_site
private.zip
Private
endef

all: private.zip.gpg .git/info/exclude .profMakeBackup
.PHONY : all hideprivate decryptprivate demo

demo:
	bundle exec jekyll serve --watch                                

# rules for decrypting/encrypting the Private Directory

%.gpg : %
	rm -f $<.gpg
	gpg --batch --passphrase-file ~/Private/dotfiles/passphrase --symmetric $<

decryptprivate :
	gpg -o private.zip --batch --passphrase-file ~/Private/dotfiles/passphrase --decrypt private.zip.gpg
	unzip private.zip

hideprivate : private.zip.gpg
	rm -r Private/* private.zip

private.zip : $(PRIVATE_FILES)
	zip -r private.zip Private

# rules for symlinking all the stuff in private into the other directories
# but preventing those simlinks from being checked into git

.git/info/exclude : $(PRIVATE_FILES)
# this does the recreate
	find . -type l -delete
	cp -Rsn $(CURDIR)/Private/* .
# this prevents the links from being used in git
	$(file > .git/info/exclude,$(GIT_IGNORED))
	find . -type l -printf '%P\n' >> .git/info/exclude

# we don't want to check the makefile in as Makefile because it might
# be confused for a real Makefile.  But it really should be checked
# into the repo
.profMakeBackup: Makefile
	cp Makefile .profMakeBackup

# Mostly some commands to allow you to demo the jekyll site locally
# 
# all the relevant details are here:
# https://help.github.com/en/articles/setting-up-your-github-pages-site-locally-with-jekyll

# this needs to be run to download the neccessary gems
# should be only needed once
install:
	bundle install

# This updates the version of all the dependencies. Only needs to be
# done once in a while or when github complains about old versions
update:
	bundle update

