class Client < ApplicationRecord
  has_many :web_properties, dependent: :destroy
  has_and_belongs_to_many :contacts
  validates :name, presence: true, uniqueness: true
end
