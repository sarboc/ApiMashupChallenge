class Api < ActiveRecord::Base
  attr_accessible :name, :url, :description, :requires_key
  has_and_belongs_to_many :mashups
end
