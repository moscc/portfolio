activate :deploy do |deploy|
  deploy.build_before = true
  deploy.deploy_method = :git
end

activate :livereload
activate :autoprefixer do |prefix|
  prefix.browsers = "last 2 versions"
end

page '/*.xml', layout: false
page '/*.json', layout: false
page '/*.txt', layout: false

set :css_dir, 'stylesheets'
set :js_dir, 'javascripts'
set :images_dir, 'images'

require 'extensions/build_cleaner'

configure :build do
  activate :relative_assets
  activate :build_cleaner
end
