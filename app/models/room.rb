class Room < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :group
  has_many :messages

  validates :name, presence: true
  validates :group_id, presence: true
end
