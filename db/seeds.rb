# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'open-uri'
Language.destroy_all

html = Language.new(name: "HTML/CSS")
html_user = URI.open("https://upload.wikimedia.org/wikipedia/commons/thumb/3/35/Font_Awesome_5_brands_html5.svg/1200px-Font_Awesome_5_brands_html5.svg.png")
html.photo.attach(io: html_user, filename: 'html_file.png')
html.save!
puts "html saved"

php = Language.new(name: "PHP")
php_user = URI.open("https://upload.wikimedia.org/wikipedia/commons/thumb/0/07/Font_Awesome_5_brands_php.svg/1279px-Font_Awesome_5_brands_php.svg.png")
php.photo.attach(io: php_user, filename: 'php_file.png')
php.save!
puts "php saved"

c = Language.new(name: "C++")
c_user = URI.open("https://img.favpng.com/8/18/6/c-programming-language-logo-computer-programming-png-favpng-mpuXd11Ye3fT7N8FTMjb7FHQy.jpg")
c.photo.attach(io: c_user, filename: 'c_file.png')
c.save!
puts "c++ saved"

js = Language.new(name: "JavaScript")
js_user = URI.open("https://img.favpng.com/2/12/22/javascript-icon-png-favpng-ruDBDhxzVxWHgXXtH2Hi1XzJf.jpg")
js.photo.attach(io: js_user, filename: 'js_file.png')
js.save!
puts "jsl saved"

ruby = Language.new(name: "Ruby")
ruby_user = URI.open("https://img.favpng.com/4/13/16/ruby-on-rails-logo-programming-language-rubygems-png-favpng-WhQbCrZxcK4rVV4XP3x5JFYTF.jpg")
ruby.photo.attach(io: ruby_user, filename: 'ruby_file.png')
ruby.save!
puts "ruby saved"

# sql = Language.new(name: "SQL")
# sql_user = URI.open("https://e7.pngegg.com/pngimages/300/160/png-clipart-computer-icons-font-awesome-user-font-logo-database-angle-software-development-thumbnail.png")
# sql.photo.attach(io: sql_user, filename: 'sql_file.png')
# sql.save!
# puts "sql saved"

python = Language.new(name: "Python")
python_user = URI.open("https://img2.freepng.fr/20180320/fkq/kisspng-angle-text-symbol-brand-other-python-5ab0c09b32b4d1.7494578715215330832077.jpg")
python.photo.attach(io: python_user, filename: 'python_file.png')
python.save!
puts "python saved"

react = Language.new(name: "React")
react_user = URI.open("https://upload.wikimedia.org/wikipedia/commons/thumb/a/a7/React-icon.svg/640px-React-icon.svg.png")
react.photo.attach(io: react_user, filename: 'react_file.png')
react.save!
puts "react saved"

# java = Language.new(name: "Java")
# java_user = URI.open("https://user-images.githubusercontent.com/20663500/38591695-8e84298c-3d6a-11e8-8f84-71113c79c336.png")
# java.photo.attach(io: java_user, filename: 'java_file.png')
# java.save!
# puts "java saved"

swift = Language.new(name: "Swift")
swift_user = URI.open("https://img.favpng.com/9/1/24/swift-apple-programming-language-macos-png-favpng-zpZe4qRiZ0qjPeekRDddixMp8.jpg")
swift.photo.attach(io: swift_user, filename: 'swift_file.png')
swift.save!
puts "swift saved"

angular = Language.new(name: "Angular")
angular_user = URI.open("https://upload.wikimedia.org/wikipedia/commons/thumb/a/ac/Font_Awesome_5_brands_angular.svg/1200px-Font_Awesome_5_brands_angular.svg.png")
angular.photo.attach(io: angular_user, filename: 'angular_file.png')
angular.save!
puts "angular saved"



