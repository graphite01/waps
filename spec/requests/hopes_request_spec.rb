require 'rails_helper'

RSpec.describe 'Hopes', type: :request do
  describe 'GET /index' do
    it 'returns http success' do
      get '/hopes/index'
      expect(response).to have_http_status(:success)
    end
  end
end
