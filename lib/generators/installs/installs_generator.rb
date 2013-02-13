require 'rails/generators/migration'

class InstallsGenerator < Rails::Generators::Base
  include Rails::Generators::Migration

  source_root File.expand_path('../templates', __FILE__)

  def setup_routes
    template "controllers/countries_controller.rb", "app/controllers/countries_controller.rb"
    template "controllers/regions_controller.rb", "app/controllers/regions_controller.rb"
    template "models/country.rb", "app/models/country.rb"
    template "models/region.rb", "app/models/region.rb"
    template "config/initializers/carmen.rb", "config/initializers/carmen.rb"
    route_carmen_restfull = "resources  :countries, :except => [:show, :new, :edit, :create, :update, :destroy] do\n"
    route_carmen_restfull += "\t\tresources :regions, :except => [:edit, :update, :destroy, :new, :show, :index, :create]\n"
    route_carmen_restfull += "end\n"
    route_carmen_restfull += "match 'countries/:country_name/regions' => 'regions#index'"
    route route_carmen_restfull
  end
end
