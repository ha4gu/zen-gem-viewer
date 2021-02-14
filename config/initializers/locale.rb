Rails.application.config.i18n.load_path += Dir[Rails.root.join("config/locales/**/*.yml")]
Rails.application.config.i18n.available_locales = [:en, :ja]
Rails.application.config.i18n.default_locale = :ja
Rails.application.config.i18n.fallbacks = [:en]
