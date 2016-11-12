class Produto < ApplicationRecord

  validates :descricao, :tipo, :nome, :preco, presence: true
  validates :nome, uniqueness: true

  has_attached_file :foto, styles: { medium: "300x300>", thumb: "100x100>" }
  validates_attachment_content_type :foto, content_type: /\Aimage\/.*\z/


end