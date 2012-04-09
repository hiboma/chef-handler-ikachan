cookbook_path "#{Dir.pwd}/misc/cookbooks"

require './lib/chef-handler-ikachan'
url     = ENV["URL"]
channel = ENV["CHANNEL"]
exception_handlers << IkachanHandler.new(url, channel)
