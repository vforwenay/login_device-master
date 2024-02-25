module LoginDevice
  class Engine < ::Rails::Engine
    isolate_namespace LoginDevice
    initializer "login_device", before: :load_config_initializers do |app|
      LoginDevice.load_files.each { |file|
        require_relative File.join("../..", file)
      }
    end
  end
end
