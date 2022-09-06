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

funk = Genre.create!(name: "funk")
rock = Genre.create!(name: "rock")
Genre.create!(name: "electronica")
Genre.create!(name: "pop")
Genre.create!(name: "sertanejo")
Genre.create!(name: "reggaeton")
Genre.create!(name: "afrobeats")
Genre.create!(name: "metal")
puts "#{Genre.count} genres created"

eventfunk1 = Event.create!(name: "HIGH ✶ É Funk, É Rave, É Revoada na Blitz Haus ✶ Rave Funk, Eletrônico e Muito Mais!",
                          date: "Sab, 10 Set - 20:00",
                          description: "A Música Eletrônica e o Funk nunca estiveram tão próximos, a Rave e o Bailão também não, pensando nisso nós criamos a HIGH! Uma festa que vai te levar tão alto que você vai curtir tudo dos dois mundos em uma única festa. Seja você Funk, 150Bpm, do Brazilian Bass, do Trance, do Rave Funk, do que for, se você gosta desses dois mundos, a HIGH é o seu lugar.",
                          address: "Rua Augusta, 657, São Paulo - SP",
                          image: "Blitz.png",
                          genre: funk,
                          link: "https://www.sympla.com.br/evento/high-e-funk-e-rave-e-revoada-na-blitz-haus-rave-funk-eletronico-e-muito-mais/1694492")

eventfunk2 = Event.create!(name: "Naza - Sábado com Funk, Rap, Eletro e Pop",
                          date: "Sab, 24 Set - 22:30",
                          description: "A Naza é uma festa voltada para a exploração de ritmos, nossa missão oficial é enviar nossos tripulantes para a galáxia Andrômeda. Embarque na nossa espaço nave e vem fazer esse rolê intergaláctico!",
                          address: "Rua Augusta, 765, São Paulo",
                          image: "Naza.png",
                          genre: funk,
                          link: "https://www.sympla.com.br/evento/naza-sabado-com-funk-rap-eletro-e-pop/1701665")

eventfunk3 = Event.create!(name: "Fritação 200! | Open Bar | Funk 200 bpm na Selva! | ( Sexta | 23.09)",
                          date: "Sex, 23 Set - 22:00",
                          description: "Fritando e Sarrando.
                          Em uma Sexta de Open Bar na Selva!

                          O que toca?
                          Funk 200 Bpm
                          Funk 150 Bpm
                          Funk Rave
                          Eletrônico (pra encerrar a noite)

                          * Comprovante de Vacinação (com 2 doses) Obrigatório
                          * Álcool Gel espalhado por todos os espaços
                          * Cardápios em QR Code
                          * Recomendamos o uso de máscaras se não estiver consumindo e se sentir confortável

                          Cardápio do Open Bar
                          Cerveja Amstel
                          Vodka Smirnoff
                          Catuaba
                          Gin & Tônica
                          Energético
                          Drinks (Hi-Fi & Cuba Libre)
                          Refrigerante
                          Água

                          Quem Toca?
                          Residentes:
                          Luana Borges (instagram.com/borgesblake)
                          Gabi Prieto (instagram.com/prietogabs)
                          Convidam:
                          Em Breve",
                          image: "fritacao.png",
                          genre: funk,
                          link: "https://www.sympla.com.br/evento/fritacao-200-open-bar-funk-200-bpm-na-selva-sexta-23-09/1695229")

eventfunk4 = Event.create!(name: "Noite do Branco com MC Japa",
                          date: "Sex, 09 Set - 15:00",
                          description: "NOITE DO BRANCO NA FARAH LOUNGE!! Para garantir a verdadeira baguncinha ele, MC JAPA, PERERECA SUICIDA, SE JOGA E QUICA. No comando da pista DJ DON JUAN, com muito funk e HELTON BECKER, com o melhor do sertanejo! Venha de branco e ganhe um drink criado especialmente pra esse evento. Garanta já seu ingresso!! Para reservas de camarote e mais informações, entre em contato conosco (11) 94806-8849.",
                          address: "Rua Aspicuelta, 490, São Paulo - SP",
                          image: "Noite do Branco.png",
                          genre: funk,
                          link: "https://www.sympla.com.br/evento/noite-do-branco-com-mc-japa/1694537")

