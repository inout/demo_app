class Leave < ActiveRecord::Base
  # attr_accessible :title, :body
  belongs_to :user, :inverse_of => :leave
end
