
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
Notification.destroy_all
ChatroomUser.destroy_all
Message.destroy_all
Chatroom.destroy_all
ProjectLanguage.destroy_all
Language.destroy_all
Participation.destroy_all
Project.destroy_all
User.destroy_all

user_nico = User.new(email: "nico@wagon.org", password: "azerty", first_name: "Nicolas", last_name: "Chevalier", batch_number: 440, city: "Paris", pays: "France", bootcamp_year: 2020)
file_user = URI.open("https://lh3.googleusercontent.com/pw/ACtC-3dwPi9haVNoMFn21nLVszf-TwzUdDvTWDfizdWCNTEtjxVSwHRRxKW6F8NMD9g52nI0OguVWPLR5MXtk4Mw3obMFIcTdZHafu8bkiZcscoisTBqoXJ1ArwC-4qLINHl9FedDbYA_ujZCTGfZQIQr6Go=w2524-h1678-no?authuser=0")
user_nico.photo.attach(io: file_user, filename: 'photo_user.jpg')
user_nico.save!

user_jules = User.new(email: "jules@wagon.org", password: "azerty", first_name: "Jules", last_name: "Roussel", batch_number: 440, city: "Paris", pays: "France", bootcamp_year: 2020)
file_user = URI.open("https://lh3.googleusercontent.com/pw/ACtC-3cqGdU_9HJcciS-jeB0rT9g1kTLilK7p8leYCr_y16Ek1l78iBhUaYd2Du-oEChqsvCCjPA628qE1rf-vIgCOEPaQsaOL4sRM798gFuOhOIitAhJQGLwDL0IXQoPspB8pi4Nf08isy_ofZtBNAI29xk=w2524-h1678-no?authuser=0")
user_jules.photo.attach(io: file_user, filename: 'photo_user.jpg')
user_jules.save!

user_adrien = User.new(email: "adrien@wagon.org", password: "azerty", first_name: "Adrien", last_name: "Fort", batch_number: 440, city: "Paris", pays: "France", bootcamp_year: 2020)
file_user = URI.open("https://lh3.googleusercontent.com/pw/ACtC-3dWpMHkeEy4OhiPwi8ek7MoC04_RXMZ-GUVB5X29EYP3e1HpB7cRbOV_xtJCjvqOxf1E3HaFbD_FBx_LqmjPO3jnOt5V_c4o0QsdiSnxxBz9s-qeN6RWjOlJF7x9L63gl-J1X5DGqYD7Cc9aFutn0lk=w2524-h1678-no?authuser=0")
user_adrien.photo.attach(io: file_user, filename: 'photo_user.jpg')
user_adrien.save!

user_phil = User.new(email: "phil@wagon.org", password: "azerty", first_name: "Philippine", last_name: "Berton", batch_number: 200, city: "Paris", pays: "France", bootcamp_year: 2018)
file_user = URI.open("https://lh3.googleusercontent.com/pw/ACtC-3cFLkoZcsqSCnwxhSdXFcKwN5M9x7PsL_HWOeI-WOb09YxJSLZoxEQzXbaP-sW3GZnSoZCiQX2jk4MnHDZOtbRlP38illoFbxSh3JnroHaWQGR-UoEz4xFNu3qaaIS1TlK2Lgy5KHEV9BNc6RPPWX5z=w2448-h1628-no?authuser=0")
user_phil.photo.attach(io: file_user, filename: 'photo_user.jpg')
user_phil.save!

