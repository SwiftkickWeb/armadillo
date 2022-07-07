class WebProperty < ApplicationRecord
  belongs_to :client
  validates :name, presence: true
  validates :url, presence: true
end
