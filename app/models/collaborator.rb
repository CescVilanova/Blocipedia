class Collaborator < ActiveRecord::Base
  attr_accessible :access, :user_id, :wiki_id
  belongs_to :wiki
  belongs_to :user
end