users_creator = {
  1 => ["Chloé", "Rihouay", "chloe.rihouay@wagon.com", 440, "https://lh3.googleusercontent.com/pw/ACtC-3cv5FUlROn-X_EVKJ8fArDvm4UVZSQA8WGPugiAXW7dSH64HgAfet7G7jQ9JsxTtcYu68ZVkQX1JlUyzL1eqbbqbMvHrRrUYG-c_iIvJ-J24QlZpn-jvfDLpyhkAdJcLaNO0r1pKKPYtuAOccn19bBo=w1748-h1162-no?authuser=0"],
  2 => ["Louis", "Renie", "louis.renier@wagon.com", 440, "https://lh3.googleusercontent.com/pw/ACtC-3e7NSR6aqIRg3H6imy5l_Jkxgrzg7sKdPefAEpbnaLGcF_F4G8xZ2ta9MQcc4SNz1gXSr9ABYgb7v0xK2O226H652-a_DLn1kZYFSUUX6UCKv7IiSbpk-oaScgjdFXZTzO8J0FP-7DCdYA5x3Vk232n=w1894-h1260-no?authuser=0"],
  3 => ["Hugo", "Arnoult", "hugo.arnoult@wagon.com", 440, "https://lh3.googleusercontent.com/pw/ACtC-3cAkr2IkTd__FLjkBDIcjgGOMHIjyK97M4F73h4-3KVrmEdsHiF-QeKYf0X-iUYaTAclaxWL5N-NjVZUGoUoqHGSO6Ft943B_GTePRZmecE8BEHnQn3v3gnSFJgurhyUA-L4vn0_6_tMfEiVj0SyF1o=w1894-h1260-no?authuser=0"],
  4 => ["Anthony", "You", "anthony.you@wagon.com", 440, "https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/v1597872878/ykktauyyzddh4mkkrzd2.jpg"],
  5 => ["Elsa", "Kifer", "elsa.kifer@wagon.com", 440, "https://lh3.googleusercontent.com/pw/ACtC-3f7nYwhNOmcC0rt0NVNDKPgPRDCHvFuE61BFqx6846tqo8wZBcAWB7F0yMlWzbX2a6B5WxZ4pGecNh-qZpBhoQNpFbIWrC7GcsnKrHrAus6ie--MuX7LuHdBINNeDweI2sKkDq8imc7a1ejhsG7lHF5=w1894-h1260-no?authuser=0"],
  6 => ["Mathilda", "Djamdjian", "mathilda.djamdjian@wagon.com", 440, "https://lh3.googleusercontent.com/pw/ACtC-3ca5jBTmA1nVFhm_En0on2j51FWKm_kqSkqlprj35ALk6cibIC_BCOo0-u1kccAP4IjxgOH_vmEmYMYQ14QRhQq9f4LdSt8uqdKI4vLTSKG0ankrKOUUdOBZTfkAvNjClzf99MIh9qapKr1Vs1UnW36=w1894-h1260-no?authuser=0"],
  7 => ["Alex", "Touze", "alex.touze@wagon.com", 440, "https://lh3.googleusercontent.com/pw/ACtC-3egWQUY-iohFw3y_7QTO6EED43EQO8w3ka8EvmWA1eZicz9nhmoKl0CHllhZzoOnME6Dcy2jcgo2JxN-E963D9B4bRM3sHugkhHR7WugcGkHCsFhN4pe7YEwzsHP-4ELYZAiuUpMn4dkOrFnk3oFK6U=w1894-h1260-no?authuser=0"],
  8 => ["Thibault", "Morla", "thibault.morla@wagon.com", 440, "https://lh3.googleusercontent.com/pw/ACtC-3fFgOM3c3Wd8XbUGMonmhQegxHZAyFn9C_cQmTVcXB7qcm9HW1inMvtAgocnLxy3RK1dkCBsLVHcyfutkwd3iegW2wAeKiv2NISxSbaAxMYJQVcfLyWTfahrq8oQDe0Ry-Np7X2LCEiygQujG3uLN-b=w1894-h1260-no?authuser=0"],
  9 => ["Stephan", "Zé-Ogier", "Stephan.zeé-ogier@wagon.com", 440, "https://lh3.googleusercontent.com/pw/ACtC-3dPIgm46jglsOfz5t3zMOKmWRX3HvnJFEQUmkxdfMp8mm_YVE5uPlt3Wwvq4I1NfawsfTt_KPlvVsDJKFUdNFxPqX2EAUiIPsjwPxuTiYaEUbGmuEIqEBjcw5jJVoBDf3knCx6etxW8CpiEoDRo4N11=w1894-h1260-no?authuser=0"],
  10 => ["Stephanie", "Rousset", "stephanie.rousset@wagon.com", 440, "https://lh3.googleusercontent.com/pw/ACtC-3fZJmfzYC6Csw4ay3RZIuYc36DOJFP70evYbZZGvHH_BgDQgC3P9mK0UIyIofiAayB4VW3aAd1F5eTKeAU_D3dPZquSl7f62jv3nhI1zAONIebRufkYvk0TVcHfK62k1Pi6s_eJy4nysmdzTTRiv7zK=w1894-h1260-no?authuser=0"]
}