eventfunk5 = Event.create!(name: "Beyhive Party SP - BDAY",
                          date: "Sex, 09 Set - 22:30",
                          description: "Depois do sucesso da última edição em comemoração ao lançamento do Renaissance anunciamos nosso retorno a SÃO PAULO! A BEYHIVE PARTY é a maior festa dedicada para os fãs da cantora Beyoncé no Brasil. Uma experiência única para quem é fã.  E nessa edição estaremos comemorando com um especial BDAY, vocês estão prontos?
                          Atrativos da festa:
                          CUPCAKES + BOLO COMEMORATIVO + DJS + COMPETIÇÃO INTERATIVA VALENDO BRINDES + PERFORMANCE COVER + TELÃO COM CLIPES + ESPAÇO PARA FOTOS COM GLOBOS, PLUMAS E PENAS, É GLAM 80S!
                          Pista 1: Especial Beyoncé
                          Perfomance Cover Beyonce: Sasha Zimmer
                          + DJ Felipe Cerqueira
                          + DJ Douglas Motta
                          + Convidados
                          Pista 2: Festa Pegasus com Pop e Funk
                          Lucas Freitas + convidados",
                          address: "Rua Augusta, 765, São Paulo - SP",
                          image: "Beyhive.png",
                          genre: funk,
                          link: "https://www.sympla.com.br/evento/beyhive-party-sp-bday/1688420")

eventrock1 = Event.create!(name: "INDIE PARTY | INDIE - ROCK AND ROLL - EMO - HITS - FOOD PARK E MAIS - COMPRE JÁ",
                          date: "Sab, 26 Nov - 23:00",
                          description: "Dia 26 de Novembro tem a última INDIE PARTY do ano na AUDIO um dos locais mais incríveis da cidade, com deck ao ar livre, food park e mais. Já convida os amigos pro evento e Compre Ingressos que vai ter muito rock and roll de todas épocas, indie, emo e hits a noite toda!
                          ૪ O QUE OS DJS TOCAM NA FESTA?
                          Indie | Rock and Roll de todas épocas | Emo | Pop | Sucessos | Hits e mais! AC/DC, Alabama Shakes, Alt-J, Aerosmith, Arcade Fire, Arctic Monkeys, Awolnation, Bastille, Beatles, Black Sabbath, Blink 182, Blur, Billie Eilish, Bon Jovi, Camila Cabello, Cage The Elephant, CPM22, Crystal Castles, Daft Punk, David Bowie, Dua Lipa, Empire of the Sun, Evanescense, Fall Out Boy, Franz Ferdinand, Florence and the Machine, Foals, Foo Fighters, Foster the People, Glass Animals, Joy Division, Kaiser Chiefs, Kings of Leon, Kiss, Jimi Hendrix, Lana del Rey, Led Zeppelin, Legião Urbana, LCD Soundsystem, Linkin Park, Lorde, Los Hermanos, Måneskin, Maroon 5, Metallica, MGMT, M.I.A, Michael Jackson, Mø, Mumford&Sons, Muse, My Chemical Romance, New Order, Nirvana, Oasis, Offspring, Of Monster and Men, Panic at the Disco, Pearl Jam, Paramore, Peter Bjorn and John, Phoenix, Pink Floyd, Placebo, Queen, Queens of Stone Age, Radiohead, Raimundos, Ramones, Red Hot Chilli Peppers, R.E.M, Rolling Stones, Simple Plan, Shawn Mendes, Smashing Pumpkins, Sia, Strokes, System of Down, Talking Heads, Tame Impala, The Black Keys, The Chainsmokers, The Clash, The Cure, The Doors, The Killers, The Kooks, The Libertines, The Lumminers, The Neighbourhood, The Smiths, The Ting Tings, The Vaccines, The White Stripes, The Who, The XX, The Weeknd, Twenty One Pilots, Two Door Cinema Club, Vance Joy, Vampire Weekend e mais.",
                          address: "Avenida Francisco Matarazzo, 694, São Paulo - SP",
                          image: "indie.png",
                          genre: rock,
                          link: "https://www.sympla.com.br/evento/indie-party-indie-rock-and-roll-emo-hits-food-park-e-mais-compre-ja/1684927")

