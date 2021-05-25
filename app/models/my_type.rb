class MyType < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '内向的' },
    { id: 3, name: '外向的' },
    { id: 4, name: '両向的' },
    { id: 5, name: '論理的' },
    { id: 6, name: '感情的' },
    { id: 7, name: 'バランス型' },
    { id: 8, name: 'アクティブ' },
    { id: 9, name: 'エンターテイナー' },
    { id: 10, name: '怠け者' }
  ]

  include ActiveHash::Associations
  has_many :questions
  end