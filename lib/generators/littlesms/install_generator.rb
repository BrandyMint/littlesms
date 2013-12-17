module LittleSms
  module Generators
    class InstallGenerator < Rails::Generators::Base
      source_root File.expand_path(File.join(File.dirname(__FILE__), 'templates'))

      desc "Creates an LittleSms initializer in application."
      def copy_initializer_file
        template "littlesms_initializer.rb", "config/initializers/littlesms_initializer.rb"
        puts "LittleSms installation complete! adjust settings in config/initializers/littlesms_initializer.rb"
      end
    end
  end
end