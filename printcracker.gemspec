lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |s|
  s.name        = 'printcracker'
  s.version     = '0.1.5'
  s.date        = '2017-08-01'
  s.summary     = "Tests FFI"
  s.description = "prints a string"
  s.authors     = ["Scott Feinberg"]
  s.email       = 'scott.feinberg@nytimes.com'
  s.files         = Dir.glob('lib/*.rb') + Dir.glob('ext/printcracker/*')
  s.homepage    = ""
  s.license       = 'MIT'
  s.extensions = %w[ext/printcracker/extconf.rb]
  s.require_paths = ["lib"]
  s.add_dependency "ffi"
  s.executables   = s.files.grep(%r{^exe/}) { |f| File.basename(f) }
end
