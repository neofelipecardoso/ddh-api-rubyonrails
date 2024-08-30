require 'rails_helper'

describe 'Characters API', type: :request do
  it 'returns all Characters' do
    FactoryBot.create(:character, name: 'abcd', aura: 'Elemental')
    FactoryBot.create(:character, name: 'vvdsdcd', aura: 'Controle de aura')

    get '/api/v1/characters'

    expect(response).to have_http_status(:success)
    expect(JSON.parse(response.body).size).to eq(2)
  end
end
