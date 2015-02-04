# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


grrm = Author.create name: "George R. R. Martin"
pressfield = Author.create name: "Steven Pressfield"
brothess = Author.create name: "Steven Brothess"

got = Book.new
got.title = "Game of Thrones"
got.author = grrm
got.save

Book.create title: "Gates of Fire", author: pressfield
Book.create title: "Name of the Wind", author: brothess
Book.create title: "Clash of Kings", author_id: grrm.id
Book.create title: "Feast of Crows", author: grrm
