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

puts "Db cleaned..."
puts "Creating genres..."

Event.create!(name: "HIGH ✶ É Funk, É Rave, É Revoada na Blitz Haus ✶ Rave Funk, Eletrônico e Muito Mais!",
                          date: "Sab, 10 Set - 20:00",
                          description: "A Música Eletrônica e o Funk nunca estiveram tão próximos, a Rave e o Bailão também não, pensando nisso nós criamos a HIGH! Uma festa que vai te levar tão alto que você vai curtir tudo dos dois mundos em uma única festa. Seja você Funk, 150Bpm, do Brazilian Bass, do Trance, do Rave Funk, do que for, se você gosta desses dois mundos, a HIGH é o seu lugar.",
                          address: "Rua Augusta, 657, São Paulo - SP",
                          image: "Blitz.png",
                          # genres: ["funk", "electronica"],
                          genres: "funk",
                          link: "https://www.sympla.com.br/evento/high-e-funk-e-rave-e-revoada-na-blitz-haus-rave-funk-eletronico-e-muito-mais/1694492")

Event.create!(name: "Naza - Sábado com Funk, Rap, Eletro e Pop",
                          date: "Sab, 24 Set - 22:30",
                          description: "A Naza é uma festa voltada para a exploração de ritmos, nossa missão oficial é enviar nossos tripulantes para a galáxia Andrômeda. Embarque na nossa espaço nave e vem fazer esse rolê intergaláctico!",
                          address: "Rua Augusta, 765, São Paulo",
                          image: "Naza.png",
                          # genres: ["funk", "rap"],
                          genres: "funk",
                          link: "https://www.sympla.com.br/evento/naza-sabado-com-funk-rap-eletro-e-pop/1701665")

Event.create!(name: "Fritação 200! | Open Bar | Funk 200 bpm na Selva!",
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
                          genres: "funk",
                          link: "https://www.sympla.com.br/evento/fritacao-200-open-bar-funk-200-bpm-na-selva-sexta-23-09/1695229")

Event.create!(name: "Noite do Branco com MC Japa",
                          date: "Sex, 09 Set - 15:00",
                          description: "NOITE DO BRANCO NA FARAH LOUNGE!! Para garantir a verdadeira baguncinha ele, MC JAPA, PERERECA SUICIDA, SE JOGA E QUICA. No comando da pista DJ DON JUAN, com muito funk e HELTON BECKER, com o melhor do sertanejo! Venha de branco e ganhe um drink criado especialmente pra esse evento. Garanta já seu ingresso!! Para reservas de camarote e mais informações, entre em contato conosco (11) 94806-8849.",
                          address: "Rua Aspicuelta, 490, São Paulo - SP",
                          image: "Noite do Branco.png",
                          genres: "funk",
                          link: "https://www.sympla.com.br/evento/noite-do-branco-com-mc-japa/1694537")

Event.create!(name: "Beyhive Party SP - BDAY",
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
                          genres: "funk",
                          link: "https://www.sympla.com.br/evento/beyhive-party-sp-bday/1688420")

Event.create!(name: "INDIE PARTY | INDIE - ROCK AND ROLL - EMO - HITS - FOOD PARK E MAIS - COMPRE JÁ",
                          date: "Sab, 26 Nov - 23:00",
                          description: "Dia 26 de Novembro tem a última INDIE PARTY do ano na AUDIO um dos locais mais incríveis da cidade, com deck ao ar livre, food park e mais. Já convida os amigos pro evento e Compre Ingressos que vai ter muito rock and roll de todas épocas, indie, emo e hits a noite toda!
                          ૪ O QUE OS DJS TOCAM NA FESTA?
                          Indie | Rock and Roll de todas épocas | Emo | Pop | Sucessos | Hits e mais! AC/DC, Alabama Shakes, Alt-J, Aerosmith, Arcade Fire, Arctic Monkeys, Awolnation, Bastille, Beatles, Black Sabbath, Blink 182, Blur, Billie Eilish, Bon Jovi, Camila Cabello, Cage The Elephant, CPM22, Crystal Castles, Daft Punk, David Bowie, Dua Lipa, Empire of the Sun, Evanescense, Fall Out Boy, Franz Ferdinand, Florence and the Machine, Foals, Foo Fighters, Foster the People, Glass Animals, Joy Division, Kaiser Chiefs, Kings of Leon, Kiss, Jimi Hendrix, Lana del Rey, Led Zeppelin, Legião Urbana, LCD Soundsystem, Linkin Park, Lorde, Los Hermanos, Måneskin, Maroon 5, Metallica, MGMT, M.I.A, Michael Jackson, Mø, Mumford&Sons, Muse, My Chemical Romance, New Order, Nirvana, Oasis, Offspring, Of Monster and Men, Panic at the Disco, Pearl Jam, Paramore, Peter Bjorn and John, Phoenix, Pink Floyd, Placebo, Queen, Queens of Stone Age, Radiohead, Raimundos, Ramones, Red Hot Chilli Peppers, R.E.M, Rolling Stones, Simple Plan, Shawn Mendes, Smashing Pumpkins, Sia, Strokes, System of Down, Talking Heads, Tame Impala, The Black Keys, The Chainsmokers, The Clash, The Cure, The Doors, The Killers, The Kooks, The Libertines, The Lumminers, The Neighbourhood, The Smiths, The Ting Tings, The Vaccines, The White Stripes, The Who, The XX, The Weeknd, Twenty One Pilots, Two Door Cinema Club, Vance Joy, Vampire Weekend e mais.",
                          address: "Avenida Francisco Matarazzo, 694, São Paulo - SP",
                          image: "indie.png",
                          genres: "rock",
                          link: "https://www.sympla.com.br/evento/indie-party-indie-rock-and-roll-emo-hits-food-park-e-mais-compre-ja/1684927")

