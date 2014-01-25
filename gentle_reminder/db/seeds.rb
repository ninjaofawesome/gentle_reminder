# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
    
    users = User.create([{name: 'Honey Boo Boo', email: "honeybooboo@boo.com", password: 'honeybooboo'}, {name: 'Sugar Plum Plum', email: "sugerplumplum@plum.com", password: 'sugarplumplumm'}])
    goals = Goal.create([{user_id: 1, goal_type_id: 1, charity_id: 1}, {user_id: 2, goal_type_id: 1, charity_id: 1}])
    goal_types = GoalType.create([{name: 'Commit more to my GitHub Projects'}, {name: 'Learn a Programming Language'}, {name: 'Get More Involved In My Local Tech Community'}, {name: 'Attend More Meetups'}])
    tools = Tool.create([{tool_description: 'GitHub'}, {tool_description: 'Meetup'}])
    charities = Charity.create([{name: 'Save the Bees'}, {name: 'Save the kids'}])
    #money = Money.create([{name: '$100'}, {name: '$250'}, {name: '$500'}])
    #commitment = Commitment.create([{name: '10 commits'}, {name: '25 commits'}, {name: '50 commits'}])
    #meetups = Meetup.create([{name: '3 meetups'}, {name: '5 meetups'}, {name: '10 meetups'}])
    #timeframe = Timeframe.create([{name: '1 month from today'}, {name: '3 months from today'}, {name: '6 months from today'}])


	# tool = Tool.find_by_name("Codecademy")
	# gt = GoalType.find(1)
	# gt.tools << tool
	# gt.save