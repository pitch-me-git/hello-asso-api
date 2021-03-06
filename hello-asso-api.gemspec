# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name            = 'hello-asso-api'
  s.version         = '0.0.2'
  s.date            = '2014-06-30'
  s.summary         = "Interact with HelloAsso's API"
  s.description     = "A basic gem to use the payment system of HelloAsso"
  s.authors         = ["Charles Duprey"]
  s.email           = 'cduprey@f1m.fr'
  s.files           = ['lib/hello-asso-api.rb', 'lib/hello-asso-api/organization.rb', 'lib/hello-asso-api/url.rb', 'lib/hello-asso-api/donate.rb']
  s.homepage        = 'https://github.com/pitch-me-git/hello-asso-api'
  s.license         = 'MIT'
  s.rdoc_options    = ["--charset=UTF-8"]
  s.require_paths   = ["lib"]
  s.add_runtime_dependency 'httparty'
end
