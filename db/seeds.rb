password = 'admin_9to5'

Admin.create(email: 'admin@9to5mil.com', password: password, :password_confirmation => password)

pages = ["Homepage", "News", "Contact"]
pages.each do |pagename|
  StaticPage.create name: pagename
end

categories = ["Books", "Merchandise", "Seminars"]
categories.each do |category|
  Category.create name: category
end


book = Category.find_by_name "Books"
book.products.create name: "The 9 to 5 Millionaire Book"

Affiliate.create(name: "Affiliate1")
Affiliate.create(name: "Affiliate2")
Affiliate.create(name: "Affiliate3")
Affiliate.create(name: "Affiliate4")
Affiliate.create(name: "Affiliate5")
Affiliate.create(name: "Affiliate6")
Affiliate.create(name: "Affiliate7")
Affiliate.create(name: "Affiliate8")
Affiliate.create(name: "Affiliate9")
Affiliate.create(name: "Affiliate10")

=begin
statuses = ["Pending", "Confirmed", "Bought"]

statuses.each do |status|
  Status.create value: status
end
=end

