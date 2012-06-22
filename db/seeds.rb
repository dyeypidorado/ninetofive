# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

password = 'admin_9to5'
Admin.create(email: 'admin@9to5mil.com', password: password, :password_confirmation => password)
Product.create name: "The 9 to 5 Millionaire Book"

=begin
statuses = ["Pending", "Confirmed", "Bought"]

statuses.each do |status|
  Status.create value: status
end
=end
