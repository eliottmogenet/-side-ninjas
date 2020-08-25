# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'open-uri'

html = Language.new(name: "HTML5")
html_user = open("https://upload.wikimedia.org/wikipedia/commons/thumb/3/35/Font_Awesome_5_brands_html5.svg/1200px-Font_Awesome_5_brands_html5.svg.png")
html.photo.attach(io: html_user, filename: 'html_file.png')
html.save
