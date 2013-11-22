osx_defaults "allow clicking by touch" do
  domain 'com.apple.driver.AppleBluetoothMultitouch.trackpad'
  key 'Clicking'
  integer 1
  only_if { node['trackpad']['touch_click'] }
end

osx_defaults "allow dragging by touch" do
  domain 'com.apple.driver.AppleBluetoothMultitouch.trackpad'
  key 'Dragging'
  integer 1
  only_if { node['trackpad']['touch_drag'] }
end

osx_defaults "disable swipe between pages" do
  domain 'NSGlobalDomain'
  key 'AppleEnableSwipeNavigateWithScrolls'
  integer 0
  only_if { node['trackpad']['disable_swipe_between_pages'] }
end
