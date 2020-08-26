
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'open-uri'

Participation.destroy_all
Project.destroy_all
User.destroy_all

# PICTURE_PROJECT = ["https://www.starwars-universe.com/images/encyclopedie/droides/vignettes_v6/2vr8_vignette.png", "https://www.starwars-universe.com/images/encyclopedie/droides/vignettes_v6/droide_arbitre_he2_vignette.png", "https://www.starwars-universe.com/images/encyclopedie/droides/vignettes_v6/droiderqvig.jpg",
# "https://www.starwars-universe.com/images/encyclopedie/droides/vignettes_v6/droide_dx11_vignette.png", "https://www.starwars-universe.com/images/encyclopedie/droides/vignettes_v6/t0b4_vignette.png", "https://www.starwars-universe.com/images/encyclopedie/droides/vignettes_v6/bf4f_vignette.png",
#  "https://www.starwars-universe.com/images/encyclopedie/droides/vignettes_v6/yg3_vignette.png",
# "https://www.starwars-universe.com/images/encyclopedie/droides/vignettes_v6/triple0_vig.png", "https://www.starwars-universe.com/images/encyclopedie/droides/vignettes_v6/o-66_vig.png", "https://www.starwars-universe.com/images/encyclopedie/droides/vignettes_v6/c3po_vignette.jpg",
# "https://www.starwars-universe.com/images/encyclopedie/droides/vignettes_v6/R3DO_avatar.png", "https://www.starwars-universe.com/images/encyclopedie/droides/vignettes_v6/zero_vignette.png",
# "https://www.starwars-universe.com/images/encyclopedie/droides/vignettes_v6/z9v86_vignette.png", "https://www.starwars-universe.com/images/encyclopedie/droides/vignettes_v6/tyth_vignette.png", "https://www.starwars-universe.com/images/encyclopedie/droides/vignettes_v6/e10_vignette.jpg",
# "https://i.pinimg.com/originals/fa/16/42/fa164207f82b769dec7719b3156355e3.jpg"]

PICTURE_USER = ["https://www.starwars-universe.com/images/encyclopedie/personnages/vignettes_v6/alecia_beck_vignette.jpg", "https://www.starwars-universe.com/images/encyclopedie/personnages/vignettes_v6/aleksin_vig.png", "https://www.starwars-universe.com/images/encyclopedie/personnages/vignettes_v6/Allia_avatar.png",
"https://www.starwars-universe.com/images/encyclopedie/personnages/vignettes_v6/althu_vignette.png", "https://www.starwars-universe.com/images/encyclopedie/personnages/vignettes_v6/alys_vignette.png", "https://www.starwars-universe.com/images/encyclopedie/personnages/vignettes_v6/Ansinvignette.png",
"https://www.starwars-universe.com/images/encyclopedie/personnages/vignettes_v6/Ansivvignette.png",
"https://www.starwars-universe.com/images/encyclopedie/personnages/vignettes_v6/arim_vignette.png", "https://www.starwars-universe.com/images/encyclopedie/personnages/vignettes_v6/aric_jorgan_vignette.png",
"https://www.starwars-universe.com/images/encyclopedie/personnages/vignettes_v6/thent_vignette.png",
"https://www.starwars-universe.com/images/encyclopedie/personnages/vignettes_v6/aza_gundo_vignette.png",
"https://www.starwars-universe.com/images/encyclopedie/personnages/vignettes_v6/abalen_vignette.png", "https://www.starwars-universe.com/images/encyclopedie/personnages/vignettes_v6/adison_vignette.png",
"https://www.starwars-universe.com/images/encyclopedie/personnages/vignettes_v6/azzim_anjiliac_v6.jpg", "https://www.starwars-universe.com/images/encyclopedie/personnages/vignettes_v6/abasi_vesco_vignette.png", "https://www.starwars-universe.com/images/encyclopedie/personnages/vignettes_v6/abbeth_vignette.png",
"https://www.starwars-universe.com/images/encyclopedie/personnages/vignettes_v6/achitan_vignette.png", "https://www.starwars-universe.com/images/encyclopedie/personnages/vignettes_v6/adame_vignette.jpg", "https://www.starwars-universe.com/images/encyclopedie/personnages/vignettes_v6/Alcida_vignette.png",
"https://www.starwars-universe.com/images/encyclopedie/personnages/vignettes_v6/alec_efran_vignette.png", "https://www.starwars-universe.com/images/encyclopedie/personnages/vignettes_v6/alis_saro_bakvalen_vignette.png", "https://www.starwars-universe.com/images/encyclopedie/personnages/vignettes_v6/alison_dawn_vignette.png",
"https://www.starwars-universe.com/images/encyclopedie/personnages/vignettes_v6/Allium_avatar.png"]

BOOLEAN_PARTICIPATION = ["true", "nil", "false"]


require 'faker'

puts "Creating 50 users, projects and participations"