users_participation = {
  1 => ["Matthieu", "Minier", "mathieu.Minier@wagon.com", 441, "https://avatars0.githubusercontent.com/u/62572114?v=4"],
  2 => ["Mathilde", "Guyot", "mathilde.Guyot@wagon.com", 441, "https://avatars2.githubusercontent.com/u/66635406?v=4"],
  3 => ["Abdelkrim", "Kiour", "Abdelkrim.Kiour@wagon.com", 441, "https://avatars1.githubusercontent.com/u/63396358?v=4"],
  4 => ["David", "Kuoch", "david.kuoch@wagon.com", 441, "https://avatars3.githubusercontent.com/u/46565318?v=4"],
  5 => ["Ségolène", "De La Taille", "Ségolène.de-la-taille@wagon.com", 441, "https://avatars0.githubusercontent.com/u/66723589?v=4"],
  6 => ["Nicolas", "Kiger", "Nicolas.Kiger@wagon.com", 441, "https://avatars3.githubusercontent.com/u/63286070?v=4"],
  7 => ["Stan", "Legrez", "stan.legrez@wagon.com", 441, "https://avatars3.githubusercontent.com/u/65570378?v=4"]
}

projects_creator = {
  1 => ["Cyclee 🚲", "appli GPS qui donne les trajets optimisés vélo + emplacements vélos à proximité + densité du trafic grâce à la communauté", "www.cyclee.fr", "La meilleure façon de se déplacer à vélo", "vélo"],
  2 => ["Wellbe 🤸", "Le user rentre le temps disponible et le type d'exercice souhaité (selon son niveau et ses objectifs). Un algo génère une session sur mesure.", "www.wellbe-fit.xyz", "Le fitness sur mesure", "sport"],
  3 => ["Paramz 🎮", "An esports platform to share setup and settings while centralizing information. 🎮🏆", "www.paramz.xyz", "Build the future of esports.", "esports"],
  4 => ["Escapades ✈️🌍", "Platform to find travel buddies & plan your trip. 🚀🌍", "www.escapades.app", "Voyageons ensemble", "voyages"],
  5 => ["Cosmeet 💞🪐 💫", "An astro-dating app that matches personalities with an entertaining approach, focusing on human qualities and on the relevance of the connections.", "www.cosmeet.me", "Listen to the stars", "relations"],
  6 => ["Red[u]ce ♻️", "Logiciel qui analyse et permet de réduire le gaspillage alimentaire pour la restauration.", "www.reducewaste.io", "Changer le monde un repas à la fois 👩‍🍳", "food"],
  7 => ["Shareflix", "Shareflix est une communauté de partage de comptes et d’abonnements Netflix, Spotify, Disney+, HBO etc.", "www.shareflix.club", "Netflix, HBO, Spotify, Deezer... Get them all", "cinema"],
  8 => ["SubDesk", "We want to build a plateform that matches small companies that are looking for affordable offices and big ones that are looking for reducing rent cost", "www.subdesk.pro", "Don't waste money on office rent", "locations"],
  9 => ["Pladujoor", "Des menus connectés qui facilitent le respect des règles sanitaires. Et donnent une meilleure visibilité sur le taux d'occupation journalier des CHR.", "www.pladujoor.xyz", "Affichez complet", "food"],
  10 => ["Train Up", "Créer une app qui mette en relation les clients et les différents types de coaches", "www.trainup.club", "Booker un cours particulier de sport", "sport"]
}

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

