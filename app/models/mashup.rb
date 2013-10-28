class Mashup < ActiveRecord::Base
  attr_accessible :name, :url, :description
  validates :name, presence: true
  validates :url, presence: true
  validates :description, presence: true
  has_and_belongs_to_many :apis
end
