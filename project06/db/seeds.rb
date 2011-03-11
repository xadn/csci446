# This file DOES contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).

User.create(
		:username => "administrator",
		:email => "admin@games.com",
		:password => "password",
		:password_confirmation => "password",
		:first_name => "fist",
		:last_name => "last",
		:admin => true
	)
	
member = User.create(
		:username => "member",
		:email => "member@games.com",
		:password => "password",
		:password_confirmation => "password",
		:first_name => "fist",
		:last_name => "last"
	)
	
gaminator = User.create(
		:username => "The Gaiminator",
		:email => "hgaimur@mines.edu",
		:password => "password",
		:password_confirmation => "password",
		:first_name => "fist",
		:last_name => "last"
	)
		
fuzzy_rhino = User.create(
		:username => "FuzzyTailedRhino",
		:email => "frhino@mines.edu",
		:password => "password",
		:password_confirmation => "password",
		:first_name => "fist",
		:last_name => "last"
	)
	
mbates = User.create(
		:username => "master-debater",
		:email => "mbates@mines.edu",
		:password => "password",
		:password_confirmation => "password",
		:first_name => "fist",
		:last_name => "last"
	)

jstalin = User.create(
		:username => "jstalin",
		:email => "jstalin@mines.edu",
		:password => "password",
		:password_confirmation => "password",
		:first_name => "fist",
		:last_name => "last"
	)
	
kji = User.create(
		:username => "KimJonginator",
		:email => "kil@mines.edu",
		:password => "password",
		:password_confirmation => "password",
		:first_name => "fist",
		:last_name => "last"
	)
		
3.times do
	Game.create(
			:user => fuzzy_rhino,
			:title => "Zompocalypse",
			:rating => 3
		)
	
	Game.create(
			:user => member,
			:title => "Goldfish Eating Contest",
			:rating => 2
		)
	
	Game.create(
			:user => fuzzy_rhino,
			:title => "Sharks with Lasers vs Zombies",
			:rating => 3
		)
	
	Game.create(
			:user => member,
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
			:rating => 2
		)
	
	Game.create(
			:user => gaminator,
			:title => "Ring Toss: Ultimate",
			:rating => 0
		)
	
	Game.create(
			:user => jstalin,
			:title => "Learn to Draw: Naked People",
			:rating => 3
	)

	Game.create(
			:user => kji,
			:title => "Civilization IV",
			:rating => 0
		)
	
	Game.create(
			:user => jstalin,
			:title => "Jelly Blocs",
			:rating => 2
		)
end
	

	
