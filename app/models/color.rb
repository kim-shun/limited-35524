class Color < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '赤' },
    { id: 3, name: '青' },
    { id: 4, name: '黄色' },
    { id: 5, name: '緑' },
    { id: 6, name: '紫' },
    { id: 7, name: '白' },
    { id: 8, name: '黒' },
    { id: 9, name: 'オレンジ' },
    { id: 10, name: 'ピンク' }
  ]
   
  include ActiveHash::Associations
  has_many :questions
  end