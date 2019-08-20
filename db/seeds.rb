User.destroy_all
puts "creating users"
u1 = User.create :email => 'victor@ga.co', :name => 'Victor', :password => '123', :admin => true
u2 = User.create :email => 'meo@ga.co', :name => 'Meo', :password => '123', :admin => true
u3 = User.create :email => 'people@ga.co', :name => 'Someone', :password => '123', :admin => false

Dripple.destroy_all
puts "creating dripples"
d1 = Dripple.create :title => "Form a Band", :content => "I play guitar and I am looking for a band, anyone want to JAM? check out my demo", :longitude => "151.2012775", :latitude => "-33.9198675"
d2 = Dripple.create :title => "Food for thought", :content => "Craving hotpot...", :longitude => "151.2014275", :latitude => "-33.8844644"
d3 = Dripple.create :title => "Rock concert", :content => "Really want a rockNroll experience", :longitude => "151.2012775", :latitude => "-33.9198675"
d4 = Dripple.create :title => "Learn a new Language", :content => "any idea where to start?", :longitude => "151.2012775", :latitude => "-33.9198675"
d5 = Dripple.create :title => "Create a website", :content => "Wanting to create web site using React.", :longitude => "151.2012125", :latitude => "-33.9198333"

Category.destroy_all
puts "creating categories"
c1 = Category.create :name => "Music"
c2 = Category.create :name => "Food and Wine"
c3 = Category.create :name => "Sport"
c4 = Category.create :name => "Learning and Skills"
c5 = Category.create :name => "Events"
c6 = Category.create :name => "Travel and Leisure"
c7 = Category.create :name => "Books"
c8 = Category.create :name => "Random"

Tag.destroy_all
puts "creating tags"
t1 = Tag.create :tag_name => "#RocknRoll"
t2 = Tag.create :tag_name => "#NewSkill"
t3 = Tag.create :tag_name => "#Whattoeat"
t4 = Tag.create :tag_name => "#ReactRules"
t5 = Tag.create :tag_name => "#Band"
t6 = Tag.create :tag_name => "#Hotpot"
t7 = Tag.create :tag_name => "#YummyFood"

puts "associations"
# dripples and users
u1.dripples << d1 << d2
u2.dripples << d3 << d4
u3.dripples << d5

# dripples and categories
c1.dripples << d1 << d3 
c2.dripples << d2 
c4.dripples << d4 << d5

# dripples and tags
d1.tags << t1 << t2 << t5
d2.tags << t6 << t7 << t3
d3.tags << t1 << t5
d4.tags << t2
d5.tags << t2 << t4