

# Category.create(:title => "Stuffed Animals")

# Category.create(:title => "Sports Jerseys")

# Category.create(:title => "Dream Jobs")

# Category.create(:title => "Dream Vacations")

# # category_array = []

# Category.all.each do |cat|

#   cat.update_attributes(:url_slug => cat.title.gsub(/\s/, "-"))
  
# end

25.times do
   Post.create(:title => Faker::Lorem.word, :description => Faker::Lorem.sentences(3), 
              :price => 1 + rand(5000), :user_key => "aaaaa", :location => Faker::Address.city,
              :email => "billandam@dbc.com", :category_id => 1 + rand(4))
end










# for each post object take title do gsub
#   assign that to url slug key 
#   then save post object
