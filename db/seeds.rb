# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


o = Manager.create({name: 'Yair Levinson', phone_number: '415-471-6289', email: 'yair@getlocbox.com'})
u = User.create({name: 'Ken Hart', phone_number: '724-986-0244', email: 'jkhart@getlocbox.com'})
u.update_attribute(:user_id, o.id)