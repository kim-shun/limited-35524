class Philosophy < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '高い地位を目指したい' },
    { id: 3, name: 'お金で損をしたくない' },
    { id: 4, name: '仲間を大切にしたい' },
    { id: 5, name: '美しさを追求したい' },
    { id: 6, name: '物事の仕組みを解明したい' },
    { id: 7, name: '道徳が大事' }
  ]

  include ActiveHash::Associations
  has_many :questions
  end