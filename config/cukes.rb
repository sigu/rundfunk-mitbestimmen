class Cukes
  require 'active_support/configurable'
  include ActiveSupport::Configurable

  self.configure do |config|
    config.root = Dir[File.dirname(File.expand_path('../', __FILE__))].first
    config.rails_root = File.join(config.root, "backend")
    config.rails_started_message = 'Listening on tcp://0.0.0.0:3000'
    config.ember_root = File.join(config.root, "frontend")
    config.ember_started_message = "Build successful"
    config.host = "http://localhost:4200"
    config.browser = ENV["BROWSER"] || :poltergeist
    config.startup_timeout = 45
  end

end