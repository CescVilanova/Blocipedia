class Wiki < ActiveRecord::Base
  attr_accessible :body, :name, :private
  belongs_to :user
  has_many :collaborators
  has_many :users, through: :collaborators 
end