20.times do

  user = User.new(first_name: Faker::Name.unique.first_name, last_name: Faker::Name.unique.name, batch_number: rand(300...442), email: Faker::Internet.unique.email, password: ('a'..'z').to_a.sample(8).join, city: Faker::Name.unique.name, pays: Faker::Address.country, bootcamp_year: rand(2010...2021), github_username: Faker::Internet.domain_name, linkedin_username: Faker::Name.unique.name, slack_username: Faker::Name.unique.name)
  user_url = PICTURE_USER.sample
  file_user = open(user_url)
  user.photo.attach(io: file_user, filename: 'photo_user.png')
  user.save

  (1..5).to_a.sample.times do

    project = Project.new(title: Faker::Name.unique.first_name, description: Faker::Lorem.paragraphs, github_repository: Faker::Name.unique.name, trello_link: Faker::Name.unique.name, start_date: Faker::Date.between(from: '2012-09-23', to: '2020-09-25'), website_link: Faker::Internet.domain_name, tag: Faker::Name.unique.name)
    project.user = user
    project.save

  end

  user_two = User.new(first_name: Faker::Name.unique.first_name, last_name:Faker::Name.unique.name, batch_number: rand(300...442), email: Faker::Internet.unique.email, password: ('a'..'z').to_a.sample(8).join, city: Faker::Name.unique.name, pays: Faker::Address.country, bootcamp_year: rand(2010...2021), github_username: Faker::Internet.domain_name, linkedin_username: Faker::Name.unique.name, slack_username: Faker::Name.unique.name)
  user_two_url = PICTURE_USER.sample
  file_user_two = open(user_two_url)
  user_two.photo.attach(io: file_user_two, filename: 'photo_user_two.png')
  user_two.save

  (1..5).to_a.sample.times do

    project_two = Project.new(title: Faker::Name.unique.first_name, description: Faker::Lorem.paragraphs, github_repository: Faker::Name.unique.name, trello_link: Faker::Name.unique.name, start_date: Faker::Date.between(from: '2012-09-23', to: '2020-09-25'), website_link: Faker::Internet.domain_name, tag: Faker::Name.unique.name)
    project_two.user = user_two
    project_two.save

    # ALL_PROJECT = Project.all.sample

    participation = Participation.new(accepted: true, motivation: Faker::Lorem.paragraphs, work_time: Faker::Name.unique.name, admin: false)
    participation.user = user
    participation.project = Project.where(user: user_two).sample
    # participation.project = project_two
    participation.save
  end

end

Language.destroy_all

html = Language.new(name: "HTML/CSS")
html_user = URI.open("https://upload.wikimedia.org/wikipedia/commons/thumb/3/35/Font_Awesome_5_brands_html5.svg/1200px-Font_Awesome_5_brands_html5.svg.png")
html.photo.attach(io: html_user, filename: 'html_file.png')
html.save!

php = Language.new(name: "PHP")
php_user = URI.open("https://upload.wikimedia.org/wikipedia/commons/thumb/0/07/Font_Awesome_5_brands_php.svg/1279px-Font_Awesome_5_brands_php.svg.png")
php.photo.attach(io: php_user, filename: 'php_file.png')
php.save!

c = Language.new(name: "C++")
c_user = URI.open("https://img.favpng.com/8/18/6/c-programming-language-logo-computer-programming-png-favpng-mpuXd11Ye3fT7N8FTMjb7FHQy.jpg")
c.photo.attach(io: c_user, filename: 'c_file.png')
c.save!

js = Language.new(name: "JavaScript")
js_user = URI.open("https://img.favpng.com/2/12/22/javascript-icon-png-favpng-ruDBDhxzVxWHgXXtH2Hi1XzJf.jpg")
js.photo.attach(io: js_user, filename: 'js_file.png')
js.save!

ruby = Language.new(name: "Ruby")
ruby_user = URI.open("https://img.favpng.com/4/13/16/ruby-on-rails-logo-programming-language-rubygems-png-favpng-WhQbCrZxcK4rVV4XP3x5JFYTF.jpg")
ruby.photo.attach(io: ruby_user, filename: 'ruby_file.png')
ruby.save!

sql = Language.new(name: "SQL")
sql_user = URI.open("https://e7.pngegg.com/pngimages/750/507/png-clipart-database-server-computer-icons-microsoft-sql-server-database-miscellaneous-angle.png")
sql.photo.attach(io: sql_user, filename: 'sql_file.png')
sql.save!

python = Language.new(name: "Python")
python_user = URI.open("https://img2.freepng.fr/20180320/fkq/kisspng-angle-text-symbol-brand-other-python-5ab0c09b32b4d1.7494578715215330832077.jpg")
python.photo.attach(io: python_user, filename: 'python_file.png')
python.save!

react = Language.new(name: "React")
react_user = URI.open("https://upload.wikimedia.org/wikipedia/commons/thumb/a/a7/React-icon.svg/640px-React-icon.svg.png")
react.photo.attach(io: react_user, filename: 'react_file.png')
react.save!


swift = Language.new(name: "Swift")
swift_user = URI.open("https://img.favpng.com/9/1/24/swift-apple-programming-language-macos-png-favpng-zpZe4qRiZ0qjPeekRDddixMp8.jpg")
swift.photo.attach(io: swift_user, filename: 'swift_file.png')
swift.save!

angular = Language.new(name: "Angular")
angular_user = URI.open("https://upload.wikimedia.org/wikipedia/commons/thumb/a/ac/Font_Awesome_5_brands_angular.svg/1200px-Font_Awesome_5_brands_angular.svg.png")
angular.photo.attach(io: angular_user, filename: 'angular_file.png')
angular.save!

ProjectLanguage.destroy_all

html_project = ProjectLanguage.new(language_id: html.id)
html_project.project = Project.first
html_project.save!

ruby_project = ProjectLanguage.new(language_id: ruby.id)
ruby_project.project = Project.second
ruby_project.save!
