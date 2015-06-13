# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'
Rails.application.config.assets.precompile += %w( FontAwesome.otf fontawesome-webfont.woff2 fontawesome-webfont.woff fontawesome-webfont.ttf fontawesome-webfont.svg fontawesome-webfont.eot font-awesome.min.css jquery.min.js jquery.dropotron.min.js skel.min.js skel-viewport.min.js util.js main.js public.css)
# Add additional assets to the asset load path
# Rails.application.config.assets.paths << Emoji.images_path

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in app/assets folder are already added.
# Rails.application.config.assets.precompile += %w( search.js )
