# Top Right
osx_defaults "set top right hot corner as #{node['hot_corner_preferences']['topright']} (1/2)" do
  domain "com.apple.dock"
  key "wvous-tr-corner"
  integer node['hot_corner_preferences']['topright']
end

osx_defaults "set top right hot corner as #{node['hot_corner_preferences']['topright']} (2/2)" do
  domain "com.apple.dock"
  key "wvous-tr-modifier"
  integer (node['hot_corner_preferences']['topright'] > 0) ? 0 : 1048576
end

# Top Left
osx_defaults "set top left hot corner as #{node['hot_corner_preferences']['topleft']} (1/2)" do
  domain "com.apple.dock"
  key "wvous-tl-corner"
  integer node['hot_corner_preferences']['topleft']
end

osx_defaults "set top left hot corner as #{node['hot_corner_preferences']['topleft']} (2/2)" do
  domain "com.apple.dock"
  key "wvous-tl-modifier"
  integer (node['hot_corner_preferences']['topleft'] > 0) ? 0 : 1048576
end

#Bottom Right
osx_defaults "set bottom right hot corner as #{node['hot_corner_preferences']['bottomright']} (1/2)" do
  domain "com.apple.dock"
  key "wvous-br-corner"
  integer node['hot_corner_preferences']['bottomright']
end

osx_defaults "set bottom right hot corner as #{node['hot_corner_preferences']['bottomright']} (2/2)" do
  domain "com.apple.dock"
  key "wvous-br-modifier"
  integer (node['hot_corner_preferences']['bottomright'] > 0) ? 0 : 1048576
end

#Bottom Left
osx_defaults "set bottom left hot corner as #{node['hot_corner_preferences']['bottomleft']} (1/2)" do
  domain "com.apple.dock"
  key "wvous-bl-corner"
  integer node['hot_corner_preferences']['bottomleft']
end

osx_defaults "set bottom left hot corner as #{node['hot_corner_preferences']['bottomleft']} (2/2)" do
  domain "com.apple.dock"
  key "wvous-bl-modifier"
  integer (node['hot_corner_preferences']['bottomleft'] > 0) ? 0 : 1048576
end

