class FavoriteLiquor < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: 'ワイン' },
    { id: 3, name: '発泡酒' },
    { id: 4, name: 'ビール' },
    { id: 5, name: '日本酒' },
    { id: 6, name: '焼酎' },
    { id: 7, name: 'ウイスキー' },
    { id: 8, name: 'ブランデー' },
    { id: 9, name: 'ジン' },
    { id: 10, name: 'ウォッカ' },
    { id: 11, name: 'ラム' },
    { id: 12, name: 'テキーラ' },
    { id: 13, name: '果実酒' },
    { id: 14, name: 'リキュール' },
    { id: 15, name: 'その他' }
  ]

  include ActiveHash::Associations
  has_many :users
end
