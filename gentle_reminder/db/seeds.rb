# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
    
    users = User.create([{name: 'Honey Boo Boo', email: "honeybooboo@boo.com", password: 'honeybooboo'}, {name: 'Sugar Plum Plum', email: "sugerplumplum@plum.com", password: 'sugarplumplumm'}])
    goals = Goal.create([{user_id: 1, goal_type_id: 1, charity_id: 1}, {user_id: 2, goal_type_id: 1, charity_id: 1}])
    goal_types = GoalType.create([{name: 'Ruby'}, {name: 'Python'}])
    tools = Tool.create([{tool_description: 'Code Academy'}, {tool_description: 'Tree House'}])
    charities = Charity.create([{name: 'Save the Bees'}, {name: 'Save the kids'}])
    
	# tool = Tool.find_by_name("Codecademy")
	# gt = GoalType.find(1)
	# gt.tools << tool
	# gt.save