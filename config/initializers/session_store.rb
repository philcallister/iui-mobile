# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_citi-mobile_session',
  :secret      => '0b039774600fe233cb47b0e3ab490cde8fff45efc43aea6ef2a0d3daea9c93e31298848408e564916267279a6cf2f6197d681c57138e0d2a81ba1e8f80deee00'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
