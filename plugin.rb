# frozen_string_literal: true

# name: discourse-display-email
# about: Display email address on user card and profile page
# meta_topic_id: TODO
# version: 0.0.1
# authors: pfaffman
# url: https://github.com/literatecomputing/discourse-display-email
# required_version: 2.7.0

enabled_site_setting :display_email_enabled

module ::DisplayEmailModule
  PLUGIN_NAME = "discourse-display-email"
end

require_relative "lib/discourse_display_email/engine"

after_initialize do
  add_to_serializer(:user_card, :email) do
    puts "selfserial #{self}"
    scope.anonymous? ? nil : self.user.email 
  end
end
