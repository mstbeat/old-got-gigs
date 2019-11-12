class Gig < ApplicationRecord
  belongs_to :user
  has_many :parts, dependent: :destroy

  accepts_nested_attributes_for :parts
end
