class Wiki < ActiveRecord::Base
  attr_accessible :body, :name, :private
  belongs_to :user
end
