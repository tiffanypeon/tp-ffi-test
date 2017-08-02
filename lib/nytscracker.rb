require 'ffi'

module NYTSCracker
  extend FFI::Library
  
  ffi_lib File.expand_path("../ext/nytscracker/nytscracker.so", File.dirname(__FILE__))

  # foreign function definitions
  attach_function :crackRaw, [:string], :string
end
