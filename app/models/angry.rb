class Angry < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '政治の方針' },
    { id: 3, name: '身体的な痛み' },
    { id: 4, name: '暴言を浴びる' },
    { id: 5, name: '自分の時間を削られる' },
    { id: 6, name: '約束を破られる' },
    { id: 7, name: '立場をわきまえない他人の言動' },
    { id: 8, name: 'お金を失う' },
    { id: 9, name: '自分の頑張りが正当に評価されない' },
    { id: 10, name: '気象現象' },
    { id: 11, name: '成果を出せない自分への不甲斐なさ' },
    { id: 12, name: '何があっても怒らない' },
  ]

  include ActiveHash::Associations
  has_many :questions
  end