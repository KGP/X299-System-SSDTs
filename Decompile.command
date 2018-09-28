#!/bin/sh

set -e

export PATH=${PATH}:/usr/local/bin
export LC_ALL="en_US.UTF-8"

patched_dir="/Volumes/EFI/EFI/CLOVER/ACPI/patched"
if [ ! -d "${patched_dir}" ]; then
    echo "Please ensure that you've mounted your EFI partition before running this command"
    exit 1
fi

function checkInstalledOrInstall {
  local name=$1
  local check=$2
  local install_command=$3

  echo "--- 👮  Checking ${name} is installed... \c"
  if [ -z "${check}" ]; then
    echo "could not find ${name}."
  	echo "--- 📦  Installing ${name}... \c"
    eval $install_command
    echo "done."
  else
    echo "👍"
  fi
}

function checkInstalledOrFail {
  local name=$1
  local check=$2
  local fail_message=$3

  echo "--- 👮  Checking ${name} is installed... \c"
  if [ -z "${check}" ]; then
    echo "could not find ${name}."
    echo "${fail_message}"
    exit 1
  else
    echo "👍"
  fi
}

echo "--- 🕵  Checking for and installing required dependencies"

checkInstalledOrFail "Homebrew" "$(which brew)" "--- 🚫  Stopping. Homebrew could not be found! Please install it from http://brew.sh"
checkInstalledOrInstall "acpica" "$(brew ls --versions acpica)" "brew install acpica --quiet"

echo "--- 🛠  Decompiling AMLs to DSL"

find "$patched_dir" -name "*.aml" -type f -not -name "\._*" -exec sh -c 'f=$(basename $0 .aml); iasl -d -p "Sources/$f.dsl" "$0"' {} \;

echo "--- ✅  Done! Decompiled DSL files have been updated in the 'Sources' directory"
