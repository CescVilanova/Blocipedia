class Wiki < ActiveRecord::Base
  attr_accessible :body, :name, :private
end
