user1 = User.where(email: "JackDaniels32@learn.com").first_or_create(password: "password", password_confirmation: "password")
user2 = User.where(email: "HarryPotter@hogwarts.com").first_or_create(password: "password", password_confirmation: "password")

user1_apartments = [
  { street: '27 Elm Street',
    unit: '69',
    city: 'New York City',
    state: 'Alabama',
    square_footage: 9001,
    price: 1500,
    bedrooms: 2,
    bathrooms: 2,
    pets: 'dogs only',
    image: 'https://images1.apartments.com/i2/D-oS4Zbo5hrf3dfrs9cxZJtkQuzFQuvCWjY-cDHQKkA/117/elm-street-apartments-manchester-nh-building-photo.jpg'
  },
  { 
    street: '27 Who Cares',
    unit: '42',
    city: 'Puamaeole',
    state: 'Hawaii',
    square_footage: 9002,
    price: 1507,
    bedrooms: 5,
    bathrooms: 3,
    pets: 'all ok',
    image: 'https://th.bing.com/th/id/R.5861f0040cf050ca5659246422e224a9?rik=W1DhRERCODznwg&riu=http%3a%2f%2fwww.gharexpert.com%2fUser_Images%2f120201715813.jpg&ehk=FEAUqLSvq%2fEZGdolRYeQJwh0yoH1nfsF353SVYqp9Hs%3d&risl=&pid=ImgRaw&r=0'
  }
]

user2_apartments = [
  { street: '91-2834 Kuakamana',
    unit: '745',
    city: 'Kapolei',
    state: 'Hawaii',
    square_footage: 9054,
    price: 1900,
    bedrooms: 4,
    bathrooms: 1,
    pets: 'hell no',
    image: 'https://www.google.com/imgres?imgurl=https%3A%2F%2Fimages1.apartments.com%2Fi2%2Fl4d6BYbX57oLW2NKDAIQ7ub5baRQjZFJXif1xLMB94w%2F117%2F502-keawe-st-honolulu-hi-building-photo.jpg%3Fp%3D1&tbnid=GBTyx6jW1IeXgM&vet=12ahUKEwjmpdPXsLCEAxUAh-4BHd-VAQwQMygBegQIARBw..i&imgrefurl=https%3A%2F%2Fwww.apartments.com%2Fhi%2F&docid=qnG_opT7up06tM&w=650&h=433&q=hawaii%20apartments&ved=2ahUKEwjmpdPXsLCEAxUAh-4BHd-VAQwQMygBegQIARBw'
  },
  { 
    street: 'Mailiili St',
    unit: '87-938',
    city: 'Kalihi',
    state: 'Hawaii',
    square_footage: 9564,
    price: 1407,
    bedrooms: 2,
    bathrooms: 1.5,
    pets: 'all ok',
    image: 'https://images1.apartments.com/i2/rfdpYoVIWRRXP-Eg76BypW6alD36lR9Jo2L6IpXuejU/111/kalihi-garden-honolulu-hi-primary-photo.jpg'
  }
]

user1_apartments.each do |apartment|
  user1.apartments.create(apartment)
  p "created: #{apartment}"
end

user2_apartments.each do |apartment|
  user2.apartments.create(apartment)
  p "created: #{apartment}"
end
