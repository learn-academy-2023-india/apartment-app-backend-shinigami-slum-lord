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
        price: "1500",
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

  describe "POST /create" do
    it 'creates an apartment' do
      apartment_params = {
        apartment:{
        street: '27 Elm Street',
        unit: '69',
        city: 'New York City',
        state: 'Alabama',
        square_footage: 9001,
        price: "1500",
        bedrooms: 2,
        bathrooms: 2,
        pets: 'dogs only',
        image: 'https://images1.apartments.com/i2/D-oS4Zbo5hrf3dfrs9cxZJtkQuzFQuvCWjY-cDHQKkA/117/elm-street-apartments-manchester-nh-building-photo.jpg',
        user_id: user.id
       }
      }
      post '/apartments', params: apartment_params
      expect(response).to have_http_status(200)
      apartment = Apartment.first
      expect(apartment['street']).to eq('27 Elm Street')
      expect(apartment['unit']).to eq('69')
      expect(apartment['city']).to eq('New York City')
      expect(apartment['state']).to eq('Alabama')
      expect(apartment['square_footage']).to eq(9001)
      expect(apartment['price']).to eq("1500")
      expect(apartment['bedrooms']).to eq(2)
      expect(apartment['bathrooms']).to eq(2)
      expect(apartment['pets']).to eq('dogs only')
      expect(apartment['image']).to eq('https://images1.apartments.com/i2/D-oS4Zbo5hrf3dfrs9cxZJtkQuzFQuvCWjY-cDHQKkA/117/elm-street-apartments-manchester-nh-building-photo.jpg')
      expect(apartment["user_id"]).to eq(user.id)
    end
    
    it 'returns a 422 status code when the apartment is invalid' do
      invalid_apartment_params = {
        apartment:{
          street: nil,
          unit: nil,
          city: nil,
          state: nil,
          square_footage: nil,
          price: nil,
          bedrooms: nil,
          bathrooms: nil,
          pets: nil,
          image: nil
        }
      }
      post '/apartments', params: invalid_apartment_params
      expect(response).to have_http_status(422)
    end
  end
end
