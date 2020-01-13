# Discourse WCA ID

This adds a link to WCA profile:
  - next to user names in posts
  - on the user card
  - on the user profile

This plugin assumes several things:
  - the SSO endpoint populates the custom.wca_id field (see the [sso-discourse](https://github.com/thewca/worldcubeassociation.org/blob/master/WcaOnRails/app/controllers/users_controller.rb) endpoint).
  - the "wca_id" user custom field is whitelisted in the API in the Discourse settings

There is no need to manually create the "wca_id" custom field, it would get
a name like "user_field_1" anyway.

## Installation

Follow [Install a Plugin](https://meta.discourse.org/t/install-a-plugin/19157)
how-to from the official Discourse Meta, using `git clone https://github.com/viroulep/discourse-wca-id.git`
as the plugin command.

## Usage

## Feedback

Please contact the [WCA Software Team](https://www.worldcubeassociation.org/contact/).
