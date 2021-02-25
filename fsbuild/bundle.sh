. fsbuild/plugin.sh

mkdir -p $PLUGIN_DIR
echo $PACKAGE_VERSION > $PLUGIN_DIR/Version.txt
cp README.md $PLUGIN_DIR/ReadMe.txt

mkdir -p $PLUGIN_BIN_DIR
echo $PACKAGE_VERSION > $PLUGIN_BIN_DIR/Version.txt
cp mednafen$EXE $PLUGIN_BIN_DIR

mkdir -p $PLUGIN_LICENSES_DIR
cp _build/COPYING $PLUGIN_LICENSES_DIR/Mednafen.txt

# python3 fsbuild/standalone.py $BIN_DIR

# find ${PLUGIN_DIR}