LANGUAGES = [js, html, php, c, ruby, sql, python, react, swift, angular]

puts "Creating participations to the batch project"

USER_PARTICITANT = []

users_participation.keys.each do |num|
  infos = users_participation[num]
  user = User.new(first_name: infos[0], last_name: infos[1], email: infos[2], password: "azerty", batch_number: infos[3], city: "Paris", pays: "France", bootcamp_year: "2020")
  user_url = infos.last
  file_user = URI.open(user_url)
  p user_url
  user.photo.attach(io: file_user, filename: 'photo_user.jpeg')
  user.save!

  USER_PARTICITANT << user
end

p USER_PARTICITANT

puts "Finish creating participations"

puts "Creating the Barch 440 's projects"

users_creator.keys.each do |num|
  infos = users_creator[num]
  user = User.new(first_name: infos[0], last_name: infos[1], email: infos[2], password: "azerty", batch_number: infos[3], city: "Paris", pays: "France", bootcamp_year: "2020")
  user_url = infos.last
  file_user = URI.open(user_url)
  p user_url
  user.photo.attach(io: file_user, filename: 'photo_user.jpg')
  user.save!

  projects = projects_creator[num]
  project = Project.new(title: projects[0], description: projects[1], github_repository: "https://github.com/nnico1000", trello_link: "https://trello.com/b/VrAHeTI5/side-ninjas", start_date: Date.today-14.days, website_link: projects[2], tag_line: projects[3], tag: projects.last)
  project.user = user
  project.save!
  puts "#{project.title}"

  participation = Participation.new(project: project, user: user, accepted: true, admin: true)
  participation.save!

  puts "debut file project"
  # file_project_one = URI.open("https://lh3.googleusercontent.com/proxy/82NEKAPoX1uKcRz1FbBTn_P-TCpsjv8dnObv1TbHfzHysHpyI24zC1khoj8Ca6H7YUGp8iBfOlb70xQPn_1CqH-JrFyA_RQPzfZqCpI1q8fSZFCDZCDqrU4zybgs2rrNTYqvbnWdlyzkBV2FmNq0kKLBstogxgsnxSc")
  # project.photos.attach(io: file_project_one, filename: 'photo_user.png')
  file_project_two = URI.open("https://www.applicationiphone.info/wp-content/uploads/2016/04/7-minutes.png")
  project.photos.attach(io: file_project_two, filename: 'photo_user.png')
  puts "fin file project"

  puts "debut langage"
  LANGUAGES.sample(rand(2..4)).each do |language|
    project_language = ProjectLanguage.new()
    project_language.language = language
    project_language.project = project
    project_language.save!
    puts "#{project_language}"
  end
  puts "fin langage"

  puts "Giving participations to this project"
  USER_PARTICITANT.sample(rand(2..4)).each do |user_part|
    participation = Participation.new(project: project, user: user_part, accepted: true, admin: false)
    participation.save!
  end
  puts "Finish giving participations"

end

# puts "Add JS to the second project"
#   project_language_two = ProjectLanguage.new()
#   project_language_two.language = js
#   project_language_two.project = Project.second
#   project_language_two.save!
# puts "Done"

puts "Finished!"

puts "Creating 2 projects with teams"

LANGUAGES_OTHER = [js, ruby, python, html]

user_admin_one = User.new(first_name: "Jack", last_name: "Dawson", email: "jack.dawson@wagon.com", password: "azerty", batch_number: 399, city: "Sao Polo", pays: "Bresil", bootcamp_year: 2016)
user_admin_one.save!
file_user_one = URI.open("https://lh3.googleusercontent.com/pw/ACtC-3egWQUY-iohFw3y_7QTO6EED43EQO8w3ka8EvmWA1eZicz9nhmoKl0CHllhZzoOnME6Dcy2jcgo2JxN-E963D9B4bRM3sHugkhHR7WugcGkHCsFhN4pe7YEwzsHP-4ELYZAiuUpMn4dkOrFnk3oFK6U=w1894-h1260-no?authuser=0")
user_admin_one.photo.attach(io: file_user_one, filename: 'photo_user.jpg')

