User.destroy_all
Product.destroy_all

# id, name, first_name, last_name, username, password, email
user_1 = User.create(
    id: 1, 
    name: "Luis Augusto Cardoso Mota", 
    first_name: "Luis Augusto", 
    last_name: "Cardoso Mota", 
    username: "luis1m2", 
    password: "123456", 
    email: "luis.augustocm@hotmail.com"
)
user_2 = User.create(
    id: 2, 
    name: "Ana Vitoria Santos Leite", 
    first_name: "Ana Vitoria", 
    last_name: "Cardoso Mota", 
    username: "anavi", 
    password: "123456", 
    email: "anavi@gmail.com"
)
user_3 = User.create(
    id: 3, 
    name: "Joao Lucas dos Santos", 
    first_name: "Joao Lucas", 
    last_name: "dos Santos", 
    username: "john", 
    password: "123456", 
    email: "john@email.com"
)

# name, price, quantity, id
product_1 = Product.create(name: "Product 1", price: 12.00, quantity: 20, id: 1)
product_2 = Product.create(name: "Product 2", price: 14.00, quantity: 10, id: 2)
product_3 = Product.create(name: "Product 3", price: 20.00, quantity: 5, id: 3)
