class Hope < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :work_status
  belongs_to :user

  with_options presence: true, numericality: { other_than: 1, message: "cant't be blank" } do
    validates :work_status_id, presence: true
  end
end
