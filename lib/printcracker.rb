require 'ffi'

module Printcracker
  extend FFI::Library

  ffi_lib File.expand_path("../ext/printcracker/printcracker.so", File.dirname(__FILE__))

  # foreign function definitions
  attach_function :printString, [:string], :string
end
