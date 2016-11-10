guard :rubocop do
  watch(/^.+\.rb$/)
  watch(/^(Gem|Guard|Rake)file$/)
  watch(%r{(?:.+/)?\.rubocop\.yml$}) { |m| File.dirname(m[0]) }
end

guard :minitest do
  watch(%r{^test/(.*)\/?test_(.*)\.rb$})
  watch(%r{^lib/(.*/)?([^/]+)\.rb$}) { |m| "test/#{m[1]}test_#{m[2]}.rb" }
  watch(%r{^test/helper\.rb$}) { "test" }
  watch(%r{^config/*\.rb$})
end