user_admin_two = User.new(first_name: "Nicolas", last_name: "Salar", email: "nicolas.salarkzit@wagon.com", password: "azerty", batch_number: 389, city: "Moscou", pays: "Russie", bootcamp_year: 2014)
user_admin_two.save!
file_user_two = URI.open("https://lh3.googleusercontent.com/pw/ACtC-3cv5FUlROn-X_EVKJ8fArDvm4UVZSQA8WGPugiAXW7dSH64HgAfet7G7jQ9JsxTtcYu68ZVkQX1JlUyzL1eqbbqbMvHrRrUYG-c_iIvJ-J24QlZpn-jvfDLpyhkAdJcLaNO0r1pKKPYtuAOccn19bBo=w1748-h1162-no?authuser=0")
user_admin_two.photo.attach(io: file_user_two, filename: 'photo_user.jpg')


project_one = Project.new(title: "ImagineR", description: "Logiciel de réalité virtuelle pour dédiés aux formations de pilote de l'air", github_repository: "https://github.com/nnico1000", trello_link: "https://trello.com/b/VrAHeTI5/side-ninjas", start_date: Date.today-14.days, website_link: "www.air-france.fr", tag_line: "Changer la formation des pilotes de l'air", tag: "learning")
project_one.user = user_admin_one
LANGUAGES_OTHER.sample(3).each do |language|
  a_language = ProjectLanguage.new()
  a_language.language = language
  a_language.project = project_one
  a_language.save!
end
project_one.save!

participation = Participation.new(project: project_one, user: user_admin_one, accepted: true, admin: true)
participation.save!

project_two = Project.new(title: "Cloudsystem", description: "Decouvrez une nouvelle maniere de stocker vos donnees, Cloudsystem est un hebergeur gratuit et illimité", github_repository: "https://github.com/nnico1000", trello_link: "https://trello.com/b/VrAHeTI5/side-ninjas", start_date: Date.today-14.days, website_link: "www.aws.com", tag_line: "Decouvrer le futur de la gestion de données", tag: "data")
project_two.user = user_admin_two
LANGUAGES_OTHER.sample(3).each do |language|
  b_language = ProjectLanguage.new()
  b_language.language = language
  b_language.project = project_two
  b_language.save!
end
project_two.save!

participation = Participation.new(project: project_two, user: user_admin_two, accepted: true, admin: true)
participation.save!

user_participant_a = User.new(first_name: "Fabrice", last_name: "Touet", email: "fabrice.touet@wagon.com", password: "azerty", batch_number: 400, city: "Paris", pays: "France", bootcamp_year: 2019)
file_user_c = URI.open("https://static.lexpress.fr/medias_2221/w_399,h_399,c_crop,x_42,y_0/w_600,h_600,c_fill,g_north/v1406705717/vin-diesel-gestures-as-he-arrives-for-a-screening-at-the-56th-berlinale-international-film-festival-in-berlin_1137417.jpg")
user_participant_a.photo.attach(io: file_user_c, filename: 'photo_user.jpg')
user_participant_a.save!

user_participant_b = User.new(first_name: "Khalil", last_name: "Man", email: "khalil.man@wagon.com", password: "azerty", batch_number: 409, city: "Ho-Chin-Minh", pays: "Vietnam", bootcamp_year: 2018)
file_user_d = URI.open("https://blog-chasse.naturapass.com/wp-content/uploads/2017/06/Jean-Francois_Cope.jpg")
user_participant_b.photo.attach(io: file_user_d, filename: 'photo_user.jpg')
user_participant_b.save!

participation_a = Participation.new(accepted: true, motivation: Faker::Lorem.paragraph(sentence_count: 3), work_time: Faker::Lorem.paragraph(sentence_count: 1), admin: false)
participation_a.user = user_participant_a
participation_a.project = project_one
participation_a.save!

