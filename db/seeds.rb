
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


users_creator = {
  1 => ["Chloé", "Rihouay", "chloe.rihouay@wagon.com", 440, "https://avatars2.githubusercontent.com/u/65725594?v=4"]
  2 => ["Louis", "Renie", "louis.renier@wagon.com", 440, "https://avatars0.githubusercontent.com/u/67097112?v=4"]
  3 => ["Hugo", "Arnoult", "hugo.arnoult@wagon.com", 440, "https://avatars2.githubusercontent.com/u/67268760?v=4"]
  4 => ["Anthony", "You", "anthony.you@wagon.com", 440, "https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/v1597872878/ykktauyyzddh4mkkrzd2.jpg"]
  5 => ["Elsa", "Kifer", "elsa.kifer@wagon.com", 440, "https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/v1598975754/yqvb1mn4ughztj2mhp7o.jpg"]
  6 => ["Mathilda", "Djamdjian", "mathilda.djamdjian@wagon.com", 440, "https://avatars0.githubusercontent.com/u/56888912?v=4"]
  7 => ["Alex", "Touze", "alex.touze@wagon.com", 440, "url_photo"]
  8 => ["Thibault", "Morla", "thibault.morla@wagon.com", 440, "https://avatars3.githubusercontent.com/u/66415445?v=4"]
  9 => ["Stephan", "Zé-Ogier", "Stephan.zeé-ogier@wagon.com", 440, "https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/v1594055830/nqzkb753savp5cyi0chf.jpg"]
  10 => ["Stephanie", "Rousset", "stephanie.rousset@wagon.com", 440, "https://avatars2.githubusercontent.com/u/61418966?v=4"]
}
projects_creator = {
  1 => ["Cyclee 🚲", "appli GPS qui donne les trajets optimisés vélo + emplacements vélos à proximité + densité du trafic grâce à la communauté", "www.cyclee.fr", "La meilleure façon de se déplacer à vélo"]
  2 => ["Wellbe 🤸", "Le user rentre le temps disponible et le type d'exercice souhaité (selon son niveau et ses objectifs). Un algo génère une session sur mesure.", "www.wellbe-fit.xyz", "Le fitness sur mesure"]
  3 => ["Paramz 🎮", "An esports platform to share setup and settings while centralizing information. 🎮🏆", "www.paramz.xyz", "Build the future of esports."]
  4 => ["Escapades ✈️🌍", "Platform to find travel buddies & plan your trip. 🚀🌍", "www.escapades.app", "Voyageons ensemble"]
  5 => ["Cosmeet 💞🪐 💫", "An astro-dating app that matches personalities with an entertaining approach, focusing on human qualities and on the relevance of the connections.", "www.cosmeet.me", "www.cosmeet.me"]
  6 => ["Red[u]ce ♻️", "Logiciel qui analyse et permet de réduire le gaspillage alimentaire pour la restauration.", "www.reducewaste.io", "Changer le monde un repas à la fois 👩‍🍳"]
  7 => ["Shareflix", "Shareflix est une communauté de partage de comptes et d’abonnements Netflix, Spotify, Disney+, HBO etc.", "www.shareflix.club", "Netflix, HBO, Spotify, Deezer... Get them all"]
  8 => ["SubDesk", "We want to build a plateform that matches small companies that are looking for affordable offices and big ones that are looking for reducing rent cost", "www.subdesk.pro", "Don't waste money on office rent"]
  9 => ["Pladujoor", "Des menus connectés qui facilitent le respect des règles sanitaires. Et donnent une meilleure visibilité sur le taux d'occupation journalier des CHR.", "www.pladujoor.xyz", "Afficher complet"]
  10 => ["Train Up", "Créer une app qui mette en relation les clients et les différents types de coaches", "www.trainup.club", "Booker un cours particulier de sport"]
}
users_creator.keys.each do |num|
  infos = users_creator[num]
  user = User.new(first: infos[0], last_name: infos[1], email: infos[2], password: "azerty", batch_number: infos[3], city: "Paris", pays: "France", bootcamp_year: "2020")
  user_url = infos.last
  file_user = URI.open(user_url)
  user.photo.attach(io: file_user, filename: 'photo_user.png')
  user.save!
  project = project_creator[num]
