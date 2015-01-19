require File.expand_path('../boot', __FILE__)

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Chatie
  class Application < Rails::Application
    config.assets.paths << Rails.root.join('vendor', 'assets', 'components')

    config.angular_templates.module_name    = 'templates'
    config.angular_templates.ignore_prefix  = %w(angular-app/templates/)
    config.angular_templates.htmlcompressor = false

    # Do not swallow errors in after_commit/after_rollback callbacks.
    config.active_record.raise_in_transactional_callbacks = true
  end
end