participation_b = Participation.new(accepted: true, motivation: Faker::Lorem.paragraph(sentence_count: 3), work_time: Faker::Lorem.paragraph(sentence_count: 1), admin: false)
participation_b.user = user_participant_b
participation_b.project = project_two
participation_b.save!

puts "Finished!"

puts "Creating the project we have to visite"

user = User.new(first_name: "Juan", last_name: "Paulo", email: "juan@wagon.com", password: "azerty", batch_number: 150, city: "Mexico", pays: "Mexique", bootcamp_year: 2015)
user.save!
file_user = URI.open("https://gdb.voanews.com/277EE03C-B34D-4901-907D-5DCC5528482D_w408_r1_s.jpg")
user.photo.attach(io: file_user, filename: 'photo_user.jpg')

project_one_project = Project.new(title: "Startup In Mexico", description: "This an app to build, maintain and facilitate communications between Mexicans startups.", github_repository: "https://github.com/adrienfort/startupmexico", trello_link: "https://trello.com/b/yufjZHIh/starupmexico", start_date: Date.today-10.days, website_link: "https://www.startupmexico.com", tag_line: "The startups facebook.", tag: "communication")
project_one_project.user = user
LANGUAGES_OTHER.each do |language|
  z_language = ProjectLanguage.new()
  z_language.language = language
  z_language.project = project_one_project
  z_language.save!
end
project_one_project.save!

file_project_one = URI.open("https://cms.jotform.com/uploads/image_upload/image_upload/beril/46816_how-to-build-a-startup-4.jpg")
project_one_project.photos.attach(io: file_project_one, filename: 'photo_user.png')
file_project_two = URI.open("https://www.le-blog-de-mathieu-janin.net/photo/art/large_x2_16_9/42638640-35472685.jpg?v=1581334676")
project_one_project.photos.attach(io: file_project_two, filename: 'photo_user.png')

participation = Participation.new(project: project_one_project, user: user, accepted: true, admin: true)
participation.save!

user_participant_d = User.new(first_name: "Maria", last_name: "Bianchi", email: "maria@wagon.com", password: "azerty", batch_number: 389, city: "Roma", pays: "Italie", bootcamp_year: 2020)
file_user_d = URI.open("https://resize-parismatch.lanmedia.fr/r/901,,forcex/img/var/news/storage/images/paris-match/people/journee-internationale-des-femmes-50-icones-d-hier-et-d-aujourd-hui-1611084/emma-watson/26074758-1-fre-FR/Emma-Watson.jpg")
user_participant_d.photo.attach(io: file_user_d, filename: 'photo_user.jpg')
user_participant_d.save!

participation_d = Participation.new(accepted: true, admin: false)
participation_d.user = user_participant_d
participation_d.project = project_one_project
participation_d.save!


puts "End!"

# PICTURE_PROJECT = [
#   "https://www.digitalcorner-wavestone.com/wp-content/uploads/2019/04/1_wxC3mcax_8XXR16ppuWYCQ.jpeg",
#   "https://lionsurmer.com/wp-content/uploads/2013/06/pui-schema.jpg",
#   "https://alterydea.com/wp-content/uploads/2013/12/schema-logo.gif",
#   "https://www.projectsmart.co.uk/img/pm-workflow.png",
#   "https://previews.123rf.com/images/mrhighsky/mrhighsky1603/mrhighsky160300124/56405493-project-management-tag-cloud.jpg",
#   "https://thumbs.dreamstime.com/z/vector-software-development-project-coding-technology-vector-conceptual-software-development-project-coding-technology-paint-brush-102626382.jpg"
# ]


# BOOLEAN_PARTICIPATION = ["true", "nil", "false"]

# country_city = {
#   "France" => ["Paris", "Rennes", "Nantes"],
#   "England" => ["London"],
#   "Spain" => ["Barcelona", "Madrid"],
#   "Italie" => ["Turin", "Roma"],
#   "USA" => ["New York", "Miami"]
# }


# puts "Creating your users/projects/..."

# 1.times do

#   first_name_name_one = Faker::Name.unique.first_name
#   last_name_one = Faker::Name.unique.last_name