end

projects_creator.keys.each do |num|
  infos = projects_creator[num]
  project = Project.new(title: infos[0], description: infos[1], github_repository: "https://github.com/nnico1000", trello_link: "https://trello.com/b/VrAHeTI5/side-ninjas", start_date: Date.today-14.days, website_link: infos[5], tag: infos[6])
end

3 projects
project1 = Project.new(title: "ImagineR", description: "Logiciel de réalité virtuelle pour dédiés aux formations de pilote de l'air", github_repository: "https://github.com/nnico1000", trello_link: "https://trello.com/b/VrAHeTI5/side-ninjas", start_date: Date.today-14.days, website_link: "www.air-france.fr", tag: "Changer la formation des pilote de l'air")
project2 = Project.new(title: "Cloudsystem", description: "Decouvrez une nouvelle maniere de stocker vos donnees, Cloudsystem est un hebergeur gratuit et illimité", github_repository: "https://github.com/nnico1000", trello_link: "https://trello.com/b/VrAHeTI5/side-ninjas", start_date: Date.today-14.days, website_link: "www.aws.com", tag: "Decouvrer le futur de la gestion de données")
project3 = Project.new(title: "Drony", description: "creation d'un logiciel d'analyse de données dans l'agriculture", github_repository: "https://github.com/nnico1000", trello_link: "https://trello.com/b/VrAHeTI5/side-ninjas", start_date: Date.today-14.days, website_link: "www.pac.fr", tag: "Données la possibilité aux agriculteur de proposer le meilleure")

9 users --> 1 admin et 2 participants

user_admin1 = User.new(first: "Jack", last_name: "Dawson", email: "jack.dawson@wagon.com", password: "azerty", batch_number: 399, city: "Sao Polo", pays: "Bresil", bootcamp_year: "2016", user_url: "https://img-4.linternaute.com/W054xzfmWRwb-IQwbE-BQRdgua8=/1240x/smart/5ea50059965d4b94981a7e62655ae0e0/ccmcms-linternaute/11938078.jpg")
user_admin2 = User.new(first: "Nicolas", last_name: "Salarksit", email: "nicolas.salarkzit@wagon.com", password: "azerty", batch_number: 389, city: "Moscou", pays: "Russie", bootcamp_year: "2014", user_url: "https://i.pinimg.com/originals/f8/77/18/f87718be74ddb439645c1e7ed6e12f2b.jpg")
user_admin3 = User.new(first: "john", last_name: "lennon", email: "john.@lennon.com", password: "azerty", batch_number: 420, city: "New York", pays: "Etats-Unis", bootcamp_year: "2019", user_url: "https://www.biography.com/.image/t_share/MTE1ODA0OTcxNjk3OTMxNzg5/john-lennon-9379045-2-402.jpg")

