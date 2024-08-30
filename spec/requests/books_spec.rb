require 'rails_helper'

describe 'Characters API', type: :request do
  it 'returns all Characters' do
      get '/api/v1/characters'

    expect(response).to have_http_status(:success)
  end
end
