Gem::Specification.new do |spec|
  spec.name          = "ruby_regexp_wrapper"
  spec.version       = "0.1.0"
  spec.authors       = ["秦晨"]
  spec.email         = ["qsc1956826@Gmail.com"]
  spec.summary       = "对正则表达式进行封装函数"
  spec.description   = "可以简单的通过函数式拼接正则表达式"
  spec.license = "MIT"
  spec.files         = Dir["lib/**/*.rb"]
  spec.bindir        = "bin"
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.homepage      = "https://github.com/GengCen-Qin/ruby_regexp_wrapper"
end