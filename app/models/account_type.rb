class AccountType < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: '一般' },
    { id: 3, name: '管理者' }
  ]

  include ActiveHash::Associations
  has_many :users
end
