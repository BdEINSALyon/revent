# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Site.save_default :name, 'Raid INSA Lyon-Orange'
Site.save_default :opened, true
Site.save_default :event_name, 'Prologue'
Site.save_default :copyright, 'Copyright &copy; BdE INSA Lyon 2016, Tous droits r&eacute;serv&eacute;s'