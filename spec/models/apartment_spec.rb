require 'rails_helper'

RSpec.describe Apartment, type: :model do
  let(:user) { User.create(
    email: 'JackDaniels32@learn.com',
    password: 'password',
    password_confirmation: 'password'
    )
  }

  it 'should validate street' do
    apartment = user.apartments.create(
    unit: '745',
    city: 'Kapolei',
    state: 'Hawaii',
    square_footage: 9054,
    price: 1900,
    bedrooms: 4,
    bathrooms: 1,
    pets: 'hell no',
    image: 'https://www.google.com/imgres?imgurl=https%3A%2F%2Fimages1.apartments.com%2Fi2%2Fl4d6BYbX57oLW2NKDAIQ7ub5baRQjZFJXif1xLMB94w%2F117%2F502-keawe-st-honolulu-hi-building-photo.jpg%3Fp%3D1&tbnid=GBTyx6jW1IeXgM&vet=12ahUKEwjmpdPXsLCEAxUAh-4BHd-VAQwQMygBegQIARBw..i&imgrefurl=https%3A%2F%2Fwww.apartments.com%2Fhi%2F&docid=qnG_opT7up06tM&w=650&h=433&q=hawaii%20apartments&ved=2ahUKEwjmpdPXsLCEAxUAh-4BHd-VAQwQMygBegQIARBw'
    )
    expect(apartment.errors[:street]).to include("can't be blank")
  end

  it 'should validate unit' do
    apartment = user.apartments.create(
    street: '91-2834 Kuakamana',
    city: 'Kapolei',
    state: 'Hawaii',
    square_footage: 9054,
    price: 1900,
    bedrooms: 4,
    bathrooms: 1,
    pets: 'hell no',
    image: 'https://www.google.com/imgres?imgurl=https%3A%2F%2Fimages1.apartments.com%2Fi2%2Fl4d6BYbX57oLW2NKDAIQ7ub5baRQjZFJXif1xLMB94w%2F117%2F502-keawe-st-honolulu-hi-building-photo.jpg%3Fp%3D1&tbnid=GBTyx6jW1IeXgM&vet=12ahUKEwjmpdPXsLCEAxUAh-4BHd-VAQwQMygBegQIARBw..i&imgrefurl=https%3A%2F%2Fwww.apartments.com%2Fhi%2F&docid=qnG_opT7up06tM&w=650&h=433&q=hawaii%20apartments&ved=2ahUKEwjmpdPXsLCEAxUAh-4BHd-VAQwQMygBegQIARBw'
    )
    expect(apartment.errors[:unit]).to include("can't be blank")
  end

  it 'should validate city' do
    apartment = user.apartments.create(
    unit: '745',
    street: '91-2834 Kuakamana',
    state: 'Hawaii',
    square_footage: 9054,
    price: 1900,
    bedrooms: 4,
    bathrooms: 1,
    pets: 'hell no',
    image: 'https://www.google.com/imgres?imgurl=https%3A%2F%2Fimages1.apartments.com%2Fi2%2Fl4d6BYbX57oLW2NKDAIQ7ub5baRQjZFJXif1xLMB94w%2F117%2F502-keawe-st-honolulu-hi-building-photo.jpg%3Fp%3D1&tbnid=GBTyx6jW1IeXgM&vet=12ahUKEwjmpdPXsLCEAxUAh-4BHd-VAQwQMygBegQIARBw..i&imgrefurl=https%3A%2F%2Fwww.apartments.com%2Fhi%2F&docid=qnG_opT7up06tM&w=650&h=433&q=hawaii%20apartments&ved=2ahUKEwjmpdPXsLCEAxUAh-4BHd-VAQwQMygBegQIARBw'
    )
    expect(apartment.errors[:city]).to include("can't be blank")
  end

  it 'should validate state' do
    apartment = user.apartments.create(
    unit: '745',
    city: 'Kapolei',
    street: '91-2834 Kuakamana',
    square_footage: 9054,
    price: 1900,
    bedrooms: 4,
    bathrooms: 1,
    pets: 'hell no',
    image: 'https://www.google.com/imgres?imgurl=https%3A%2F%2Fimages1.apartments.com%2Fi2%2Fl4d6BYbX57oLW2NKDAIQ7ub5baRQjZFJXif1xLMB94w%2F117%2F502-keawe-st-honolulu-hi-building-photo.jpg%3Fp%3D1&tbnid=GBTyx6jW1IeXgM&vet=12ahUKEwjmpdPXsLCEAxUAh-4BHd-VAQwQMygBegQIARBw..i&imgrefurl=https%3A%2F%2Fwww.apartments.com%2Fhi%2F&docid=qnG_opT7up06tM&w=650&h=433&q=hawaii%20apartments&ved=2ahUKEwjmpdPXsLCEAxUAh-4BHd-VAQwQMygBegQIARBw'
    )
    expect(apartment.errors[:state]).to include("can't be blank")
  end

  it 'should validate square_footage' do
    apartment = user.apartments.create(
    unit: '745',
    city: 'Kapolei',
    state: 'Hawaii',
    street: '91-2834 Kuakamana',
    price: 1900,
    bedrooms: 4,
    bathrooms: 1,
    pets: 'hell no',
    image: 'https://www.google.com/imgres?imgurl=https%3A%2F%2Fimages1.apartments.com%2Fi2%2Fl4d6BYbX57oLW2NKDAIQ7ub5baRQjZFJXif1xLMB94w%2F117%2F502-keawe-st-honolulu-hi-building-photo.jpg%3Fp%3D1&tbnid=GBTyx6jW1IeXgM&vet=12ahUKEwjmpdPXsLCEAxUAh-4BHd-VAQwQMygBegQIARBw..i&imgrefurl=https%3A%2F%2Fwww.apartments.com%2Fhi%2F&docid=qnG_opT7up06tM&w=650&h=433&q=hawaii%20apartments&ved=2ahUKEwjmpdPXsLCEAxUAh-4BHd-VAQwQMygBegQIARBw'
    )
    expect(apartment.errors[:square_footage]).to include("can't be blank")
  end

  it 'should validate price' do
    apartment = user.apartments.create(
    unit: '745',
    city: 'Kapolei',
    state: 'Hawaii',
    square_footage: 9054,
    street: '91-2834 Kuakamana',
    bedrooms: 4,
    bathrooms: 1,
    pets: 'hell no',
    image: 'https://www.google.com/imgres?imgurl=https%3A%2F%2Fimages1.apartments.com%2Fi2%2Fl4d6BYbX57oLW2NKDAIQ7ub5baRQjZFJXif1xLMB94w%2F117%2F502-keawe-st-honolulu-hi-building-photo.jpg%3Fp%3D1&tbnid=GBTyx6jW1IeXgM&vet=12ahUKEwjmpdPXsLCEAxUAh-4BHd-VAQwQMygBegQIARBw..i&imgrefurl=https%3A%2F%2Fwww.apartments.com%2Fhi%2F&docid=qnG_opT7up06tM&w=650&h=433&q=hawaii%20apartments&ved=2ahUKEwjmpdPXsLCEAxUAh-4BHd-VAQwQMygBegQIARBw'
    )
    expect(apartment.errors[:price]).to include("can't be blank")
  end

  it 'should validate bedrooms' do
    apartment = user.apartments.create(
    unit: '745',
    city: 'Kapolei',
    state: 'Hawaii',
    square_footage: 9054,
    price: 1900,
    street: '91-2834 Kuakamana',
    bathrooms: 1,
    pets: 'hell no',
    image: 'https://www.google.com/imgres?imgurl=https%3A%2F%2Fimages1.apartments.com%2Fi2%2Fl4d6BYbX57oLW2NKDAIQ7ub5baRQjZFJXif1xLMB94w%2F117%2F502-keawe-st-honolulu-hi-building-photo.jpg%3Fp%3D1&tbnid=GBTyx6jW1IeXgM&vet=12ahUKEwjmpdPXsLCEAxUAh-4BHd-VAQwQMygBegQIARBw..i&imgrefurl=https%3A%2F%2Fwww.apartments.com%2Fhi%2F&docid=qnG_opT7up06tM&w=650&h=433&q=hawaii%20apartments&ved=2ahUKEwjmpdPXsLCEAxUAh-4BHd-VAQwQMygBegQIARBw'
    )
    expect(apartment.errors[:bedrooms]).to include("can't be blank")
  end

  it 'should validate bathrooms' do
    apartment = user.apartments.create(
    unit: '745',
    city: 'Kapolei',
    state: 'Hawaii',
    square_footage: 9054,
    price: 1900,
    bedrooms: 4,
    street: '91-2834 Kuakamana',
    pets: 'hell no',
    image: 'https://www.google.com/imgres?imgurl=https%3A%2F%2Fimages1.apartments.com%2Fi2%2Fl4d6BYbX57oLW2NKDAIQ7ub5baRQjZFJXif1xLMB94w%2F117%2F502-keawe-st-honolulu-hi-building-photo.jpg%3Fp%3D1&tbnid=GBTyx6jW1IeXgM&vet=12ahUKEwjmpdPXsLCEAxUAh-4BHd-VAQwQMygBegQIARBw..i&imgrefurl=https%3A%2F%2Fwww.apartments.com%2Fhi%2F&docid=qnG_opT7up06tM&w=650&h=433&q=hawaii%20apartments&ved=2ahUKEwjmpdPXsLCEAxUAh-4BHd-VAQwQMygBegQIARBw'
    )
    expect(apartment.errors[:bathrooms]).to include("can't be blank")
  end

  it 'should validate pets' do
  apartment = user.apartments.create(
    unit: '745',
    city: 'Kapolei',
    state: 'Hawaii',
    square_footage: 9054,
    price: 1900,
    bedrooms: 4,
    street: '91-2834 Kuakamana',
    image: 'https://www.google.com/imgres?imgurl=https%3A%2F%2Fimages1.apartments.com%2Fi2%2Fl4d6BYbX57oLW2NKDAIQ7ub5baRQjZFJXif1xLMB94w%2F117%2F502-keawe-st-honolulu-hi-building-photo.jpg%3Fp%3D1&tbnid=GBTyx6jW1IeXgM&vet=12ahUKEwjmpdPXsLCEAxUAh-4BHd-VAQwQMygBegQIARBw..i&imgrefurl=https%3A%2F%2Fwww.apartments.com%2Fhi%2F&docid=qnG_opT7up06tM&w=650&h=433&q=hawaii%20apartments&ved=2ahUKEwjmpdPXsLCEAxUAh-4BHd-VAQwQMygBegQIARBw'
    )
    expect(apartment.errors[:pets]).to include("can't be blank")
  end

  it 'should validate user_id' do
  apartment = Apartment.create(
    unit: '745',
    city: 'Kapolei',
    state: 'Hawaii',
    square_footage: 9054,
    price: 1900,
    bedrooms: 4,
    street: '91-2834 Kuakamana',
    pets: 'hell no',
    image: 'https://www.google.com/imgres?imgurl=https%3A%2F%2Fimages1.apartments.com%2Fi2%2Fl4d6BYbX57oLW2NKDAIQ7ub5baRQjZFJXif1xLMB94w%2F117%2F502-keawe-st-honolulu-hi-building-photo.jpg%3Fp%3D1&tbnid=GBTyx6jW1IeXgM&vet=12ahUKEwjmpdPXsLCEAxUAh-4BHd-VAQwQMygBegQIARBw..i&imgrefurl=https%3A%2F%2Fwww.apartments.com%2Fhi%2F&docid=qnG_opT7up06tM&w=650&h=433&q=hawaii%20apartments&ved=2ahUKEwjmpdPXsLCEAxUAh-4BHd-VAQwQMygBegQIARBw'
    )
    expect(apartment.errors[:user_id]).to include("can't be blank")
  end
end
