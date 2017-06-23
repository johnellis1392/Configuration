#!/bin/bash

# Concatenate two strings into a list
push () {
  echo $1 $2;
}

# Get the first element in a list
first () {
  echo $(cut -d ' ' -f2-);
}
