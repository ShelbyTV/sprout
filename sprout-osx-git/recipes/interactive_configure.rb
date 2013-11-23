git_username_set = system("git config -l | grep user.name")
git_email_set = system("git config -l | grep user.email")

return if git_username_set and git_email_set

STDOUT.puts("\n\n\nConfigure git global configuration...") 
STDOUT.print("\nWhat is your git username?\n>")
git_username = STDIN.gets().chomp()
STDOUT.print("\nWhat is your git email address?\n>")
git_email = STDIN.gets().chomp()

execute "git config --global user.name '#{git_username}'" do
  only_if { git_username }
end

execute "git config --global user.email '#{git_email}'" do
  only_if { git_email }
end