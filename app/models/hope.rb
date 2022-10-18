class Hope < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :work_status
  belongs_to :user

  validates :work_status_id, presence: true

end
