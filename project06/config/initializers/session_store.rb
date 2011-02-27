# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_project06_session',
  :secret      => '20cc28c3d4ce3c4d0595926c2f28df6415ba5cf85d763184b85dd278c3394c2697220dc8d8e1a12625ee13f0a438f4a595d7c748478e0bb34d8f2ead7d779be6'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
