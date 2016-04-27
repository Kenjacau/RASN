# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require File.expand_path('../config/application', __FILE__)

Rails.application.load_tasks
sh "git pull origin master"
desc "Default Git Add, Commit, Push"
task :git do
puts "Enter your commit message:"
comment = STDIN.gets.chomp
sh "git add -A"
sh %{git commit -m "#{comment}"}
sh "git push"
end
