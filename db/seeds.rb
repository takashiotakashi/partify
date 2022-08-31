# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require "open-uri"
require "nokogiri"

puts "Cleaning database..."
Event.destroy_all
User.destroy_all
Genre.destroy_all

puts "Creating database..."

rock = Genre.create!(name: "rock")
Genre.create!(name: "funk")
Genre.create!(name: "electronica")
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


Event.create!(name: "D-Edge Club", address: "Av. Mario deAndrade, 141, São Paulo - SP", description: "A razão de ser de todo clube é proporcionar a seus frequentadores a oportunidade de celebrarem todas as alegrias da vida de uma maneira muito especial. Dançar é sem dúvida alguma uma das formas mais elementares e seminais de expressarmos nossa felicidade e é ainda melhor quando podemos fazer isto entre nossos pares, ao som de boa música. Naturalmente, a recepção de estímulos sonoros pelo nosso corpo é essencial para isso e o D.EDGE sempre apostou em prover as melhores condições para tornar isso possível.", genre_id: 3)
Event.create!(name: "Morrison Rock Bar", address: "Rua Inácio Pereira da Rocha, 362, São Paulo - SP", description: "O bar é um dos mais tradicionais entre as casas de rock em São Paulo. As bandas cover que passam pela programação são um dos grandes diferenciais para o público. No palco, hits dos anos 70, 80, 90 e shows especiais com canções de ídolos do movimento. Com dois andares, o segundo costuma ser mais tranquilo - lá dá pra beber e comer sem se importar com empurra-empurra.", genre_id: 1)
