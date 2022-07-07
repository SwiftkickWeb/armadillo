class Client < ApplicationRecord
  has_many :web_properties, dependent: :destroy
  validates :name, presence: true, uniqueness: true
end
