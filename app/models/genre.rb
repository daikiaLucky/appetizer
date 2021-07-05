class Genre < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: 'おつまみ' },
    { id: 3, name: '遊び' },
    { id: 4, name: '動画' },
    { id: 5, name: '何か1' },
    { id: 6, name: '何か2' },
    { id: 7, name: 'その他' }
  ]

  include ActiveHash::Associations
  has_many :posts
end