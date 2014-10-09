Gem::Specification.new do |s|
  s.name        = 'aws-profiles'
  s.version     = '0.2.0'
  s.date        = '2014-08-29'
  s.summary     = 'read ~/.aws/config just like the CLI and provide settings to be passed to aws-sdk AWS.config'
  s.description = <<-___
    Provide a mechanism to iterate over all ~/.aws/config profiles and regions, or specifiy them to configure frmo that profile'
    ___
  s.authors     = ['Dan Farrell']
  s.email       = 'dfarrell@bloomhealthco.com'
  s.files       = ['aws-profiles.rb']
  s.homepage    = 'http://github.com/dfarrell-bloom/aws-profiles'
  s.license     = 'MIT'

end
