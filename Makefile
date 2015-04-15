# command 'gdate' part of coreutils is used
# in 'predate' alias
# @see .bash_aliases
INSTALL_CORE_UTILS = brew install coreutils

install:
	$(call INSTALL_CORE_UTILS)

