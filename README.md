
Chef handler for sending exceptions to Ikachan

# Install

* Gemfile

```
gem "chef-handler-ikachan", :git => "https://github.com/hiboma/chef-handler-ikachan"
```

# Config

* /etc/chef/chef-solo.rb


```
require 'chef-handler-ikachan'

url     = "http://127.0.0.1:4979/notice"
channel = "#chef"
exception_handlers << IkachanHandler.new(url, channel)
```

* sample output


```
04/09 16:36:12 ikachan: Chef Exception: hiroya.local - NameError: undefined local variable or method `hoge' for #<Chef::Recipe:0x00000102a6e188>
```
