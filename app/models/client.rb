class Client < ApplicationRecord
  has_many :web_properties
  validates :name, :presence: true, uniqueness: true
end
