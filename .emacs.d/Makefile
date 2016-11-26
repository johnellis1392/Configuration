

SHELL:=/bin/bash
deps:=dependencies.txt 
url:=   # Url argument for adding new dependencies
gitignore:=.gitignore 

# Clone a given repository from git
clone=git clone $(1)

# Get the directory name of the git repository from its url 
get_dir_name=basename $(1) 

# Save a repository url to dependencies file 
save=echo "$(1)" >> $(deps) && echo "$(call get_dir_name,$(1))" >> $(gitignore)  


##################
# Download all dependencies 
deps:
	@echo 'Downloading dependencies...'
	@for line in `cat $(deps)`; \
	do \
	  if [ ! -e `basename $$line` ]; then \
	    $(call clone,$$line); \
	  fi \
	done 


##################
# Add a new dependency for emacs 
add-dep:
	@if [ ! -e $(deps) ]; then touch $(deps); fi 
	@if [ "$(url)" != "" ]; then \
	  $(call clone,$(url)) && $(call save,$(url)); \
	else \
	  echo 'Illegal argument; you must supply a url.'; \
	fi


