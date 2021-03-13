#!/bin/sh

set -e

. fsbuild/plugin.pre.sh

mkdir -p $PLUGIN_BINDIR
cp mednafen$EXE $PLUGIN_BINDIR

mkdir -p $PLUGIN_READMEDIR
cp README.md $PLUGIN_READMEDIR/ReadMe.txt

mkdir -p $PLUGIN_LICENSESDIR
cp fsbuild/_build/mednafen-src/COPYING $PLUGIN_LICENSESDIR/Mednafen.txt

. fsbuild/plugin.post.sh
