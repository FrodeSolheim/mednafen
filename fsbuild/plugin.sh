. ./fsdeps/system.sh
. ./fsdeps/arch.sh
. ./PACKAGE.FS

PLUGIN_DIR=fsbuild/_build/$PACKAGE_NAME_PRETTY
# VERSION=$PACKAGE_VERSION
PLUGIN_BIN_DIR=$PLUGIN_DIR/$SYSTEM/$ARCH
PLUGIN_LICENSES_DIR=$PLUGIN_DIR/Licenses
PLUGIN_DOCS_DIR=$PLUGIN_DIR/Docs
PLUGIN_DATA_DIR=$PLUGIN_BIN_DIR

if [ "$SYSTEM"] = "Windows" ]; then
EXE=.exe
else
EXE=
fi