class ApplicationController < ActionController::Base
  # Se você estiver usando Devise, pode adicionar aqui:
  before_action :authenticate_user!

  # Pode colocar aqui métodos comuns a todos controllers
end
