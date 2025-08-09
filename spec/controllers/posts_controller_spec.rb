
require 'rails_helper'

RSpec.describe PostsController, type: :controller do
  let(:user) { FactoryBot.create(:user) }
  let(:valid_attributes) { { title: 'Test Post', content: 'Content' } }

  before { sign_in user }

  describe 'GET #index' do
    it 'returns a success response' do
      Post.create!(valid_attributes.merge(user: user))
      get :index
      expect(response).to be_successful
    end
  end

  describe 'POST #create' do
    it 'creates a new post' do
      expect {
        post :create, params: { post: valid_attributes }
      }.to change(Post, :count).by(1) # erro: o create não associa user, então o test deveria falhar
    end
  end
end
