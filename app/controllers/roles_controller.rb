class RolesController < ApplicationController
  layout 'main_layout'

  active_scaffold :role do |config|
    config.columns[:name].inplace_edit = true
  end
end
