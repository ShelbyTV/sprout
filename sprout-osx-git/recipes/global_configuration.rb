git_user_name = system("git config --get user.name")
git_user_email = system("git config --get user.email")

unless git_user_name and git_user_email
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