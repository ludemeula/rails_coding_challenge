
require 'rails_helper'

RSpec.describe User, type: :model do
  it 'is valid with valid attributes' do
    user = User.new(email: 'user@example.com', password: 'password')
    expect(user).to be_valid
  end

  it 'is not valid without an email' do
    user = User.new(email: nil)
    expect(user).to_not be_valid # erro: validação de presença email não existe
  end

  it 'is not valid with duplicate email' do
    User.create(email: 'user@example.com')
    user = User.new(email: 'user@example.com')
    expect(user).to_not be_valid
  end
end
