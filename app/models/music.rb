class Music < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: 'J-POP' },
    { id: 3, name: 'ジャズ' },
    { id: 4, name: 'クラシック' },
    { id: 5, name: '邦楽ロック' },
    { id: 6, name: '邦楽ダンス/エレクトロニカ' },
    { id: 7, name: '邦楽ヒップホップ/R&B/レゲエ' },
    { id: 8, name: '洋楽総合' },
    { id: 9, name: '洋楽ロック' },
    { id: 10, name: '洋楽ポップス' },
    { id: 11, name: '洋楽ダンス/エレクトロニカ' },
    { id: 12, name: '洋楽ヒップホップ/R&B/レゲエ' },
    { id: 13, name: 'K-POP/ワールドミュージック' },
    { id: 14, name: '歌謡曲/演歌' },
    { id: 15, name: 'アニメ' },
    { id: 16, name: '自然のせせらぎ' }
  ]

  include ActiveHash::Associations
  has_many :questions
  end