Event.create!(name: "BANDA EFEITO G8 - o melhor do Rock e Pop Rock no Palco da LEGENDS",
                          date: "Sab, 10 Set - 21:00",
                          description: "Novamente a Banda Efeito G8 vai agitar a LEGENDS tocando os maiores sucessos do rock e pop rock.
                          O importante é se divertir, estreitar relações e fazer amigos novos!!!!
                          Reservas de mesas pelo 11 93773-3200 ou pelo site www.legendsmusicbar.com.br",
                          address: "Rua Inácio Pereira da Rocha, 367, São Paulo - SP",
                          image: "efeitog8.png",
                          genres: "rock",
                          link: "https://www.sympla.com.br/evento/banda-efeito-g8-o-melhor-do-rock-e-pop-rock-no-palco-da-legends/1697684")

Event.create!(name: "BITE ME - SEXTA POP, ROCK, HITS PINK LAB",
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
                          genres: "rock",
                          link: "https://www.sympla.com.br/evento/bite-me-09-09-sexta-pop-rock-hits-pink-lab/1692833")

Event.create!(name: "Rock Collection e Mach 5",
                          date: "Sex, 09 Set - 17:00",
                          description: "A Banda Mach 5 é uma banda que surgiu na união  de nomes experientes da noite de São Paulo, um projeto que já nasce grande, tocando nas melhores casas da cidade.

                          Com mais de 20 anos de experiência em dezenas de bandas, os amigos Vagner Lucena (guitarra e voz), João Marcos (bateria) e Daniel Lima (baixo e voz), se reúnem mais uma vez para criar um som novo, pensando sempre na pista, para animar a grande variedade de baladas da Capital paulista.

                          Formanda por Marcos Vox em 2011, a Banda Rock Collection, hoje, é uma das referências de SP tanto em Musicalidade como em Presença de Palco.

                          No repertório que vai do Pop ao Rock, a banda toca músicas que marcaram época com execução bem próxima ao original.

                          Vem pra curtir o show dessas duas bandas incríveis no Pub?

                          Abertura da casa: 17h00",
                          address: "Rua Dr. Luiz Migliano, 1215, São Paulo - SP",
                          image: "rockcollection.png",
                          genres: "rock",
                          link: "https://www.sympla.com.br/evento/rock-collection-e-mach-5/1703113")

