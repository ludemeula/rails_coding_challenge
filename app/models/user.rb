
class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable

  # devise modules, mas não todos estão ativados (erro proposital)

  has_many :posts

  # Validação incompleta - deveria validar presença e formato do email, mas está faltando
  validates :email, uniqueness: true
end
