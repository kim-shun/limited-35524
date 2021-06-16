class SecondText < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: 'は嫌だ' },
    { id: 3, name: 'を考えてください' },
    { id: 4, name: '」' },
    { id: 5, name: '?' },
    { id: 6, name: '!!' },
    { id: 7, name: 'の特徴は？' },
    { id: 8, name: '理由とは？' },
    { id: 9, name: 'なぜ？' },
    { id: 10, name: 'どんな使い方？' },
    { id: 11, name: '何を気をつける？' },
    { id: 12, name: '秘密を教えてください' },
    { id: 13, name: '方法とは？' },
    { id: 14, name: 'デメリットは？' },
    { id: 15, name: 'の口癖は？' },
    { id: 16, name: '65位は？' }
  ]

  include ActiveHash::Associations
  has_many :ogiris
  end