Event.create!(name: "Show de Temporada História do Rock Parte 2 - School of Rock Brooklin-Campo Belo",
                          date: "Dom, 25 Set - 12:00",
                          description: "O Show de Temporada da School of Rock Brooklin-Campo Belo, História do Rock - Parte 2: Rock 50's, Progressivo, Grunge e Indie, acontecerá no dia 25 de Setembro, em uma das mais novas e já prestigiadas casas de show de SP, o Legends Music Bar, na Vila Madalena.
                          O line-up das bandas e horários será disponibilizado na escola.
                          A energia e a vibe de um show são proporcionais ao público que está lá, curtindo e prestigiando as bandas. Não deixe de convidar seus amigos e familiares para que este seja um grande evento!
                          Crianças até 5 anos não pagam.",
                          address: "Rua Inácio Pereira da Rocha, 367, São Paulo - SP",
                          image: "historia.png",
                          genres: "rock",
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

Event.create!(
  name: "Milo Garage",
  image: "https://res.cloudinary.com/dkearav60/image/upload/c_scale,w_884/v1662415481/estabelecimentos/milo_garage.png",
  genres: "rock",
  address: "Av. Pompéia, 1681 - Pompeia, São Paulo - SP",
  description: "Casa underground com grafite nas paredes em que DJs tocam música eletrônica, rock independente e funk."
)

Event.new(
  name: "Beco 203",
  image: "https://res.cloudinary.com/dkearav60/image/upload/v1662415483/estabelecimentos/beco_203.png",
  genres: "rock",
  address: "R. Augusta, 609 - Consolação, São Paulo - SP",
  description: "Balada com público mix em espaço eletrônico animado por bandas locais ao vivo com noites especiais e open bar."
).save

Event.new(
  name: "Morrison Rock Bar",
  image: "https://res.cloudinary.com/dkearav60/image/upload/c_scale,w_1710/v1662416021/estabelecimentos/morrison.png",
  genres: "rock",
  address: "R. Fidalga, 531 - Pinheiros, São Paulo - SP",
  description: "Bar espaçoso com três andares, petiscos e shows de rock animados. Aberto nas noites de quinta a sábado."
).save

Event.new(
  name: "Manifesto Bar",
  image: "https://res.cloudinary.com/dkearav60/image/upload/c_scale,w_1339/v1662415950/estabelecimentos/manifesto.png",
  genres: "rock",
  address: "R. Iguatemi, 36 - Itaim Bibi, São Paulo - SP",
  description: "Bar com palco amplo para bandas de rock, vários espaços, mezanino e sala de jogos."
).save

Event.create!(name: "ARCH ENEMY / BEHEMOTH EM SÃO PAULO",
                          date: "Dom, 13 Nov - 18:00",
                          description: "ARCH ENEMY / BEHEMOTH 'THE LATIN AMERICAN SIEGE' 2022 EM SÃO PAULO

                          ANÚNCIO OFICIAL: NERVOSA E CRYPTA CONFIRMADAS AO LADO DE ARCH ENEMY E BEHEMOTH EM SÃO PAULO!

                          Duas das mais reverenciadas bandas do metal mundial se aliaram para realizar a turnê mais brutal e avassaladora que cruzou os Estados Unidos a Europa em 2022: BEHEMOTH, da Polônia, e ARCH ENEMY, da Suécia. Com enorme satisfação, a Liberation Music Company trará a tour à América do Sul em novembro deste ano: The Latin American Siege Tour 2022!

                          No Brasil, a turnê passará por sete cidades, em algumas delas em casas com a capacidade limitada.

                          Nergal, frontman do BEHEMOTH e mente visionária criativa, informa:

                          “Depois de mais de um ano fora dos palcos, não podemos pensar em um retorno melhor  às nossas legiões do que lhes oferecer uma performance de música nova e um evento memorável: uma combinação esmagadora de ARCH ENEMY e BEHEMOTH”.

                          O BEHEMOTH é conhecido por elevar os padrões a cada apresentação de seu show ao vivo – como muitos recentemente testemunharam no evento incrivelmente bem-sucedido “In Absentia Dei”, transmitido ao vivo. Portanto, espere por uma performance nada menos que espetacular.

                          O fundador e guitarrista do ARCH ENEMY, Michael Amott, partilha do mesmo sentimento, afirmando: “Como estamos passando por um período problemático e desafiador ultimamente, creio que todos nós precisamos de algo pelo qual esperar ansiosamente. Uma razão para acreditar, certo? Bem… aqui está ela!”.",
                          address: "Avenida Francisco Matarazzo, 694, São Paulo - SP",
                          image: "https://res.cloudinary.com/dkearav60/image/upload/v1662488480/estabelecimentos/arch_fwtfue.png",
                          genres: "metal",
                          link: "https://www.clubedoingresso.com/evento/archenemy-behemoth-sp")

Event.create!(name: "DESTRUCTION E BURNING WITCHES EM SÃO PAULO",
                          date: "Dom, 18 Set - 18:00",
                          description: "Após anos de espera, os lendários veteranos do thrash alemão, DESTRUCTION, retornarão ao Brasil para uma série de quatros shows que farão parte da turnê latino-americana que celebrará os 40 anos da banda e promoverá o seu incendiário novo álbum, 'Diabolical', lançado em abril de 2022, pela Napalm Records. Além da artilharia pesada desencadeada em seu novo lançamento, não faltarão os inúmeros clássicos do Destruction, cristalizados na história do thrash metal mundial.

                          A tour também será muito especial por contar com a presença inédita no Brasil de outra banda internacional, BURNING WITCHES, grupo totalmente formado por mulheres da cena metal suíça/holandesa, que combina elementos do heavy metal tradicional com power metal. ",
                          address: "Rua Cardeal Arcoverde, 2899, São Paulo - SP",
                          image: "https://res.cloudinary.com/dkearav60/image/upload/v1662488481/estabelecimentos/destruction_xdp9yl.png",
                          genres: "metal",
                          link: "https://www.clubedoingresso.com/evento/destruction-sp")

Event.create!(name: "METAL RELICS FESTIVAL",
                          date: "Sab, 19 Nov - 18:30",
                          description: "A gravadora Metal Relics tem o orgulho em anunciar o primeiro Metal Relics Festival, um festival apenas com bandas brasileiras, que acontecerá no dia 19 de novembro de 2022, no Legends Music Bar, em São Paulo, a partir das 18h30. O festival marca o retorno da lendária banda Wizards aos palcos após 11 anos, além da estreia da banda Caravellus com a nova formação em SP. Outro grande nome do evento é o Aquaria, que se apresenta ao vivo depois de muito tempo. Para completar o line-up, as bandas Living Metal (com participação de Yara Häag) e XFears (com participação de Ciça Moreira) se apresentam mostrando a renovação da cena brasileira.",
                          address: "Rua Inácio Pereira da Rocha, 367, São Paulo - SP",
                          image: "https://res.cloudinary.com/dkearav60/image/upload/v1662488481/estabelecimentos/relics_hcacu2.png",
                          genres: "metal",
                          link: "https://www.sympla.com.br/evento/metal-relics-festival/1596891?lang=PT")

Event.create!(name: "Trovão - Creatures - Inluzt - Biter - Sweet Danger",
                          date: "Dom, 11 Dez - 16:00",
                          description: "Caveira Velha Produções e Metal Daze Apresentam:

                          LIMITADO EM 200 INGRESSOS!

                          Dia 11 de Dezembro de 2022
                          A partir das 16:00 Horas

                          Trovão (Primeira e única apresentação da banda ao vivo)
                          Creatures
                          Inluzt
                          Biter
                          Sweet Danger",
                          address: "Rua Inácio Pereira da Rocha, 367, São Paulo - SP",
                          image: "https://res.cloudinary.com/dkearav60/image/upload/v1662488481/estabelecimentos/creatures_gijs4i.png",
                          genres: "metal",
                          link: "https://www.sympla.com.br/evento/trovao-creatures-inluzt-biter-sweet-danger/1611845")

Event.create!(name: "WEIGHT OF EMPTINESS (CHILE) + CRUCIFIXION BR + LES MÉMOIRES FALL EM SÃO PAULO",
                          date: "Sex, 23 Set - 19:00",
                          description: "UM EVENTO IMPERDÍVEL!

                          Pela primeira vez no Brasil, os chilenos do WEIGHT OF EMPTINESS estarão em São Paulo para um show inesquecível na capital Paulista. Prester a lançar o seu terceiro disco, a banda irá mostrar o por que de ser uma das bandas mais importantes da cena metal chilena dos últimos anos.

                          Na abertura, teremos 2 grandes bandas brasileiras,  a banda de Death / Black Metal Crucifixion BR e os joseenses da Les Mémoires Fall de Doom Metal.

                          Uma oportunidade única de ver uma das principais bandas chilenas no Brasil.

                          Obrigatório apresentação de carteirinha de vacinação, com esquema vacinal completo.",
                          address: "Rua Xiririca, 237, São Paulo - SP",
                          image: "https://res.cloudinary.com/dkearav60/image/upload/v1662488481/estabelecimentos/weight_ttwjpa.png",
                          genres: "metal",
                          link: "https://www.sympla.com.br/evento/weight-of-emptiness-chile-crucifixion-br-les-memoires-fall-em-sao-paulo/1671835")

Event.create!(
  name: "A Obra",
  description: "A Obra Bar Dançante é uma casa noturna localizada em Belo Horizonte.
  Bandas alternativas, independentes e autorais dividem a semana com os melhores dj's da cidade.
  Tem rock, pop, black, rap, soul, eletro, 80's, brega.
  Tem gente interessante e inteligente.
  Tem mais de 80 rótulos de cervejas nacionais e importadas.
  Vem!
  Programação básica:
  Quartas e quintas: shows com as melhores bandas independentes da cena alternativa da BH e do Brasil.
  Sexta e sábados: festas para todos os gostos e estilos, comandadas por alguns dos melhores dj's da cidade.",
  address: "Rua Rio Grande Do Norte 1168, Belo Horizonte, MG, Brazil",
  image: "https://res.cloudinary.com/dkearav60/image/upload/v1662577239/estabelecimentos/aobra.png",
  genres: "rock"
)

Event.create!(
  name: "Deputamadre Club",
  description: "Referência na noite de Belo Horizonte, o Deputamadre se destaca por ter um público fiel que compõe a cena eletrônica local, a programação e feita com os principais djs nacionais e internacionais, pela idéia de educar e respeitar o que já foi e vem sendo feito na cena eletrônica mineira, pela renovação, identidade visual e principalmente, pela atitude de pessoas que fazem do Deputamadre um club sem frescura, GRACIAS!",
  address: "Av Contorno 2028, Belo Horizonte, MG, Brazil",
  image: "https://res.cloudinary.com/dkearav60/image/upload/v1662577428/estabelecimentos/deputa.jpg",
  genres: "electronica"
)

Event.create!(
  name: "Jack Rock Bar",
  description: "Referência no cenário rock de Belo Horizonte desde 2003, o Jack Rock Bar encarna o rock n’ roll em toda a sua estrutura e trajetória. O nome foi inspirado no clássico “The Jack”, da banda australiana AC/DC e o ambiente é totalmente estilizado de forma a transportar o público para uma atmosfera genuinamente rock n’ roll. O palco da casa recebe, de quarta a domingo, grandes shows em homenagem aos maiores mestres do rock em todos os tempos. O Jack foi eleito pela revista VEJA BH – publicação especializada na vida noturna da capital mineira – como a casa de “Melhor Música Ao Vivo” da cidade em 2011 e 2012. Em 2014, recebeu o Prêmio Encontro Gastrô, promovido pela Revista Encontro, na categoria “Melhor Casa para Paquerar em BH”.
  A casa possui sinuca, Sushi Lounge, ar condicionado, TV em todos os ambientes e telão no salão principal, onde acontecem os shows. Total acessibilidade para portadores de deficiência física.",
  address: "Av. do Contorno, 5623, Belo Horizonte, MG, Brazil",
  image: "https://res.cloudinary.com/dkearav60/image/upload/v1662577613/estabelecimentos/jack.jpg",
  genres: "rock"
)

Event.create!(
  name: "XBK",
  description: "Xtreme Barbecue Kings. Beer garden com shows todas as semanas.",
  address: "Rua Vitório Marçola, 184, Belo Horizonte, MG, Brazil",
  image: "https://res.cloudinary.com/dkearav60/image/upload/v1662577804/estabelecimentos/xbk.jpg",
  genres: "rock"
)

Event.create!(
  name: "ROCK DO MERCADO - 7HS OPEN BAR",
  description: "
  O melhor ROCK da CIDADE!

  SERÃO 7 (SETE) HORAS

  OPEN BAR

  Chegou a hora de apreciar
  7 horas da melhor cerveja.

  CERVEJA HEINEKEN

  GINGIBRE (DRINK COM GIN)

  REFRIGERANTE

  ÁGUA

  SUCOS


  OPEN BAR DE HEINEKEN

  O quê ??? OPEN BAR DE HEINEKEN ???

  Isso mesmo, OPEN BAR DE HEINEKEN !!!

  Vamos celebrar a vida, com muuuuita cerveja, música e dança!
  Além disso, tem um monte de coisas boas pra te animar mais ainda:


  ATRAÇÕES

  LUREX

  FOLK

  LOCOMOTIVE

  DJ SEU MUNIZ



  Festa totalmente 100% a prova dágua !
  Estacionamento GRATUITO
  Espaço gastronômico Mercado do Cruzeiro

  Mas vou te contar um segredinho, corre lá que os ingressos estão com aquele precinho super camarada e vão acabar rapidinho !

  Pra ingressos ou mais informações liga pra gente no 3284-0709 ou wpp: (31) 9 8701-7000",
  address: "Rua Opala, 97, Belo Horizonte, MG, Brazil",
  image: "https://res.cloudinary.com/dkearav60/image/upload/v1662578140/estabelecimentos/mercado.png",
  genres: "rock"
)



puts "#{Event.count} events created"