user_participant1 = User.new(first: "Fabrice", last_name: "Touet", email: "fabrice.touet@wagon.com", password: "azerty", batch_number: 400, city: "Paris", pays: "France", bootcamp_year: "2019", user_url: "https://www.umr-lops.fr/var/storage/images/_aliases/fullsize/medias-ifremer/medias-lops/pages-perso/fabrice-ardhuin/fabrice-ardhuin/1683820-1-fre-FR/Fabrice-Ardhuin.jpg")
user_participant2 = User.new(first: "Khalil", last_name: "Man", email: "khalil.man@wagon.com", password: "azerty", batch_number: 409, city: "Ho-Chin-Minh", pays: "Vietnam", bootcamp_year: "2018", user_url: "https://pbs.twimg.com/profile_images/1062608006/khalilmuhammad20.jpg")
user_participant3 = User.new(first: "William", last_name: "Morin", email: "william.morin@wagon.com", password: "azerty", batch_number: 399, city: "Dakar", pays: "Senegal", bootcamp_year: "2017", user_url: "https://www.dokidoki.agency/wp-content/uploads/2019/09/jerem-300x295.png")
user_participant4 = User.new(first: "Jeremy", last_name: "Chervalis", email: "jeremy.chervalis@wagon.com", password: "azerty", batch_number: 389, city: "Marakech", pays: "Maroc", bootcamp_year: "2016", user_url: "https://media-exp1.licdn.com/dms/image/C4D03AQHJPrUCcJQvow/profile-displayphoto-shrink_200_200/0?e=1602720000&v=beta&t=5s2doPZNAt3sYGLZ5VgTYIL4Ywqu7MTxXNGWkjdKc2U")
user_participant5 = User.new(first: "Francois", last_name: "Vaillant", email: "francois.vaillant@wagon.com", password: "azerty", batch_number: 420, city: "Genève", pays: "Suisse", bootcamp_year: "2020", user_url: "https://epic.foundation/resources/img/alexandre-mars.jpg")
user_participant6 = User.new(first: "Alexandre", last_name: "Legrand", email: "alexandre.legrand@wagon.com", password: "azerty", batch_number: 415, city: "Berlin", pays: "Allemagne", bootcamp_year: "2019", user_url: "https://pokaa.fr/wp-content/uploads/2019/12/nicolas-rieffel10891775_849455711779282_5230281188826111407_n-1.jpg")

project1.user = user_admin1
project2.user = user_admin2
project3.user = user_admin3

user = User.new(email: "jack@wagon.org", password: "azerty", first_name: "Jack", last_name: "Sparro", batch_number: 440, city: "La Havane", pays: "Cuba", bootcamp_year: 2020)
user_url = PICTURE_USER.sample
file_user = URI.open(user_url)
user.photo.attach(io: file_user, filename: 'photo_user.png')
user.save!

PICTURE_PROJECT = [
  "https://www.digitalcorner-wavestone.com/wp-content/uploads/2019/04/1_wxC3mcax_8XXR16ppuWYCQ.jpeg",
  "https://lionsurmer.com/wp-content/uploads/2013/06/pui-schema.jpg",
  "https://alterydea.com/wp-content/uploads/2013/12/schema-logo.gif",
  "https://www.projectsmart.co.uk/img/pm-workflow.png",
  "https://previews.123rf.com/images/mrhighsky/mrhighsky1603/mrhighsky160300124/56405493-project-management-tag-cloud.jpg",
  "https://thumbs.dreamstime.com/z/vector-software-development-project-coding-technology-vector-conceptual-software-development-project-coding-technology-paint-brush-102626382.jpg"
]

PROJECT_TAG_LINE = [
  "The new digital photo tool",
  "The 'Zapier for Blockchain'",
  "A better way to make video",
  "The best tool to make research online"
]

PROJECT_DESCRIPTION = [
  "Digital photo frame right in your Mac’s menu bar. Bring little moments of pleasure to your day! Decide which of your photos you'd like to see and, just like a digital photo frame, be pleasantly surprised with a new photos.",
  "The 'Zapier for Blockchain'. PARSIQ serves as a bridge between blockchains and off-chain applications. Monitor and track any events or digital asset transfers on various blockchains in real-time at scale, build triggerable workflows.",
  "Story Creator is a simple online video editing tool for digital creators. You can think of Canva as Photoshop for dummies while Story Creator is After Effects for dummies.",
  "Workomo shows you everything important about People, just before you Meet, right inside Chrome. With one click, you can see a person's professional background, areas of common interest as well as talking points that help you forge a personal connection.",
  " How do you research and think through important decisions? Open browser tabs, files in Dropbox, a whiteboard… Muse offers a new way. It turns your iPad into a spatial canvas for research notes, PDFs, screenshots, sketches, and bookmarks."
]

