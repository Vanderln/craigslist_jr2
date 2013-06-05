class Category < ActiveRecord::Base
  # Remember to create a migration!
  has_many :posts
  # Add a field that is the url slug
  # write a method to run before_save
  # remove white space, special characters convert to the slug
  # def fill_whitespace
  #   .gsub(/\s/, "-")
  # end

end
