class LikeType < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '優柔不断 しかし 誰にでも平等に優しい' },
    { id: 3, name: 'プライドが高い しかし 精神的かつ経済的に自立している' },
    { id: 4, name: '協調性がない しかし 独自の信念や思想を持っている' },
    { id: 5, name: '飽きっぽい しかし 柔軟性が高い' },
    { id: 6, name: '傷つきやすい しかし 共感能力が高い' },
    { id: 7, name: 'やや非常識 しかし 芸術的才能がある' },
    { id: 8, name: '向上心がない しかし 親しみやすい' },
    { id: 9, name: '精神的に自立していない しかし とても可愛らしい' },
  ]

  include ActiveHash::Associations
  has_many :questions
  end