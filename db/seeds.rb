
puts 'CREATING ROLES'

Role.create([
  { :name => 'admin' },
  { :name => 'standard'},
  { :name => 'plus' }
], :without_protection => true)

puts 'SETTING UP DEFAULT USER LOGIN'

user = User.create! :name => 'First User', :email => 'user@example.com',
  :password => 'password', :password_confirmation => 'password'
user.add_role :admin
puts 'ADMIN CREATED: ' << user.name

user2 = User.create! :name => 'Standard User', :email => 'user2@example.com',
  :password => 'password', :password_confirmation => 'password'
user2.add_role :admin

user3 = User.create! :name => 'Plus User', :email => 'user3@example.com',
  :password => 'password', :password_confirmation => 'password'
