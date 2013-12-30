execute "installing bundler" do
  command "gem install bundler"
  user node['current_user']
end

execute "rehashing rbenv" do
  command "rbenv rehash"
  user node['current_user']
  only_if { system("which rbenv | grep 'rbenv' > /dev/null 2>&1") }
end