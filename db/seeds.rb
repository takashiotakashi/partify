# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require "open-uri"
require "nokogiri"

rock = Genre.create!(name: "rock")
Genre.create!(name: "funk")
Genre.create!(name: "eletronica")
Genre.create!(name: "pop")
Genre.create!(name: "sertanejo")
Genre.create!(name: "reggaeton")
Genre.create!(name: "afrobeats")
Genre.create!(name: "metal")

busca = "rock"
url = "https://www.sympla.com.br/eventos/sao-paulo-sp?s=#{busca}&tab=eventos"

html_file = URI.open(url).read
html_doc = Nokogiri::HTML(html_file)

html_doc.search(".sympla-card").each do |element|
  Event.create!(name: element.search("h3").text, address: element.search(".sc-1sp59be-1").text, genre: rock)
end
  puts "#{Event.count} events created"
  #element.attribute("href").value
  #element.at("img")['src']


  Event.create!(name: , address: , description: , price: , genre_id: )
