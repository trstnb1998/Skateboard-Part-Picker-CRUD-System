User.destroy_all
u1 = User.create :email => 'tris@gmail.com', :password => 'chicken', :admin => true
u2 = User.create :email => 'hi@ga.co', :password => 'chicken'
puts "#{ User.count } users"

Skateboard.destroy_all
s1 = Skateboard.create :deck_id => 'REAL IN THE CLOUDS SKATEBOARD DECK - CHIMA', :truck_id => 'INDEPENDENT FORGED TITANIUM SKATEBOARD TRUCKS - SILVER', :bearing_id => 'BONES - REDS SKATEBOARD BEARINGS', :wheel_id => 'F4 EVAN SMITH VISIONS CONICAL', :price => '397'
puts "#{ Skateboard.count } skateboards"

Deck.destroy_all
d1 = Deck.create :name => 'REAL IN THE CLOUDS SKATEBOARD DECK - CHIMA', :manufacturer => 'REAL Skateboards', :size => '8.25', :price => '125', :image => 'https://boardworld2.imgix.net/uploads/content/product/Real_In_The_Clouds_8.12_Skateboard_Deck_-_Chima.1675036997.jpg'
puts "#{ Deck.count } decks"

Truck.destroy_all
t1 =  Truck.create :name => 'INDEPENDENT FORGED TITANIUM SKATEBOARD TRUCKS - SILVER', :manufacturer => 'Inependent', :size => '144', :weight => '1kg', :price => '139', :image => 'https://www.basementskate.com.au/images/P/independent-169-forged-titanium-skateboard-trucks.png'
puts "#{ Truck.count } trucks"

Bearing.destroy_all
b1 = Bearing.create :name => 'BONES - REDS SKATEBOARD BEARINGS', :manufacturer => 'BONES', :material => 'ceramic', :price => '34', :image => 'https://cdn.shopify.com/s/files/1/0475/6461/9930/products/bones-reds-bearings_1440x.jpg' 
puts "#{ Bearing.count } bearings"

Wheel.destroy_all
w1 = Wheel.create :name => 'F4 EVAN SMITH VISIONS CONICAL', :manufacturer => 'Spitfire', :size => '55mm', :duro => '99a', :price => '99', :image => 'https://cdn.shopify.com/s/files/1/0475/6461/9930/products/spitfire-evan-smith-formula-4-wheels-mash-55mm_1440x.jpg'
puts "#{ Wheel.count } wheels"