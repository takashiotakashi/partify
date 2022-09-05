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
    event.description = html_doc2.search('.eIGwZb').text
    address = html_doc2.search('.cEMGkg')[0]
    if address
      event.address = address.text
      event.save!
    end
  end
  puts "#{genre} Event created"
end

# estabelecimentos abaixo

milo = Event.new(
  name: "Milo Garage",
  image: "https://res.cloudinary.com/dkearav60/image/upload/c_scale,w_884/v1662415481/estabelecimentos/milo_garage.png",
  genre_id: 1,
  address: "Av. Pompéia, 1681 - Pompeia, São Paulo - SP",
  description: "Casa underground com grafite nas paredes em que DJs tocam música eletrônica, rock independente e funk."
)

beco = Event.new(
  name: "Beco 203",
  image: "https://res.cloudinary.com/dkearav60/image/upload/v1662415483/estabelecimentos/beco_203.png",
  genre_id: 1,
  address: "R. Augusta, 609 - Consolação, São Paulo - SP",
  description: "Balada com público mix em espaço eletrônico animado por bandas locais ao vivo com noites especiais e open bar."
)
morrison = Event.new(
  name: "Morrison Rock Bar",
  image: "https://res.cloudinary.com/dkearav60/image/upload/c_scale,w_1710/v1662416021/estabelecimentos/morrison.png",
  genre: 1,
  address: "R. Fidalga, 531 - Pinheiros, São Paulo - SP",
  description: "Bar espaçoso com três andares, petiscos e shows de rock animados. Aberto nas noites de quinta a sábado."
)
manifesto = Event.new(
  name: "Manifesto Bar",
  image: "https://res.cloudinary.com/dkearav60/image/upload/c_scale,w_1339/v1662415950/estabelecimentos/manifesto.png",
  genre: 1,
  address: "R. Iguatemi, 36 - Itaim Bibi, São Paulo - SP",
  description: "Bar com palco amplo para bandas de rock, vários espaços, mezanino e sala de jogos."
)
Event.new(
  name: ,
  image: ,
  genre: ,
  address: ,
  description:
)

puts "#{Event.count} events created"
