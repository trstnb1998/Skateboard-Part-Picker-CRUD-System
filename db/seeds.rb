User.destroy_all
u1 = User.create :email => 'tris@gmail.com', :password => 'chicken'
u2 = User.create :email => 'hi@ga.co', :password => 'chicken'
puts "#{ User.count } users"

Skateboard.destroy_all
s1 = Skateboard.create :id => 1,:name => 'Street Board', :deck_id => 1, :truck_id => 1, :bearing_id => 1, :wheel_id => 1, :price => '397'
puts "#{ Skateboard.count } skateboards"

Deck.destroy_all
d1 = Deck.create :id => 1, :name => 'REAL IN THE CLOUDS SKATEBOARD DECK - CHIMA', :manufacturer => 'REAL Skateboards', :size => '8.25', :price => '125', :image => 'https://cdn.shopify.com/s/files/1/0530/7318/2900/products/RealChimaIntheCloudsSkateboardDeck_8.12.jpg'
d2 = Deck.create :id => 2, :name => 'FA Spider Photo Skateboard Deck', :manufacturer => 'FA Skateboards', :size => '8.25', :price => '149', :image => 'https://cdn.shopify.com/s/files/1/0530/7318/2900/products/FuckingAwesomeSpiderPhotoSkateboardDeck_19bb9be4-69b0-48a3-ad54-a84e12b3b38f.jpg'
d3 = Deck.create :id => 3, :name => 'Hockey Aria Skateboard Deck', :manufacturer => 'Hockey Skateboards', :size => '8.5', :price => '149', :image => 'https://cdn.shopify.com/s/files/1/0530/7318/2900/products/HockeyAriaSkateboardDeck_8.25.jpg'
d4 = Deck.create :id => 4, :name => 'Palace Duck & Dog Skateboard Deck', :manufacturer => 'Palace', :size => '8.15', :price => '130', :image => 'https://cdn.shopify.com/s/files/1/0530/7318/2900/products/PalaceDuck_DogSkateboardDeck_8.jpg?'
puts "#{ Deck.count } decks"

Truck.destroy_all
t1 =  Truck.create :id => 1, :name => 'INDEPENDENT FORGED TITANIUM SKATEBOARD TRUCKS - SILVER', :manufacturer => 'Inpendent', :size => '144', :weight => '1kg', :price => '139', :image => 'https://cdn.shopify.com/s/files/1/0530/7318/2900/products/Stage11ForgedHollowSilverStandardIndependent.jpg'
t2 =  Truck.create :id => 2, :name => 'Ace Hollow AF1 Raw Polished Skateboard Trucks', :manufacturer => 'Ace', :size => '8.5', :weight => '1.1kg', :price => '100', :image => 'https://cdn.shopify.com/s/files/1/0530/7318/2900/products/ace-trucks-af1-silver-22-1_0537c215-0a02-4786-b517-8dec6cc1081b.png'
t3 =  Truck.create :id => 3, :name => 'Independent Pro Mason Silva Black 149 Skateboard Trucks', :manufacturer => 'Inpendent', :size => '8.25', :weight => '1.2kg', :price => '120', :image => 'https://cdn.shopify.com/s/files/1/0530/7318/2900/products/IndependentProMasonSilvaBlackSkateboardTrucks.jpg'
t4 =  Truck.create :id => 4, :name => 'Independent Reynolds Block Mid Silver 159 Skateboard Trucks', :manufacturer => 'Inpendent', :size => '4.15', :weight => '1kg', :price => '145', :image => 'https://cdn.shopify.com/s/files/1/0530/7318/2900/products/IndependentReynoldsBlockHollowSilverSkateboardTrucks01_d1673b96-eca9-4c1f-bd68-38a3be2d91cd.jpg'
puts "#{ Truck.count } trucks"

Bearing.destroy_all
b1 = Bearing.create :id => 1, :name => 'BONES - REDS SKATEBOARD BEARINGS', :manufacturer => 'BONES', :material => 'ceramic', :price => '34', :image => 'https://cdn.shopify.com/s/files/1/0475/6461/9930/products/bones-reds-bearings_1440x.jpg' 
b2 = Bearing.create :id => 2, :name => 'Bones Bearings Swiss Skateboard Bearings', :manufacturer => 'BONES', :material => 'chrome', :price => '34', :image => 'https://cdn.shopify.com/s/files/1/0530/7318/2900/products/BB-SWI8.jpg' 
b3 = Bearing.create :id => 3, :name => 'Sunday Chima Ferguson Pro Bearing', :manufacturer => 'Sunday', :material => 'ceramic', :price => '40', :image => 'https://cdn.shopify.com/s/files/1/0530/7318/2900/products/sunday-chima-ferguson.jpg' 
b4 = Bearing.create :id => 4, :name => 'Sunday Dane Burman Pro Bearing', :manufacturer => 'Sunday', :material => 'chrome', :price => '34', :image => 'https://cdn.shopify.com/s/files/1/0530/7318/2900/products/sunday-dane-burman_1296x.jpg' 
puts "#{ Bearing.count } bearings"

Wheel.destroy_all
w1 = Wheel.create :id => 1, :name => 'Spitfire F4 Lil Smokies Swirl Skateboard Wheels', :manufacturer => 'Spitfire', :size => '51mm', :duro => '99D', :price => '90', :image => 'https://cdn.shopify.com/s/files/1/0530/7318/2900/products/SpitfireF4LilSmokiesSwirl99D51mmSkateboardWheel.jpg'
w2 = Wheel.create :id => 2, :name => 'Spitfire F4 Conical Full Skateboard Wheels', :manufacturer => 'Spitfire', :size => '56mm', :duro => '101D', :price => '99', :image => 'https://cdn.shopify.com/s/files/1/0530/7318/2900/products/spitfire-wheels-conicalfull-101a-53mm-red-01_e309f08b-36b8-4bf1-96ef-d05206bea941.jpg'
w3 = Wheel.create :id => 3, :name => 'Bones SPF Armanto Sprtiz Skateboard Wheels', :manufacturer => 'Spitfire', :size => '58mm', :duro => '84B', :price => '70', :image => 'https://cdn.shopify.com/s/files/1/0530/7318/2900/products/BonesSTFArmantoSprtiz84B58mmSkateboardWheels.jpg'
w4 = Wheel.create :id => 4, :name => 'Diego Najera Skateboard Wheels', :manufacturer => 'Spitfire', :size => '52mm', :duro => '101A', :price => '55', :image => 'https://cdn.shopify.com/s/files/1/0530/7318/2900/products/wayward-wheels-diegonajera-101d-52mm-01.jpg'
puts "#{ Wheel.count } wheels"