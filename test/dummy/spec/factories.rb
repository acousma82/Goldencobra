require 'factory_girl'
require 'faker'

Factory.define :article, :class => Goldencobra::Article do |u|
  u.title "Article Title"
  u.url_name "short-title"
  u.startpage false
  u.active true
end


Factory.define :menue, :class => Goldencobra::Menue do |u|
  u.title 'Nachrichten'
  u.target 'www.ikusei.de'
  u.active true
  u.css_class 'news'
end

Factory.define :setting, :class => Goldencobra::Setting do |u|
  u.title 'Einstellung1'
  u.value "Wert1"
end

Factory.define :admin_user, :class => User do |u|
  u.email 'admin@test.de'
  u.firstname "Tim"
  u.lastname "Test"
  u.password 'secure12'
  u.password_confirmation 'secure12'
  u.confirmed_at "2012-01-09 14:28:58"
end

Factory.define :admin_permission, :class => Goldencobra::Permission do |p|
  p.action "manage"
  p.subject_class ":all"
  p.subject_id ""
end

Factory.define :guest_user, :class => User do |u|
  u.email 'guest@test.de'
  u.password 'secure12'
  u.password_confirmation 'secure12'
end

Factory.define :user, class: User do |u|
  u.email Faker::Internet.email
  u.firstname Faker::Name.first_name
  u.lastname Faker::Name.last_name
  u.password 'bitte_aendern'
  u.password_confirmation 'bitte_aendern'
end

Factory.define :widget, class: Goldencobra::Widget do |w|
  w.title "Mein Widget"
  w.content "<ul><li><p>Mein Widget</p></li></p>"
  w.css_name "meine-liste"
  w.active true
end

Factory.define :startpage, :class => Goldencobra::Article do |u|
  u.title "Startseite"
  u.url_name "root"
  u.active true
end

Factory.define :role, :class => Goldencobra::Role do |r|
  r.name "admin"
end


Factory.define :admin_role, :class => Goldencobra::Role do |r|
  r.name "admin"
end

Factory.define :guest_role, :class => Goldencobra::Role do |r|
  r.name "guest"
end
