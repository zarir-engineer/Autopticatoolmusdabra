#!/bin/bash

# Adjust these paths for your PyCharm version
CONFIG_DIR=~/.config/JetBrains/PyCharm2023.2
VM_OPTIONS_FILE="$CONFIG_DIR/pycharm64.vmoptions"

# 1. Write safe VM options
echo "Updating VM options..."
mkdir -p "$CONFIG_DIR"
cat > "$VM_OPTIONS_FILE" <<EOF
-Xms128m
-Xmx768m
-XX:ReservedCodeCacheSize=128m
-XX:+UseCompressedOops
-Dsun.java2d.opengl=true
EOF

# 2. Optional: Remove previous plugin cache and index
echo "Clearing caches..."
rm -rf ~/.cache/JetBrains/PyCharm*/caches
rm -rf ~/.cache/JetBrains/PyCharm*/index

# 3. Create file to disable indexing on heavy folders (manual)
echo "Reminder: Manually exclude folders in PyCharm (venv, node_modules, __pycache__)"

# 4. Set theme to Light (using options.xml)
OPTIONS_XML="$CONFIG_DIR/options/options.xml"
if [ ! -f "$OPTIONS_XML" ]; then
    mkdir -p "$(dirname "$OPTIONS_XML")"
    touch "$OPTIONS_XML"
fi

echo "Setting UI preferences..."
cat > "$OPTIONS_XML" <<EOF
<application>
  <component name="LafManager">
    <laf class-name="com.intellij.ide.ui.laf.IntelliJLaf" />
  </component>
  <component name="UISettings">
    <option name="HIDE_TOOL_STRIPES" value="true" />
    <option name="SHOW_TOOL_WINDOWS_NUMBERS" value="false" />
    <option name="ANIMATE_WINDOWS" value="false" />
  </component>
</application>
EOF

echo "✅ PyCharm optimization applied."
echo "Restart PyCharm for changes to take effect."
