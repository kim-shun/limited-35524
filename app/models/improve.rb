class Improve < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '心配性' },
    { id: 3, name: '優柔不断' },
    { id: 4, name: 'マイペース' },
    { id: 5, name: '協調性がないところ' },
    { id: 6, name: '頑固なところ' },
    { id: 7, name: '人見知りなところ' },
    { id: 8, name: '緊張しやすいところ' },
    { id: 9, name: '自信過剰なところ' },
    { id: 10, name: '我が強いところ' },
    { id: 11, name: '独断的なところ' },
    { id: 12, name: '楽観的なところ' },
    { id: 13, name: '理屈っぽさ' },
    { id: 14, name: '感情的なところ' },
    { id: 15, name: '知識不足' },
    { id: 16, name: 'スキル不足' },
    { id: 17, name: '生活習慣' },
    { id: 18, name: '外見' }
  ]

  include ActiveHash::Associations
  has_many :questions
  end