require_relative "feelings.rb"
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


#Instantiate and persist instances of feelings 
FEELINGS.each{|key, val| 
    val.each {|key2, val2|
        val2[:words].map {|word|
        Feeling.create(name: word, main_word: key2, need_condition: key)
        }
    }
}
user_1 = User.create(full_name: "Joshua Mclean", user_name: "jmclean", password: "secret")
water = Category.create(name: "Water", detailed: true)
sleep = Category.create(name: "Sleep", detailed: true)
energy = Category.create(name: "Energy", detailed: false)
productivity = Category.create(name: "Productivity", detailed: false)
motivation = Category.create(name: "Motivation", detailed: false)
stress = Category.create(name: "Stress", detailed: false)


user_rating1 = UserRating.create(rating: 5, category_id: 1, user_id: 1)
user_rating2 = UserRating.create(rating: 7, category_id: 2, user_id: 1)
user_rating3 = UserRating.create(rating: 4, category_id: 3, user_id: 1)
user_rating4 = UserRating.create(rating: 6, category_id: 4, user_id: 1)
user_rating5 = UserRating.create(rating: 8, category_id: 5 , user_id: 1)
user_rating6 = UserRating.create(rating: 9, category_id: 6, user_id: 1)

feeling1 = UserFeeling.create(user_id: 1, feeling_id: 1)
feeling2 = UserFeeling.create(user_id: 1, feeling_id: 3)
feeling3 = UserFeeling.create(user_id: 1, feeling_id: 139)
feeling4 = UserFeeling.create(user_id: 1, feeling_id: 200)

journal_entry1 = JournalEntry.create(user_id: 1, title: "My First Entry", content: "Today I worked on backend and frontend")
list_item1 = ListItem.create(user_id: 1, content: "Walk Dog")
list_item2 = ListItem.create(user_id: 1, content: "Brush Teeth")
list_item3 = ListItem.create(user_id: 1, content: "Get this on Heroku")
list_item4 = ListItem.create(user_id: 1, content: "Practice Dance")



puts "done!"