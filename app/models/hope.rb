class Hope < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :work_status
  belongs_to :user

  with_options numericality: { other_than: 1, message: "を入力してください" } do
    validates :work_status_id
  end

  validate :start_end_check
  
  def start_end_check
    errors.add(:end_time, "は出勤時間より遅い時間を選択してください")
  end

end
