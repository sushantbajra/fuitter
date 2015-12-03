# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Add additional assets to the asset load path
# Rails.application.config.assets.paths << Emoji.images_path

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in app/assets folder are already added.
# Rails.application.config.assets.precompile += %w( search.js )
Rails.application.config.assets.precompile += %w( switcheroo/libs/detectmobilebrowser.js)
Rails.application.config.assets.precompile += %w( switcheroo/libs/jquery.carouFredSel-6.2.1-packed.js )
Rails.application.config.assets.precompile += %w( switcheroo/products.js )
Rails.application.config.assets.precompile += %w( switcheroo/libs/jquery.mousewheel.js )
Rails.application.config.assets.precompile += %w( template.css )
Rails.application.config.assets.precompile += %w( design1/business-casual.css )
