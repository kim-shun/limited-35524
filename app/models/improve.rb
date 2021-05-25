class Improve < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '専門スキル' },
    { id: 3, name: 'コミュニケーション能力' },
    { id: 4, name: 'ライティング能力' },
    { id: 5, name: '愛嬌' },
    { id: 6, name: '性格' },
    { id: 7, name: '外見' },
    { id: 8, name: '恋愛' },
    { id: 9, name: 'スケージュール管理' },
    { id: 10, name: '生活習慣' }
  ]

  include ActiveHash::Associations
  has_many :questions
  end