#   country = country_city.keys.sample
#   city = country_city[country].sample

#   user_first = User.new(first_name: first_name_one, last_name: last_name_one, batch_number: rand(300...442), email: "#{first_name_one}.#{last_name_one}@gmail.com", password: "#{first_name_one}-#{last_name_one}", city: city, pays: country, bootcamp_year: rand(2010...2021), github_username: "#{first_name_one}-github", linkedin_username: "#{first_name_one}-linkedin", slack_username: "#{first_name_one}-slack")
#   user_first_url = PICTURE_USER.sample
#   file_user_first = URI.open(user_first_url)
#   user_first.photo.attach(io: file_user_first, filename: 'photo_user.png')
#   user_first.save!

#   project_title_one = Faker::Commerce.unique.product_name

#   project_user_first = Project.new(title: project_title_one, description: PROJECT_DESCRIPTION.sample, github_repository: "https://#{project_title_one}.github-repository.com", trello_link: "https://#{project_title_one}-trello.fr", start_date: Faker::Date.between(from: '2019-09-23', to: '2020-09-25'), website_link: "https://#{project_title_one}-heroku-app.com", tag_line: PROJECT_TAG_LINE.sample, tag: Faker::Commerce.department(max: 1))

#   (1..3).to_a.sample.times do

#     project_user_url = PICTURE_PROJECT.sample
#     p project_user_url
#     puts project_user_url
#     file_project_user = URI.open(project_user_url)
#     project_user_first.photos.attach(io: file_project_user, filename: 'photo_user.png')

#   end

#   project_user_first.user = user_first
#   project_user_first.save!

#   puts "Creating some project languages"

#   LANGUAGES.sample(rand(2..4)).each do |language|

#     the_project_language = ProjectLanguage.new()
#     the_project_language.language = language
#     the_project_language.project = project_user_first
#     the_project_language.save!

#   end

#   puts "Finish !"

#   (1..4).to_a.sample.times do

#     first_name_two = Faker::Name.unique.first_name
#     last_name_two = Faker::Name.unique.last_name

#     country_two = country_city.keys.sample
#     city_two = country_city[country_two].sample

#     user_second = User.new(first_name: first_name_two, last_name: last_name_two, batch_number: rand(300...442), email: "#{first_name_two}.#{last_name_two}@gmail.com", password: "#{first_name_two}-#{last_name_two}", city: city_two, pays: country_two, bootcamp_year: rand(2010...2021), github_username: "#{first_name_two}-github", linkedin_username: "#{first_name_two}-linkedin", slack_username: "#{first_name_two}-slack")
#     user_second_url = PICTURE_USER.sample
#     file_user_second = URI.open(user_second_url)
#     user_second.photo.attach(io: file_user_second, filename: 'photo_user.png')
#     user_second.save!



#     (1..2).to_a.sample.times do

#       project_title = Faker::Commerce.unique.product_name

#       project_user_second = Project.new(title: project_title, description: PROJECT_DESCRIPTION.sample, github_repository: "https://#{project_title}.github-repository.com", trello_link: "https://#{project_title}-trello.fr", start_date: Faker::Date.between(from: '2012-09-23', to: '2020-09-25'), website_link: "https://#{project_title}-heroku-app.com", tag_line: PROJECT_TAG_LINE.sample, tag: Faker::Commerce.department(max: 1))

#       (1..3).to_a.sample.times do

#         project_user_second_url = PICTURE_PROJECT.sample
#         p project_user_second_url
#         file_project_user_second = URI.open(project_user_second_url)
#         project_user_second.photos.attach(io: file_project_user_second, filename: 'photo_user.png')

#       end

#       project_user_second.user = user_second
#       project_user_second.save!

#       puts "Creating some project languages"

#       LANGUAGES.sample(rand(2..4)).each do |language|

#         the_project_two_language = ProjectLanguage.new()
#         the_project_two_language.language = language
#         the_project_two_language.project = project_user_second
#         the_project_two_language.save
#       end

#       puts "Finish !"

#     end
#   end

# end

# puts "Finished !"



