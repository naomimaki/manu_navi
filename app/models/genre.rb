class Genre < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: 'ルーティーン' },
    { id: 3, name: '料理' },
    { id: 4, name: 'ドリンク' },
    { id: 5, name: 'その他' },
  ] 
end