eventrock2 = Event.create!(name: "BANDA EFEITO G8 - o melhor do Rock e Pop Rock no Palco da LEGENDS",
                          date: "Sab, 10 Set - 21:00",
                          description: "Novamente a Banda Efeito G8 vai agitar a LEGENDS tocando os maiores sucessos do rock e pop rock.
                          O importante é se divertir, estreitar relações e fazer amigos novos!!!!
                          Reservas de mesas pelo 11 93773-3200 ou pelo site www.legendsmusicbar.com.br",
                          address: "Rua Inácio Pereira da Rocha, 367, São Paulo - SP",
                          image: "efeitog8.png",
                          genre: rock,
                          link: "https://www.sympla.com.br/evento/banda-efeito-g8-o-melhor-do-rock-e-pop-rock-no-palco-da-legends/1697684")

eventrock3 = Event.create!(name: "BITE ME - SEXTA POP, ROCK, HITS PINK LAB",
                          date: "Sex, 09 Set - 22:00",
                          description: "BITE ME ✦ 09/09 - SEXTA ✦  POP, ROCK, HITS ✦ PINK LAB

                          A festa que traz bites de tudo aquilo que a gente curte chegou na Pink! A noite vem distribuída em porções pra botar todo mundo pra dançar os mais variados estilos que a gente sabe que moram no fundo do seu <3!

                          O som vem dividido em:

                          WARM UP: se tá no topo, tá aqui: POP, BR, FUNK, EXPLOSÃO DE HITS

                          COOL OFF: todas aquelas legalzices de ontem e de hoje que não saem das nossas listas de música: POP ATUAL, POP DIVAS, ROCK, INDIE, EMO, HITS

                          MIX UP: aqui vale tudo misturado: 90, 2000, POP, DISNEY, FUNKZÃO e tudo que o coraçãozinho mandar!

                          O que rola:
                          Welcome shot até 23:30
                          Rodadas de Shot
                          Candy Bites
                          Porçõezinhas de comidinhas

                          CONSUMA CRAZY
                          ✦ Paga R$30 - Consome R$50
                          *Válido apenas para INGRESSOS ANTECIPADOS.
                          *Quantidade limitada.

                          DJs:
                          Carol Mattos - https://instagram.com/caroolmattoss
                          Cris Rodrigues - https://www.instagram.com/_lkzdj_/
                          Henrique Lima - https://instagram.com/_lirick
                          Renata Beccari - https://instagram.com/renatabeccari",
                          address: "Rua Augusta, 523, São Paulo - SP",
                          image: "biteme.png",
                          genre: rock,
                          link: "https://www.sympla.com.br/evento/bite-me-09-09-sexta-pop-rock-hits-pink-lab/1692833")

eventrock4 = Event.create!(name: "Rock Collection e Mach 5",
                          date: "Sex, 09 Set - 17:00",
                          description: "A Banda Mach 5 é uma banda que surgiu na união  de nomes experientes da noite de São Paulo, um projeto que já nasce grande, tocando nas melhores casas da cidade.

                          Com mais de 20 anos de experiência em dezenas de bandas, os amigos Vagner Lucena (guitarra e voz), João Marcos (bateria) e Daniel Lima (baixo e voz), se reúnem mais uma vez para criar um som novo, pensando sempre na pista, para animar a grande variedade de baladas da Capital paulista.

                          Formanda por Marcos Vox em 2011, a Banda Rock Collection, hoje, é uma das referências de SP tanto em Musicalidade como em Presença de Palco.

                          No repertório que vai do Pop ao Rock, a banda toca músicas que marcaram época com execução bem próxima ao original.

                          Vem pra curtir o show dessas duas bandas incríveis no Pub?

                          Abertura da casa: 17h00",
                          address: "Rua Dr. Luiz Migliano, 1215, São Paulo - SP",
                          image: "rockcollection.png",
                          genre: rock,
                          link: "https://www.sympla.com.br/evento/rock-collection-e-mach-5/1703113")

