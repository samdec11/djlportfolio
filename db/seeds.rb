#user :email, :password, :password_confirmation
#painting :name, :image, :desription
User.delete_all
Painting.delete_all

User.create(email: 'david.loncle@gmail.com', password: 'abc', password_confirmation: 'abc')

Painting.create(image: 'paintings/painting1.jpg')
Painting.create(image: 'paintings/painting2.jpg')
Painting.create(image: 'paintings/painting3.jpg')
Painting.create(image: 'paintings/painting4.jpg')
Painting.create(image: 'paintings/painting5.jpg')
Painting.create(image: 'paintings/painting6.jpg')
Painting.create(image: 'paintings/painting7.jpg')
Painting.create(image: 'paintings/painting8.jpg')