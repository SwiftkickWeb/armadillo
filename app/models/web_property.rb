class WebProperty < ApplicationRecord
  belongs_to :client, dependent: :destroy
  validates :name, presence: true
  validates :url, presence: true
end
