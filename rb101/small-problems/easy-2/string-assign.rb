name = 'Bob'
save_name = name
name = 'Alice'
puts name, save_name

# Alice
# Bob

name = 'Bob'
save_name = name
name.upcase!
puts name, save_name

# BOB (mutable method call)
# BOB (points to same object)
