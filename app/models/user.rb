class User < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :account_type
  has_many :hopes
  has_many :confirms
  has_many :comments

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  PASSWORD_REGEX = /\A(?=.*?[a-z])(?=.*?\d)[a-z\d]+\z/i.freeze
  validates_format_of :password, with: PASSWORD_REGEX, message: 'は半角英字と数字の両方を含めてください'

  with_options presence: true, format: { with: /\A[ぁ-んァ-ヶ一-龥々ー ]+\z/, message: 'は英字と数字の両方を含めてください' } do
    validates :name
  end

  with_options presence: true, numericality: { other_than: 1, message: 'を入力してください' } do
    validates :account_type_id
  end
end
