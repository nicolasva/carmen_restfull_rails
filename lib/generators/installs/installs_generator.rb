require 'rails/generators/migration'

class InstallsGenerator < Rails::Generators::Base
  include Rails::Generators::Migration

  source_root File.expand_path('../templates', __FILE__)

  def setup_routes
    template "controllers/countries_controller.rb", "app/controllers/countries_controller.rb"
    template "models/country.rb", "app/models/country.rb"
    template "config/initializers/carmen.rb", "config/initializers/carmen.rb"
    route_carmen_restfull = ":countries, :except => [:show, :new, :edit, :create, :update, :destroy]"
    route route_carmen_restfull
  end
end
