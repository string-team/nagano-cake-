require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module NaganoCake
  class Application < Rails::Application
    # ↓の記述でも日本語化できます！（今回はgem 'rails-i18n', '~> 5.1' を使っています）
    # config.i18n.default_locale = :ja
    # config.i18n.load_path += Dir[Rails.root.join('config/locales/*.yml').to_s]
  end

end