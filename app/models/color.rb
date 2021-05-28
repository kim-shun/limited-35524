class Color < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '赤' },
    { id: 3, name: '青' },
    { id: 4, name: '黄' },
    { id: 5, name: '緑' },
    { id: 6, name: '紫' },
    { id: 7, name: '白' },
    { id: 8, name: '黒' },
    { id: 9, name: 'オレンジ' },
    { id: 10, name: 'ピンク' },
    { id: 11, name: 'グレー' },
    { id: 12, name: '淡色系' }
  ]
   
  include ActiveHash::Associations
  has_many :questions
  end