class Micropost < ApplicationRecord
  belongs_to :user
  defaul_scope -> { order('created_at DESC') }
  validates :user_id, presence: true
  validates :contents, presence: true, length: { maximum: 140 }
end
