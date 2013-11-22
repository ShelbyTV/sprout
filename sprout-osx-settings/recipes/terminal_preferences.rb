osx_defaults "Set terminal color scheme to #{node['terminal']['color_scheme']}" do
  domain 'com.apple.Terminal'
  key 'Default Window Settings'
  string node['terminal']['color_scheme']
end

osx_defaults "Set startup terminal color scheme to #{node['terminal']['color_scheme']}" do
  domain 'com.apple.Terminal'
  key 'Startup Window Settings'
  string node['terminal']['color_scheme']
end

osx_defaults "Change the default shell to #{node['terminal']['shell']}" do
  domain 'com.apple.Terminal'
  key 'Shell'
  string node['terminal']['shell']
  only_if { node['terminal']['shell'] }
end
