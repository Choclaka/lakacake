class Produto < ApplicationRecord

  validates :descricao, :tipo, :nome, :preco, presence: true
  validates :nome, uniqueness: true

end