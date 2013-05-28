#user :email, :password, :password_confirmation, :artist_statement, :bio_image, :contact_image
#painting :name, :image, :desription
User.delete_all
Painting.delete_all
Link.delete_all
Paper.delete_all

User.create(email: 'david.loncle@gmail.com', password: 'abc', password_confirmation: 'abc', artist_statement: "I believe in aspiring. That endeavor yields being; evinces the assertion of life; circumvents the caprice of society and culture. Art's triumph is the vessel and fanfare of humanity; it rejectswhat binds and gesturesus to the soul-sung loving in dream. The valence of experience reveals our starting, and the ever beginning molds our living. Where is where when only we leap.", bio_image: 'headshot.jpg', contact_image: 'parchment.jpg')

Painting.create(image: 'paintings/painting1.jpg')
Painting.create(image: 'paintings/painting2.jpg')
Painting.create(image: 'paintings/painting3.jpg')
Painting.create(image: 'paintings/painting4.jpg')
Painting.create(image: 'paintings/painting5.jpg')
Painting.create(image: 'paintings/painting6.jpg')
Painting.create(image: 'paintings/painting7.jpg')
Painting.create(image: 'paintings/painting8.jpg')