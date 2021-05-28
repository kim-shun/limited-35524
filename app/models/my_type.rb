class MyType < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: 'とても内向的' },
    { id: 3, name: '内向的' },
    { id: 4, name: '内向的寄り' },
    { id: 5, name: '両向的' },
    { id: 6, name: '外向的寄り' },
    { id: 7, name: '外向的' },
    { id: 8, name: 'とても外向的' }
  ]

  include ActiveHash::Associations
  has_many :questions
  end