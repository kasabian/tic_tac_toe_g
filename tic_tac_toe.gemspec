# -*- encoding: utf-8 -*-
require File.expand_path('../lib/tic_tac_toe/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Kasabian"]
  gem.email         = ["pandascorp@mail.ru"]
  gem.description   = %q{Для игры крестики нолики}
  gem.summary       = %q{Гем для игры в крестики нолики}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "tic_tac_toe"
  gem.require_paths = ["lib"]
  gem.version       = TicTacToe::VERSION


  gem.add_dependency "sqlite3"
  gem.add_development_dependency "rspec"
end
