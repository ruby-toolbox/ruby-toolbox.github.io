require 'jekyll'
config = {
    exclude: ['.gitingore', 'lib', 'build.rb', 'categories.yml', 'Gemfile', 'Gemfile.lock', 'LICENSE', 'README.md'],
    source: '.',
    destination: './_site'
}

Jekyll::Site.new(Jekyll.configuration(config)).process