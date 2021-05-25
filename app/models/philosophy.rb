class Philosophy < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: 'お金持ちになりたい' },
    { id: 3, name: '自分の価値を理解して欲しい' },
    { id: 4, name: '楽して生きたい' },
    { id: 5, name: '何かに没頭したい' },
    { id: 6, name: '一生遊んで暮らしたい' },
    { id: 7, name: '恋愛が大事' },
    { id: 8, name: 'ただ与えられたことをこなしたい' },
    { id: 9, name: '成長したい' },
    { id: 10, name: '自分以外の誰かに生まれ変わりたい' }
  ]

  include ActiveHash::Associations
  has_many :questions
  end