
class Post < ApplicationRecord
  belongs_to :user

  # Falta validação de presença do título (erro proposital)
end
