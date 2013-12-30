osx_defaults "set safari to show status bar" do
  domain 'com.apple.safari'
  key 'ShowStatusBar'
  boolean true
end

osx_defaults "delete to navigate back" do
  domain 'com.apple.safari'
  key 'com.apple.Safari.ContentPageGroupIdentifier.WebKit2BackspaceKeyNavigationEnabled'
  boolean true
end

osx_defaults "Set Safari’s home page to `about:blank` for faster loading" do
  domain 'com.apple.safari'
  key 'HomePage'
  string "about:blank"
end

osx_defaults "Disable Safari’s thumbnail cache for History and Top Sites" do
  domain 'com.apple.safari'
  key 'DebugSnapshotsUpdatePolicy'
  integer 2
end

osx_defaults "Enable Safari’s debug menu" do
  domain 'com.apple.safari'
  key 'IncludeInternalDebugMenu'
  boolean true
end

osx_defaults "Make Safari’s search banners default to Contains instead of Starts With" do
  domain 'com.apple.safari'
  key 'FindOnPageMatchesWordStartsOnly'
  boolean false
end

osx_defaults "Enable the Develop menu and the Web Inspector in Safari (1/3)" do
  domain 'com.apple.safari'
  key 'IncludeDevelopMenu'
  boolean true
end

osx_defaults "Enable the Develop menu and the Web Inspector in Safari (2/3)" do
  domain 'com.apple.safari'
  key 'WebKitDeveloperExtrasEnabledPreferenceKey'
  boolean true
end

osx_defaults "Enable the Develop menu and the Web Inspector in Safari (3/3)" do
  domain 'com.apple.safari'
  key 'com.apple.Safari.ContentPageGroupIdentifier.WebKit2DeveloperExtrasEnabled'
  boolean true
end

osx_defaults "Add a context menu item for showing the Web Inspector in web views" do
  domain 'NSGlobalDomain'
  key 'WebKitDeveloperExtras'
  boolean true
end

osx_defaults "Restore Safari pages at launch" do
  domain 'com.apple.safari'
  key 'AlwaysRestoreSessionAtLaunch'
  boolean true
end
