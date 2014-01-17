# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
    
    users = User.create([{name: 'Honey Boo Boo', email: "honeybooboo@boo.com", password: 'honeybooboo'}, {name: 'Sugar Plum Plum', email: "sugerplumplum@plum.com", password: 'sugarplumplumm'}, {name: 'Salty Pretzel Pretzel', email: "pretzelpretzel@pretzel.com", password: 'pretzelpretzelpretzel'}])
    goals = Goal.create([{goal_type: 'programming_languages', user_id: 1}])
    programming_languages = ProgrammingLanguage.create([{name: 'Ruby'}, {name: 'Python'}, {name: 'HTML/CSS'}])
    tools = Tool.create([{tool_description: 'Code Academy'}, {tool_description: 'Tree House'}])
    charities = Charity.create([{name: 'Save the Bees'}, {name: 'Save the kids'}])


# Add Data 