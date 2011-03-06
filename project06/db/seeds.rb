# This file DOES contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).


User.create(
		:username => "administrator",
		:email => "aniccola@mines.edu",
		:password => "password",
		:password_confirmation => "password",
		:admin => true
	)
	
User.create(
		:username => "member",
		:email => "ybakos@mines.edu",
		:password => "password",
		:password_confirmation => "password"
	)
	
fuzzy_rhino = User.create(
		:username => "FuzzyTailedRhino",
		:email => "frhino@mines.edu",
		:password => "password",
		:password_confirmation => "password"
	)
	
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