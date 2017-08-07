lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |s|
  s.name        = 'nytscracker'
  s.version     = '0.1.4'
  s.date        = '2017-08-01'
  s.summary     = "Cracks the NYTS and gives it to you in JSON"
  s.description = "Basically a wrapper for JP's Go package to crack the NYTS"
  s.authors     = ["Scott Feinberg"]
  s.email       = 'scott.feinberg@nytimes.com'
  s.files         = Dir.glob('lib/*.rb') + Dir.glob('ext/nytscracker/*') + Dir.glob('ext/nytscracker/vendor/**/*')
  s.homepage    = ""
  s.license       = 'MIT'
  s.extensions = %w[ext/nytscracker/extconf.rb]
  s.require_paths = ["lib"]
  s.add_dependency "ffi"
  s.executables   = s.files.grep(%r{^exe/}) { |f| File.basename(f) }
end