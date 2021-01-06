# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
# coding: utf-8
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
CreateShops.create(:name=>'東京',:imageurl=>'abc')
CreateShops.create(:name=>'大阪',:imageurl=>'def')

CreateUsers.create(:name=>'麻生太郎',:password=>'asou920',:point=>'5000')
CreateUsers.create(:name=>'野田佳彦',:password=>'noda520',:point=>'1000')
CreateUsers.create(:name=>'菅義偉',:password=>'suga126',:point=>'100')