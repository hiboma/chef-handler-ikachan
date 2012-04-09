Gem::Specification.new do |s|
  s.name        = "chef-handler-ikachan"
  s.version     = "0.0.1"
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["id:hiboma"]
  s.email       = ["hiroyan@gmail.com"]
  s.homepage    = "http://d.hatena.ne.jp/hiboma"
  s.summary     = %q{Chef handler for sending exceptions to Ikachan}
  s.description = %q{Chef handler for sending exceptions to Ikachan}
  s.has_rdoc    = false
  s.license     = "Perl"

  s.add_dependency('chef')
  s.add_dependency('string-irc')

  s.files         = `git ls-files`.split("\n")
  s.require_paths = ["lib"]
end
