
class User < ApplicationRecord
  # devise modules, mas não todos estão ativados (erro proposital)
  devise :database_authenticatable, :registerable

  has_many :posts

  # Validação incompleta - deveria validar presença e formato do email, mas está faltando
  validates :email, uniqueness: true
end
