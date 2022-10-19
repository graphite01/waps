require 'rails_helper'

RSpec.describe Hope, type: :model do
  before do
    @hope = FactoryBot.build(:hope)
  end

  describe  'シフト希望登録' do
    context 'シフト希望を登録できるとき' do
      it 'work_status_id、start_time、end_timeが存在すれば登録できる' do
        expect(@hope).to be_valid
      end
      it 'contentが空でも登録できる' do
        @hope.content = ''
        expect(@hope).to be_valid
      end
    end
    context 'シフト希望の登録ができないとき' do
      it 'work_status_idが空では登録できない' do
        @hope.work_status_id = 1
        @hope.valid?
        expect(@hope.errors.full_messages).to include("勤務状態を入力してください")
      end
      it 'work_status_idが空では登録できない' do
        @hope.work_status_id = 1
        @hope.valid?
        expect(@hope.errors.full_messages).to include("勤務状態を入力してください")
      end
      it 'start_timeが現在の日時より遅い時間では登録できない' do
        @hope.start_time = "202001010100"
        @hope.valid?
        expect(@hope.errors.full_messages).to include("出勤時間は現在の日時より遅い時間を選択してください")
      end
      it 'end_timeがstart_timeより早い時間では登録できない' do
        @hope.end_time = "209812301530"
        @hope.valid?
        expect(@hope.errors.full_messages).to include("退勤時間は出勤時間より遅い時間を選択してください")
      end
    end
  end
end
