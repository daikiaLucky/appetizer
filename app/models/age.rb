class Age < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: '20歳〜24歳' },
    { id: 3, name: '25歳〜29歳' },
    { id: 4, name: '30歳〜34歳' },
    { id: 5, name: '35歳〜39歳' },
    { id: 6, name: '40歳〜44歳' },
    { id: 7, name: '45歳〜49歳' },
    { id: 8, name: '50歳〜54歳' },
    { id: 9, name: '55歳〜59歳' },
    { id: 10, name: '60歳〜64歳' },
    { id: 11, name: '65歳〜69歳' },
    { id: 12, name: '70歳〜74歳' },
    { id: 13, name: '75歳〜79歳' },
    { id: 14, name: '80歳〜84歳' },
    { id: 15, name: '85歳〜89歳' },
    { id: 16, name: '90歳〜94歳' },
    { id: 17, name: '95歳〜99歳' },
    { id: 18, name: '100歳〜' },
    { id: 19, name: 'その他' }
  ]

  include ActiveHash::Associations
  has_many :users
end
