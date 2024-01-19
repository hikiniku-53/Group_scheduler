class Group < ApplicationRecord
  has_many :member_info, dependent: :destroy

  validates :group_name, presence: true, uniqueness: true
end
