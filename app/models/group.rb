class Group < ApplicationRecord
  has_many :member_info, dependent: :destroy
end
