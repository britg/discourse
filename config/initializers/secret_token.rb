
# Definitely change this when you deploy to production. Ours is replaced by jenkins.
# This token is used to secure sessions, we don't mind shipping with one to ease test and debug,
#  however, the stock one should never be used in production, people will be able to crack
#  session cookies.
#
# Generate a new secret with "rake secret".  Copy the output of that command and paste it
# in your secret_token.rb as the value of Discourse::Application.config.secret_token:
#
# Discourse::Application.config.secret_token = "SET_SECRET_HERE"

if Rails.env.test? || Rails.env.development? || Rails.env == "profile"
  Discourse::Application.config.secret_token = "47f5390004bf6d25bb97083fb98e7cc133ab450ba814dd19638a78282b4ca291"
else
  Discourse::Application.config.secret_token = "fb9a214256e4512ea22391d3b57a6101eccc2b7cd4fb7225b39b245306c9b68b2bbb84972fa1493dc68d31e9f7c24beabcaf6e9ee8538049ff57a21ba6520ad2"
end