user = User.new(email: "jack@wagon.org", password: "azerty", first_name: "Jack", last_name: "Sparro", batch_number: 440, city: "La Havane", pays: "Cuba", bootcamp_year: 2020)
user_url = PICTURE_USER.sample
file_user = URI.open(user_url)
user.photo.attach(io: file_user, filename: 'photo_user.png')
user.save!

puts "Creating 11 languages"

html = Language.new(name: "HTML/CSS")
html_user = URI.open("https://upload.wikimedia.org/wikipedia/commons/thumb/3/35/Font_Awesome_5_brands_html5.svg/1200px-Font_Awesome_5_brands_html5.svg.png")
html.photo.attach(io: html_user, filename: 'html_file.png')
html.save!

php = Language.new(name: "PHP")
php_user = URI.open("https://upload.wikimedia.org/wikipedia/commons/thumb/0/07/Font_Awesome_5_brands_php.svg/1279px-Font_Awesome_5_brands_php.svg.png")
# php_user = URI.open("https://upload.wikimedia.org/wikipedia/commons/thumb/0/07/Font_Awesome_5_brands_php.svg/1279px-Font_Awesome_5_brands_php.svg.png")
php.photo.attach(io: php_user, filename: 'php_file.svg')
php.save!

c = Language.new(name: "C++")
c_user = URI.open("https://or-formation.com/uploads/img/produits/52.png")
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
sql_user = URI.open("https://img2.freepng.fr/20180802/vty/kisspng-clip-art-microsoft-azure-sql-database-microsoft-sq-skills-5b63119fd6c064.4634905815332192318796.jpg")
sql.photo.attach(io: sql_user, filename: 'sql_file.png')
sql.save!

python = Language.new(name: "Python")
python_user = URI.open("https://cdn3.iconfinder.com/data/icons/logos-and-brands-adobe/512/267_Python-512.png")
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
  file_user_first = URI.open(user_first_url)
  user_first.photo.attach(io: file_user_first, filename: 'photo_user.png')
  user_first.save!

  project_title_one = Faker::Commerce.unique.product_name

  project_user_first = Project.new(title: project_title_one, description: PROJECT_DESCRIPTION.sample, github_repository: "https://#{project_title_one}.github-repository.com", trello_link: "https://#{project_title_one}-trello.fr", start_date: Faker::Date.between(from: '2019-09-23', to: '2020-09-25'), website_link: "https://#{project_title_one}-heroku-app.com", tag_line: PROJECT_TAG_LINE.sample, tag: Faker::Commerce.department(max: 1))

  (1..3).to_a.sample.times do

    project_user_url = PICTURE_PROJECT.sample
    p project_user_url
    puts project_user_url
    file_project_user = URI.open(project_user_url)
    project_user_first.photos.attach(io: file_project_user, filename: 'photo_user.png')

  end

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
    file_user_second = URI.open(user_second_url)
    user_second.photo.attach(io: file_user_second, filename: 'photo_user.png')
    user_second.save!

    participation = Participation.new(accepted: true, motivation: Faker::Lorem.paragraph(sentence_count: 3), work_time: Faker::Lorem.paragraph(sentence_count: 1), admin: false)
    participation.user = user_second
    participation.project = project_user_first
    participation.save!

    (1..2).to_a.sample.times do

      project_title = Faker::Commerce.unique.product_name

      project_user_second = Project.new(title: project_title, description: PROJECT_DESCRIPTION.sample, github_repository: "https://#{project_title}.github-repository.com", trello_link: "https://#{project_title}-trello.fr", start_date: Faker::Date.between(from: '2012-09-23', to: '2020-09-25'), website_link: "https://#{project_title}-heroku-app.com", tag_line: PROJECT_TAG_LINE.sample, tag: Faker::Commerce.department(max: 1))

      (1..3).to_a.sample.times do

        project_user_second_url = PICTURE_PROJECT.sample
        p project_user_second_url
        file_project_user_second = URI.open(project_user_second_url)
        project_user_second.photos.attach(io: file_project_user_second, filename: 'photo_user.png')

      end

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



