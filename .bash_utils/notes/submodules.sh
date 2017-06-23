#!/bin/bash

# Deleting submodules:
# The configuration for submodules is kept in
# three placees:
# - 1) The git repository's tracking cache
# - 2) The .gitmodules file in the repository root
# - 3) The .git/config/project_name/submodule_name
#	   directory in the config information at the
#	   root of the highest parent module.
#
# In order to delete the submodule, you need to
# take three steps:
# - 1) Delete the folder: `rm -rf <submodule_name>`
#	   and remove from git: `git rm --cached <submodule_name>`
# - 2) Remove the submodule information from .gitmodules
# - 3) Remove the submodule from the .git/config:
#	   `git submodule deinit -- <submodule_name>`

