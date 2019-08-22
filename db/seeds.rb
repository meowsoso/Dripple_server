User.destroy_all
puts "creating users"
u1 = User.create :email => 'victor@ga.co', :name => 'Victor', :password => '123', :admin => true, :profile_photo => "https://ca.slack-edge.com/T0351JZQ0-UJV769H0V-ec1d23fc0507-512", :about => "I am a super awesome programming genius. Never forget that. Never. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", :age => 23, :birthday => Date.parse('27-02-1995'), :hobbies => "shredding noobs when they write inferior code and being a 1337 h4x0r (said elite hacker you noob). Shredding noobs at board games. Basically just shredding noobs at everything."
u2 = User.create :email => 'meo@ga.co', :name => 'Meo', :password => '123', :admin => true, :profile_photo => "https://ca.slack-edge.com/T0351JZQ0-UJY5XKB0T-0d53b363d065-512", :about => "I am defintely a better programmer than Victor. Don't tell him that though. Shhh... Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", :age => 31, :birthday => Date.parse('01-11-1986'), :hobbies => "Dribbling with dribble ideas on dribble because I like dribbling dribbles when i'm on dribble."
u3 = User.create :email => 'people@ga.co', :name => 'Someone', :password => '123', :admin => false, :profile_photo => "http://wallpapersexpert.com/data/out/13/3379696-happy-wallpapers.jpg"
u4 = User.create :email => 'graham@ga.co', :name => 'Robot Graham', :password => '123', :admin => true, :profile_photo => "https://ca.slack-edge.com/T0351JZQ0-UJY5XKB0T-0d53b363d065-512", :about => "I am defintely a better programmer than Victor and Meo. Don't tell them that though. Shhh... Plus i love Joel.. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", :age => 26, :birthday => Date.parse('01-11-1986'), :hobbies => "Dribbling with dribble ideas on dribble because I like dribbling dribbles when i'm on dribble."


Dripple.destroy_all
puts "creating dripples"
d1 = Dripple.create :title => "Form a Band", :content => "I play guitar and I am looking for a band, anyone want to JAM? check out my demo", :longitude => "151.2012775", :latitude => "-33.9198675"
d2 = Dripple.create :title => "Food for thought", :content => "Craving hotpot...", :longitude => "151.2014275", :latitude => "-33.8844644"
d3 = Dripple.create :title => "Rock concert", :content => "Really want a rockNroll experience", :longitude => "151.2012775", :latitude => "-33.9198675"
d4 = Dripple.create :title => "Learn a new Language", :content => "any idea where to start?", :longitude => "151.2012775", :latitude => "-33.9198675"
d5 = Dripple.create :title => "Create a website", :content => "Wanting to create web site using React.", :longitude => "150.201652", :latitude => "-33.2898333"
d6 = Dripple.create :title => "Create a website", :content => "Wanting to create web site using React.", :longitude => "151.6616125", :latitude => "-34.1198333"
d7 = Dripple.create :title => "Create a website", :content => "Wanting to create web site using React.", :longitude => "152.2022125", :latitude => "-32.9198333"
d8 = Dripple.create :title => "Create a website", :content => "Wanting to create web site using React.", :longitude => "151.2512125", :latitude => "-32.0098333"
d9 = Dripple.create :title => "Create a website", :content => "Wanting to create web site using React.", :longitude => "151.2912125", :latitude => "-31.5398333"
d10 = Dripple.create :title => "Create a website", :content => "Wanting to create web site using React.", :longitude => "151.2612125", :latitude => "-33.9198333"
d11 = Dripple.create :title => "Random Ideas", :content => "Wanting to create web site using React.", :longitude => "153.2612125", :latitude => "-32.1198333"
d12 = Dripple.create :title => "Random Ideas", :content => "Wanting to create web site using React.", :longitude => "150.2612125", :latitude => "-32.1198333"
d13 = Dripple.create :title => "Random Ideas", :content => "Wanting to create web site using React.", :longitude => "152.2612125", :latitude => "-31.1198333"
d14 = Dripple.create :title => "Random Ideas", :content => "Wanting to create web site using React.", :longitude => "151.9612125", :latitude => "-36.1198333"
d15 = Dripple.create :title => "Random Ideas", :content => "Wanting to create web site using React.", :longitude => "154.2612125", :latitude => "-32.1198333"
d16 = Dripple.create :title => "Random Ideas", :content => "Wanting to create web site using React.", :longitude => "153.2612125", :latitude => "-31.2198333"
d17 = Dripple.create :title => "Random Ideas", :content => "Wanting to create web site using React.", :longitude => "150.2612125", :latitude => "-33.8198333"
d18 = Dripple.create :title => "Random Ideas", :content => "Wanting to create web site using React.", :longitude => "149.2612125", :latitude => "-33.6198333"
d19 = Dripple.create :title => "Random Ideas", :content => "Wanting to create web site using React.", :longitude => "150.2612125", :latitude => "-32.1198333"
d20 = Dripple.create :title => "Random Ideas", :content => "Wanting to create web site using React.", :longitude => "150.2612125", :latitude => "-34.1198333"


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

puts "remove messages and conversations"
Message.destroy_all
Conversation.destroy_all

puts "associations"
# dripples and users
u1.dripples << d1 << d2 << d6 << d11
u2.dripples << d3 << d4 << d10 << d12
u3.dripples << d5 << d7 << d8 << d9 << d13 << d14 << d15 << d16 << d17 << d18 << d19 << d20

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
