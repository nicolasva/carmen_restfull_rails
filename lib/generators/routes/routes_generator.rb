require 'rails/generators/migration'

class RoutesGenerator < Rails::Generators::Base
  include Rails::Generators::Migration

  def setup_routes
    route_carmen_restfull = ":countries, :except => [:show, :new, :edit, :create, :update, :destroy]"
    route route_carmen_restfull
  end
end
