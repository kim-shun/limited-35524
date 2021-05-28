class Hobby < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '登山/トレッキング' },
    { id: 3, name: '家庭菜園/ベランダ菜園' },
    { id: 4, name: 'キャンプ/グランピング' },
    { id: 5, name: 'ボルダリング' },
    { id: 6, name: 'ヨガ' },
    { id: 7, name: '将棋' },
    { id: 8, name: '編み物' },
    { id: 9, name: 'ひとり旅' },
    { id: 10, name: 'eスポーツ' },
    { id: 11, name: 'ランニング/ジョギング' },
    { id: 12, name: '読書' },
    { id: 13, name: 'ボードゲーム' },
    { id: 14, name: 'イラスト' },
    { id: 15, name: 'DIY' }
  ]

  include ActiveHash::Associations
  has_many :questions
  end