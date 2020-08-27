
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
require 'open-uri'


# PICTURE_PROJECT = ["https://www.starwars-universe.com/images/encyclopedie/droides/vignettes_v6/2vr8_vignette.png", "https://www.starwars-universe.com/images/encyclopedie/droides/vignettes_v6/droide_arbitre_he2_vignette.png", "https://www.starwars-universe.com/images/encyclopedie/droides/vignettes_v6/droiderqvig.jpg",
# "https://www.starwars-universe.com/images/encyclopedie/droides/vignettes_v6/droide_dx11_vignette.png", "https://www.starwars-universe.com/images/encyclopedie/droides/vignettes_v6/t0b4_vignette.png", "https://www.starwars-universe.com/images/encyclopedie/droides/vignettes_v6/bf4f_vignette.png",
#  "https://www.starwars-universe.com/images/encyclopedie/droides/vignettes_v6/yg3_vignette.png",
# "https://www.starwars-universe.com/images/encyclopedie/droides/vignettes_v6/triple0_vig.png", "https://www.starwars-universe.com/images/encyclopedie/droides/vignettes_v6/o-66_vig.png", "https://www.starwars-universe.com/images/encyclopedie/droides/vignettes_v6/c3po_vignette.jpg",
# "https://www.starwars-universe.com/images/encyclopedie/droides/vignettes_v6/R3DO_avatar.png", "https://www.starwars-universe.com/images/encyclopedie/droides/vignettes_v6/zero_vignette.png",
# "https://www.starwars-universe.com/images/encyclopedie/droides/vignettes_v6/z9v86_vignette.png", "https://www.starwars-universe.com/images/encyclopedie/droides/vignettes_v6/tyth_vignette.png", "https://www.starwars-universe.com/images/encyclopedie/droides/vignettes_v6/e10_vignette.jpg",
# "https://i.pinimg.com/originals/fa/16/42/fa164207f82b769dec7719b3156355e3.jpg"]
ProjectLanguage.destroy_all
Language.destroy_all
Participation.destroy_all
Project.destroy_all
User.destroy_all

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


puts "Creating 11 languages"

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

puts "Finish !"

LANGUAGES = [html, php, c, js, ruby, sql, python, react, swift, angular]


BOOLEAN_PARTICIPATION = ["true", "nil", "false"]

country_city = {
  "France" => ["Paris", "Rennes", "Nantes"],
  "England" => ["London"],
  "Spain" => ["Barcelona", "Madrid"],
  "Italie" => ["Turin", "Roma"],
  "USA" => ["New York", "Miami"]
}


puts "Creating your users/projects/..."

1.times do

  first_name_one = Faker::Name.unique.first_name
  last_name_one = Faker::Name.unique.last_name

  country = country_city.keys.sample
  city = country_city[country].sample

  user_first = User.new(first_name: first_name_one, last_name: last_name_one, batch_number: rand(300...442), email: "#{first_name_one}.#{last_name_one}@gmail.com", password: "#{first_name_one}-#{last_name_one}", city: city, pays: country, bootcamp_year: rand(2010...2021), github_username: "#{first_name_one}-github", linkedin_username: "#{first_name_one}-linkedin", slack_username: "#{first_name_one}-slack")
  user_first_url = PICTURE_USER.sample
  file_user_first = open(user_first_url)
  user_first.photo.attach(io: file_user_first, filename: 'photo_user.png')
  user_first.save!

  project_title_one = Faker::Commerce.unique.product_name

  project_user_first = Project.new(title: project_title_one, description: Faker::Lorem.paragraph(sentence_count: 5), github_repository: "https://#{project_title_one}.github-repository.com", trello_link: "https://#{project_title_one}-trello.fr", start_date: Faker::Date.between(from: '2012-09-23', to: '2020-09-25'), website_link: "https://#{project_title_one}-heroku-app.com", tag_line: Faker::Lorem.paragraph(sentence_count: 1), tag: Faker::Commerce.department(max: 1))
  project_user_first.user = user_first
  project_user_first.save!

  puts "Creating some project languages"

  LANGUAGES.sample(rand(2..4)).each do |language|

    the_project_language = ProjectLanguage.new()
    the_project_language.language = language
    the_project_language.project = project_user_first
    the_project_language.save!

  end

  puts "Finish !"

  (1..4).to_a.sample.times do

    first_name_two = Faker::Name.unique.first_name
    last_name_two = Faker::Name.unique.last_name

    country_two = country_city.keys.sample
    city_two = country_city[country_two].sample

    user_second = User.new(first_name: first_name_two, last_name: last_name_two, batch_number: rand(300...442), email: "#{first_name_two}.#{last_name_two}@gmail.com", password: "#{first_name_two}-#{last_name_two}", city: city_two, pays: country_two, bootcamp_year: rand(2010...2021), github_username: "#{first_name_two}-github", linkedin_username: "#{first_name_two}-linkedin", slack_username: "#{first_name_two}-slack")
    user_second_url = PICTURE_USER.sample
    file_user_second = open(user_second_url)
    user_second.photo.attach(io: file_user_second, filename: 'photo_user.png')
    user_second.save!

    participation = Participation.new(accepted: true, motivation: Faker::Lorem.paragraph(sentence_count: 3), work_time: Faker::Lorem.paragraph(sentence_count: 1), admin: false)
    participation.user = user_second
    participation.project = project_user_first
    participation.save!

    (1..2).to_a.sample.times do

      project_title = Faker::Commerce.unique.product_name

      project_user_second = Project.new(title: project_title, description: Faker::Lorem.paragraph(sentence_count: 5), github_repository: "https://#{project_title}.github-repository.com", trello_link: "https://#{project_title}-trello.fr", start_date: Faker::Date.between(from: '2012-09-23', to: '2020-09-25'), website_link: "https://#{project_title}-heroku-app.com", tag_line: Faker::Lorem.paragraph(sentence_count: 1), tag: Faker::Commerce.department(max: 1))
      project_user_second.user = user_second
      project_user_second.save!

      puts "Creating some project languages"

      LANGUAGES.sample(rand(2..4)).each do |language|

        the_project_two_language = ProjectLanguage.new()
        the_project_two_language.language = language
        the_project_two_language.project = project_user_second
        the_project_two_language.save
      end

      puts "Finish !"

    end
  end

end

puts "Finished !"



