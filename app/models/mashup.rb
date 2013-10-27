class Mashup < ActiveRecord::Base
  attr_accessible :name, :url, :description
  has_and_belongs_to_many :apis
end
