git_user_name = `git config --get user.name`.chomp
git_user_email = `git config --get user.email`.chomp

if git_user_name.empty? or git_user_email.empty?
  STDOUT.puts("\n\n\nConfigure git global configuration...") 
  STDOUT.print("\nWhat is your git username?\n>")
  git_user_name = STDIN.gets().chomp()
  STDOUT.print("\nWhat is your git email address?\n>")
  git_user_email = STDIN.gets().chomp()
end

template "#{node['sprout']['home']}/.gitconfig" do
  owner node['current_user']
  source "dot_gitconfig.erb"
  variables(:user_name => git_user_name,
            :user_email => git_user_email)
end