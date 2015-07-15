# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.2'
Rails.application.config.assets.precompile += %w( tinymce/plugins/uploadimage/plugin.js tinymce/plugins/uploadimage/langs/en.js jquery-1.11.3.min.js FontAwesome.otf fontawesome-webfont.woff2 fontawesome-webfont.woff fontawesome-webfont.ttf fontawesome-webfont.svg fontawesome-webfont.eot jquery.min.js jquery.dropotron.min.js skel.min.js skel-viewport.min.js util.js main.js public.css.scss)
# Add additional assets to the asset load path
# Rails.application.config.assets.paths << Emoji.images_path

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in app/assets folder are already added.
# Rails.application.config.assets.precompile += %w( search.js )
