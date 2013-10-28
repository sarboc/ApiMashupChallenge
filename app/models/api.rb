class Api < ActiveRecord::Base
  attr_accessible :name, :url, :description, :requires_key
  validates :name, presence: true
  validates :url, presence: true
  validates :description, presence: true
  validates :requires_key, presence: true
  has_and_belongs_to_many :mashups
end
