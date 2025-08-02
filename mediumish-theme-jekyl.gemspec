Gem::Specification.new do |spec|
  spec.name                    = "mediumish-theme-jekyll"
  spec.version                 = "0.0.1"
  spec.authors                 = ["Sal", "WowThemes.net"]

  spec.summary                 = "A modern, gem-based version of the Mediumish Jekyll Theme"
  spec.homepage                = "https://github.com/wowthemesnet/mediumish-theme-jekyll"
  spec.license                 = "MIT"

  spec.metadata["plugin_type"] = "theme"

  spec.files                   = `git ls-files -z`.split("\x0").select do |f|
    f.match(%r{^(assets|_(data|pages|includes|layouts|sass)/|(LICENSE|README|CHANGELOG)((\.(txt|md|markdown)|$)))}i)
  end

  spec.add_runtime_dependency "jekyll"
  spec.add_runtime_dependency "jekyll-feed"
  spec.add_runtime_dependency "jekyll-sitemap"
  spec.add_runtime_dependency "jekyll-paginate"
  spec.add_runtime_dependency "jekyll-seo-tag"
  spec.add_runtime_dependency "jekyll-archives"
  spec.add_runtime_dependency "kramdown"
  spec.add_runtime_dependency "rouge"

end
