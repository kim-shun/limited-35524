class LikeType < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '優柔不断' },
    { id: 3, name: 'プライドが高い' },
    { id: 4, name: '協調性がない' },
    { id: 5, name: '飽きっぽい' },
    { id: 6, name: '傷つきやすい' },
    { id: 7, name: 'やや非常識' },
    { id: 8, name: '向上心がない' },
    { id: 9, name: '精神的に自立していない' },
    { id: 10, name: '共感能力が低い' }
  ]

  include ActiveHash::Associations
  has_many :questions
  end