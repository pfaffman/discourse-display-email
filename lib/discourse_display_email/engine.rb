# frozen_string_literal: true

module ::DisplayEmailModule
  class Engine < ::Rails::Engine
    engine_name PLUGIN_NAME
    isolate_namespace DisplayEmailModule
    config.autoload_paths << File.join(config.root, "lib")
  end
end
