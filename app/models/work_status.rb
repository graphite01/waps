class WorkStatus < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: '出勤' },
    { id: 3, name: '公休' },
    { id: 4, name: '有休' }
  ]

  include ActiveHash::Associations
  has_many :hopes
end