eventrock5 = Event.create!(name: "Show de Temporada História do Rock Parte 2 - School of Rock Brooklin-Campo Belo",
                          date: "Dom, 25 Set - 12:00",
                          description: "O Show de Temporada da School of Rock Brooklin-Campo Belo, História do Rock - Parte 2: Rock 50's, Progressivo, Grunge e Indie, acontecerá no dia 25 de Setembro, em uma das mais novas e já prestigiadas casas de show de SP, o Legends Music Bar, na Vila Madalena.
                          O line-up das bandas e horários será disponibilizado na escola.
                          A energia e a vibe de um show são proporcionais ao público que está lá, curtindo e prestigiando as bandas. Não deixe de convidar seus amigos e familiares para que este seja um grande evento!
                          Crianças até 5 anos não pagam.",
                          address: "Rua Inácio Pereira da Rocha, 367, São Paulo - SP",
                          image: "historia.png",
                          genre: rock,
                          link: "https://www.sympla.com.br/evento/show-de-temporada-historia-do-rock-parte-2-school-of-rock-brooklin-campo-belo/1645693")

# Genre.all.each do |genre|
#   busca = genre.name
#   url = "https://www.sympla.com.br/eventos/sao-paulo-sp?s=#{busca}&tab=eventos"

#   html_file = URI.open(url).read
#   html_doc = Nokogiri::HTML(html_file)

#   html_doc.search(".sympla-card").each do |element|
#     event = Event.new(name: element.search("h3").text.strip,
#                       date: element.search(".sc-1sp59be-1").text.strip,
#                       image: element.at("img")['src'],
#                       genre: genre,
#                       link: element.attribute("href").value)

#     href = element.attribute("href").value

#     html_file2 = URI.open(href).read
#     html_doc2 = Nokogiri::HTML(html_file2)
#     event.description = html_doc2.search('.eIGwZb').text
#     address = html_doc2.search('.cEMGkg')[0]
#     if address
#       event.address = address.text
#       event.save!
#     end
#   end
#   puts "#{genre} Event created"
# end

# estabelecimentos abaixo

Event.new(
  name: "Milo Garage",
  image: "https://res.cloudinary.com/dkearav60/image/upload/c_scale,w_884/v1662415481/estabelecimentos/milo_garage.png",
  genre_id: 1,
  address: "Av. Pompéia, 1681 - Pompeia, São Paulo - SP",
  description: "Casa underground com grafite nas paredes em que DJs tocam música eletrônica, rock independente e funk."
).save

Event.new(
  name: "Beco 203",
  image: "https://res.cloudinary.com/dkearav60/image/upload/v1662415483/estabelecimentos/beco_203.png",
  genre_id: 1,
  address: "R. Augusta, 609 - Consolação, São Paulo - SP",
  description: "Balada com público mix em espaço eletrônico animado por bandas locais ao vivo com noites especiais e open bar."
).save

Event.new(
  name: "Morrison Rock Bar",
  image: "https://res.cloudinary.com/dkearav60/image/upload/c_scale,w_1710/v1662416021/estabelecimentos/morrison.png",
  genre_id: 1,
  address: "R. Fidalga, 531 - Pinheiros, São Paulo - SP",
  description: "Bar espaçoso com três andares, petiscos e shows de rock animados. Aberto nas noites de quinta a sábado."
).save

Event.new(
  name: "Manifesto Bar",
  image: "https://res.cloudinary.com/dkearav60/image/upload/c_scale,w_1339/v1662415950/estabelecimentos/manifesto.png",
  genre_id: 1,
  address: "R. Iguatemi, 36 - Itaim Bibi, São Paulo - SP",
  description: "Bar com palco amplo para bandas de rock, vários espaços, mezanino e sala de jogos."
).save

# Event.new(
#   name: ,
#   image: ,
#   genre: ,
#   address: ,
#   description:
# )

puts "#{Event.count} events created"
