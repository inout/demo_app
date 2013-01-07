class RolesController < ApplicationController
  active_scaffold :role do |config|
    config.columns[:name].inplace_edit = true
  end
end 