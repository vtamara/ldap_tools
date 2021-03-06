require File.expand_path('../lib/tapjoy/ldap/version', __FILE__)
Gem::Specification.new do |s|
  s.name                  = 'ldap_tools'
  s.version               = Tapjoy::LDAP::VERSION
  s.date                  = Time.new.strftime("%Y-%m-%d")
  s.summary               = 'Tapjoy LDAP Tools'
  s.description           = 'A set of tools to make managing LDAP users, groups, and keys easier'
  s.authors               = ['Ali Tayarani']
  s.email                 = 'ali.tayarani@tapjoy.com'
  s.files                 = Dir['lib/tapjoy/**/**']
  s.homepage              = 'https://github.com/Tapjoy/ldap_tools'
  s.license               = 'MIT'
  s.executables           = ['ldaptools']
  s.required_ruby_version = '>= 2.2'
  s.add_runtime_dependency('trollop',  '~> 2.1')
  s.add_runtime_dependency('net-ldap', '= 0.11')
  s.add_runtime_dependency('highline', '~> 1.0')
  s.add_runtime_dependency('memoist', '>= 0.14')
  s.add_runtime_dependency('activesupport', '~> 4.2')
  s.add_development_dependency('rspec', '~> 3.2')
  s.add_development_dependency('yard', '~> 0.8')
  s.add_development_dependency('guard', '~> 2.13')
  s.add_development_dependency('guard-bundler', '~> 2.1')
  s.add_development_dependency('guard-rubycritic', '~> 2.9')
  s.add_development_dependency('guard-yard', '~> 2.1')
  s.add_development_dependency('guard-yardstick', '~> 0.1')
  s.add_development_dependency('codacy-coverage', '~>1.0')
end
