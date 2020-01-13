# frozen_string_literal: true

# name: Discourse WCA ID
# about: Displays WCA ID next to Discourse user names
# version: 1.0
# authors: viroulep
# url: https://github.com/viroulep/discourse-wca-id

register_asset 'stylesheets/common/discourse-wca-id.scss'
register_asset 'stylesheets/desktop/discourse-wca-id.scss'
register_asset 'stylesheets/mobile/discourse-wca-id.scss'

enabled_site_setting :discourse_wca_id_enabled

PLUGIN_NAME ||= 'Discourse WCA ID'

load File.expand_path('lib/discourse-wca-id/engine.rb', __dir__)
