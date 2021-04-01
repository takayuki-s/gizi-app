class Room < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :group

  validates :name, presence: true
  validates :group_id, presence: true
end
