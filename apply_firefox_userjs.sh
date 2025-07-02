#!/bin/bash

# Find the Firefox profile directory
PROFILE_DIR=$(find ~/.mozilla/firefox/ -maxdepth 1 -type d -name "*.default*" | head -n 1)

# Check if the profile directory was found
if [ -z "$PROFILE_DIR" ]; then
  echo "❌ Firefox profile not found!"
  exit 1
fi

# Path to user.js
USER_JS_PATH="$PROFILE_DIR/user.js"

# Write the user.js file
cat > "$USER_JS_PATH" << 'EOF'
// user.js - Lightweight, privacy-respecting, and performance-tuned

/* ███ Privacy / Telemetry ███ */
user_pref("toolkit.telemetry.enabled", false);
user_pref("toolkit.telemetry.unified", false);
user_pref("toolkit.telemetry.archive.enabled", false);
user_pref("datareporting.healthreport.uploadEnabled", false);
user_pref("datareporting.policy.dataSubmissionEnabled", false);
user_pref("browser.ping-centre.telemetry", false);
user_pref("browser.newtabpage.activity-stream.feeds.telemetry", false);
user_pref("browser.newtabpage.activity-stream.telemetry", false);
user_pref("app.shield.optoutstudies.enabled", false);
user_pref("app.normandy.enabled", false);
user_pref("app.normandy.api_url", "");
user_pref("breakpad.reportURL", "");
user_pref("browser.crashReports.unsubmittedCheck.autoSubmit2", false);

/* ███ Performance Tweaks ███ */
user_pref("dom.ipc.processCount", 2);
user_pref("general.smoothScroll", false);
user_pref("extensions.pocket.enabled", false);
user_pref("layout.css.animations.enabled", false);
user_pref("media.autoplay.default", 5);
user_pref("media.hardware-video-decoding.enabled", true);

/* ███ UI Tweaks ███ */
user_pref("browser.startup.page", 1);
user_pref("browser.newtabpage.enabled", false);
user_pref("browser.urlbar.suggest.searches", false);
user_pref("browser.urlbar.suggest.history", false);
EOF

echo "✅ user.js written to $USER_JS_PATH"
