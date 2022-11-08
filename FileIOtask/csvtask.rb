# frozen_string_literal: true

# code starts here

puts 'Enter Your name:'
name = gets.chomp
puts 'Enter Phone No:'
phone = gets.chomp.to_i
puts 'Enter your city:'
city = gets.chomp
require 'csv'
headers = %w[name phone city]
# headers = ['name', 'phone', 'city']
CSV.open('details.csv', 'a+') do |csv|
  csv << headers if csv.count.eql? 0
  csv << [name, phone, city]
end
