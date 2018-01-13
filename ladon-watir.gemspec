Gem::Specification.new do |gem|
  gem.name        = 'ladon-watir'
  gem.version     = '1.0.0.rc.8'
  gem.date        = '2017-09-15'
  gem.summary     = 'Ladon Watir'
  gem.description = <<-HEREDOC
    Use Ladon and Watir to automate end-to-end web application workflows.
  HEREDOC
  gem.authors     = ['Reagan Eggert', 'Kevin Weaver', 'Shayne Snow']
  gem.email       = 'kweaver@athenahealth.com'
  gem.files       = Dir['lib/**/*.rb']
  gem.homepage    = 'http://rubygems.org/gems/ladon-watir'
  gem.license     = 'MIT' # TODO

  gem.required_ruby_version = '>= 2.1.0' # due to use of required keyword args

  gem.add_runtime_dependency 'ladon', '1.1.1.rc.1'
  gem.add_runtime_dependency 'page-object', '2.2.4'
  gem.add_runtime_dependency 'useragent', '~> 0.16.3'
  gem.add_runtime_dependency 'watir', '6.10.2'

  gem.add_development_dependency 'coveralls', '~> 0.7'
  gem.add_development_dependency 'rake', '~> 11.3' # for convenient rake tasks
  gem.add_development_dependency 'rspec', '~> 3.6' # for specs
  gem.add_development_dependency 'rubocop', '~> 0.49' # for linting
  gem.add_development_dependency 'rubygems-tasks', '~> 0.2'
  gem.add_development_dependency 'simplecov', '~> 0.15'
end
