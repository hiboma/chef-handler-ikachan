require 'bundler'
Bundler::GemHelper.install_tasks

# URL="http://127.0.0.1:4979/notice" CHANNEL="#chef" rake test
desc "Test chef handler ikachan"
task :test do
  sh "chef-solo -c misc/config.rb -j misc/attributes.json"
end
