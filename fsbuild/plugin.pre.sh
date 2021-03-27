# Intended for sourcing by other shell scripts
# This file is automatically generated by fs-package

. ./fsbuild/system.sh
. ./PACKAGE.FS

PLUGIN_VERSION=$PACKAGE_VERSION

PLUGIN_DIR=fsbuild/_build/$PACKAGE_NAME_PRETTY
PLUGIN_BINDIR=$PLUGIN_DIR/$SYSTEM_OS/$SYSTEM_ARCH
PLUGIN_DOCSDIR=$PLUGIN_DIR/Docs
PLUGIN_READMEDIR=$PLUGIN_DIR
PLUGIN_LICENSESDIR=$PLUGIN_DIR/Licenses
# For now
PLUGIN_DATADIR=$PLUGIN_BINDIR
PLUGIN_REALDATADIR=$PLUGIN_DIR/Data

# FIXME: Deprecate $EXE (Use $SYSTEM_EXE instead)
if [ "$SYSTEM_OS" = "Windows" ]; then
EXE=.exe
else
EXE=
fi

if [ "$SYSTEM_OS" = "macOS" ]; then
PLUGIN_APPDIR=$PLUGIN_BINDIR/$PACKAGE_NAME.app
# PLUGIN_MACOSDIR=$PLUGIN_BINDIR/$PACKAGE_NAME.app/Contents/MacOS
# PLUGIN_RESOURCESDIR=$PLUGIN_BINDIR/$PACKAGE_NAME.app/Contents/Resources
# For now
PLUGIN_DATADIR=$PLUGIN_APPDIR/Contents/Resources/Data
fi

rm -Rf $PLUGIN_DIR
