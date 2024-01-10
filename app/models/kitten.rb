class Kitten < ApplicationRecord
  after_create do
    puts "#{name} created."
  end
end
