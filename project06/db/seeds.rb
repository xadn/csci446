# This file DOES contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).


User.create(
		:username => "administrator",
		:email => "aniccola@mines.edu",
		:password => "password",
		:password_confirmation => "password",
		:admin => true,
		:first_name => "Yong",
		:last_name => "Bakos"
	)
	
User.create(
		:username => "member",
		:email => "ybakos@mines.edu",
		:password => "password",
		:password_confirmation => "password",
		:first_name => "Yong",
		:last_name => "Bakos"
	)
	
gaminator = User.create(
		:username => "The Gaiminator",
		:email => "hgaimur@mines.edu",
		:password => "password",
		:password_confirmation => "password",
		:first_name => "Yong",
		:last_name => "Bakos"
	)
		
fuzzy_rhino = User.create(
		:username => "FuzzyTailedRhino",
		:email => "frhino@mines.edu",
		:password => "password",
		:password_confirmation => "password",
		:first_name => "Yong",
		:last_name => "Bakos"
	)
	
mbates = User.create(
		:username => "master-debater",
		:email => "mbates@mines.edu",
		:password => "password",
		:password_confirmation => "password",
		:first_name => "Yong",
		:last_name => "Bakos"
	)

jstalin2 = User.create(
		:username => "jstalin2",
		:email => "jstalin@mines.edu",
		:password => "password",
		:password_confirmation => "password",
		:first_name => "Yong",
		:last_name => "Bakos"
	)
	
kji = User.create(
		:username => "KimJonginator",
		:email => "kil@mines.edu",
		:password => "password",
		:password_confirmation => "password",
		:first_name => "Yong",
		:last_name => "Bakos"
	)
		
2.times do
	Game.create(
			:user => fuzzy_rhino,
			:title => "Zompocalypse",
			:rating => 4
		)
	
	Game.create(
			:user => fuzzy_rhino,
			:title => "Goldfish Eating Contest",
			:rating => 2
		)
	
	Game.create(
			:user => fuzzy_rhino,
			:title => "Sharks with Lasers vs Zombies",
			:rating => 4
		)
	
	Game.create(
			:user => gaminator,
			:title => "Deathcon Match 4",
			:rating => 1
		)
		
	Game.create(
		:user => gaminator,
		:title => "Cooking Mama: Polish Food",
		:rating => 1
	)

	Game.create(
			:user => gaminator,
			:title => "Ben Goes to the Zoo",
			:rating => 3
		)
	
	Game.create(
			:user => gaminator,
			:title => "Ring Toss: Ultimate",
			:rating => 3
		)
	
	Game.create(
			:user => jstalin2,
			:title => "Learn to Draw: Naked People",
			:rating => 4
	)

	Game.create(
			:user => kji,
			:title => "Civilization IV",
			:rating => 0
		)
	
	Game.create(
			:user => jstalin2,
			:title => "Jelly Blocs",
			:rating => 4
		)
end
	

	
