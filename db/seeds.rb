# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Coupon.destroy_all

coupons = [{:coupon_code=>"FREE10", :store=>"LA"}, {:coupon_code=>"GETIT10", :store=>"London"}, {:coupon_code=>"NYBARGAIN", :store=>"Liverp
ool"}, {:coupon_code=>"NY_EVE", :store=>"New York"}]

Coupon.create(coupons)
