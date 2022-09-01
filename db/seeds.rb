# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
# require "open-uri"
# require "nokogiri"
puts "Cleaning db..."
Event.destroy_all
User.destroy_all
Genre.destroy_all
puts "Db cleaned..."
puts "Creating genres..."

Genre.create!(name: "rock")
Genre.create!(name: "funk")
Genre.create!(name: "electronica")
Genre.create!(name: "pop")
Genre.create!(name: "sertanejo")
Genre.create!(name: "reggaeton")
Genre.create!(name: "afrobeats")
Genre.create!(name: "metal")
puts "#{Genre.count} genres created"

puts "Creating events..."
Genre.all.each do |genre|
  busca = genre.name
  url = "https://www.sympla.com.br/eventos/sao-paulo-sp?s=#{busca}&tab=eventos"

  html_file = URI.open(url).read
  html_doc = Nokogiri::HTML(html_file)

  html_doc.search(".sympla-card").each do |element|
    event = Event.new(name: element.search("h3").text.strip,
                      date: element.search(".sc-1sp59be-1").text.strip,
                      image: element.at("img")['src'],
                      genre: genre,
                      link: element.attribute("href").value)

    href = element.attribute("href").value

    html_file2 = URI.open(href).read
    html_doc2 = Nokogiri::HTML(html_file2)
    event.description = html_doc2.search('.eIGwZb').text.strip
    event.address = html_doc2.search('.cEMGkg').text.strip
    event.save!
  end
  puts "#{genre} Event created"
end

puts "#{Event.count} events created"
