require 'rails_helper'

RSpec.describe "Apartments", type: :request do
  let(:user) { User.create(
    email: 'JackDaniels32@learn.com',
    password: 'password',
    password_confirmation: 'password'
  )}

  describe "GET /index" do
    it 'gets a list of apartments' do
      apartment = user.apartments.create(
        street: '27 Elm Street',
        unit: '69',
        city: 'New York City',
        state: 'Alabama',
        square_footage: 9001,
        price: 1500,
        bedrooms: 2,
        bathrooms: 2,
        pets: 'dogs only',
        image: 'https://images1.apartments.com/i2/D-oS4Zbo5hrf3dfrs9cxZJtkQuzFQuvCWjY-cDHQKkA/117/elm-street-apartments-manchester-nh-building-photo.jpg'
      )
      get '/apartments'
      apartment = JSON.parse(response.body)
      expect(response).to have_http_status(200)
      expect(apartment.first['street']).to eq('27 Elm Street')
    end
  end
  
end
