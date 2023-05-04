class Event < ApplicationRecord
  belongs_to :venue
  belongs_to :category

  validates :name, presence: true
  validates :date, presence: true
  
end
