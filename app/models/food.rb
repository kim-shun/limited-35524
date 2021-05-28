class Food < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: 'ビーフシチュー' },
    { id: 3, name: '枝豆' },
    { id: 4, name: '豚骨ラーメン' },
    { id: 5, name: '海鮮八宝菜' },
    { id: 6, name: 'インサラータ・カプレーゼ' },
    { id: 7, name: '牛ハラミ' },
    { id: 8, name: 'メバルの煮付け' },
    { id: 9, name: 'キムチ' },
    { id: 10, name: 'ロールキャベツ' },
    { id: 11, name: 'チーズケーキ' },
    { id: 12, name: 'ざるそば' },
    { id: 13, name: 'チキン南蛮' },
    { id: 14, name: 'アボカド' }
  ]

  include ActiveHash::Associations
  has_many :questions
  end