cinema1 = Cinema.create(cinema_name: "Cinepolis Gran Patio Texcoco", address: "Av. Hidalgo 300, Santa Cruz de Arriba, 56130 Santa Cruz de Arriba, Méx.", isOpen: true)
cinema2 = Cinema.create(cinema_name: "Cinemex Texcoco", address: "Av. Juárez Nte. 304, Centro, 56100 Texcoco de Mora, Méx.", isOpen: true)

room1 = Room.create(cinema: cinema1, room_name: "Sala 1", room_type: "2D")
room2 = Room.create(cinema: cinema1, room_name: "Sala 2", room_type: "3D")
room3 = Room.create(cinema: cinema1, room_name: "Sala 3", room_type: "VIP")

room4 = Room.create(cinema: cinema2, room_name: "Sala 1", room_type: "2D")
room5 = Room.create(cinema: cinema2, room_name: "Sala 2", room_type: "3D")
room6 = Room.create(cinema: cinema2, room_name: "Sala 3", room_type: "VIP")

movie1 = Movie.create(title: "Toy Story", description: "Una divertida aventura animada sobre juguetes que cobran vida y enfrentan desafíos mientras aprenden sobre amistad y lealtad." , duration: 180, genre: "Animación")
movie2 = Movie.create(title: "Star Wars: Episodio III", description: "La caída de Anakin Skywalker hacia el lado oscuro y el surgimiento de Darth Vader en un épico capítulo galáctico.", duration: 140, genre: "Sci-Fi")
movie3 = Movie.create(title: "Maléfica", description: "La historia jamás contada de la icónica villana, explorando su origen, traición y redención en un mundo mágico.", duration: 97, genre: "Fantasía")	
movie4 = Movie.create(title: "Buscando a Nemo", description: "Un pez payaso emprende un viaje épico por el océano para rescatar a su hijo perdido, lleno de humor y emoción.", duration: 100, genre: "Animación")
movie5 = Movie.create(title: "El Señor de los Anillos: El Retorno del Rey", description: "La batalla final por la Tierra Media y el épico viaje de Frodo para destruir el Anillo Único.", duration: 201, genre: "Fantasía")
movie6 = Movie.create(title: "Harry Potter y el Cáliz de Fuego", description: "Harry participa en un peligroso torneo mágico mientras enfrenta oscuros peligros y el regreso de Lord Voldemort.", duration: 157, genre: "Fantasía")

show1 = Show.create(movie: movie1, room: room1, started: "12:00:00", finished: "14:00:00")
show2 = Show.create(movie: movie1, room: room1, started: "12:00:00", finished: "14:00:00")
show3 = Show.create(movie: movie1, room: room1, started: "12:00:00", finished: "14:00:00")

show4 = Show.create(movie: movie2, room: room2, started: "15:00:00", finished: "17:00:00")
show5 = Show.create(movie: movie2, room: room2, started: "18:00:00", finished: "20:00:00")
show6 = Show.create(movie: movie2, room: room2, started: "21:00:00", finished: "23:00:00")

show7 = Show.create(movie: movie3, room: room3, started: "12:00:00", finished: "14:00:00")
show8 = Show.create(movie: movie3, room: room3, started: "12:00:00", finished: "14:00:00")
show9 = Show.create(movie: movie3, room: room3, started: "12:00:00", finished: "14:00:00")

show10 = Show.create(movie: movie4, room: room4, started: "15:00:00", finished: "17:00:00")
show11 = Show.create(movie: movie4, room: room4, started: "18:00:00", finished: "20:00:00")
show12 = Show.create(movie: movie4, room: room4, started: "21:00:00", finished: "23:00:00")

show13 = Show.create(movie: movie5, room: room5, started: "12:00:00", finished: "14:00:00")
show14 = Show.create(movie: movie5, room: room5, started: "12:00:00", finished: "14:00:00")
show15 = Show.create(movie: movie5, room: room5, started: "12:00:00", finished: "14:00:00")

show16 = Show.create(movie: movie6, room: room6, started: "15:00:00", finished: "17:00:00")
show17 = Show.create(movie: movie6, room: room6, started: "18:00:00", finished: "20:00:00")
show18 = Show.create(movie: movie6, room: room6, started: "21:00:00", finished: "23:00:00")

room1.seats.create(row: "A", number: 1, taken: false)
room1.seats.create(row: "A", number: 2, taken: false)
room1.seats.create(row: "A", number: 3, taken: false)
room1.seats.create(row: "B", number: 1, taken: false)
room1.seats.create(row: "B", number: 2, taken: false)
room1.seats.create(row: "B", number: 3, taken: false)

room2.seats.create(row: "A", number: 1, taken: false)
room2.seats.create(row: "A", number: 2, taken: false)
room2.seats.create(row: "A", number: 3, taken: false)
room2.seats.create(row: "B", number: 1, taken: false)
room2.seats.create(row: "B", number: 2, taken: false)
room2.seats.create(row: "B", number: 3, taken: false)

room3.seats.create(row: "A", number: 1, taken: false)
room3.seats.create(row: "A", number: 2, taken: false)
room3.seats.create(row: "A", number: 3, taken: false)
room3.seats.create(row: "B", number: 1, taken: false)
room3.seats.create(row: "B", number: 2, taken: false)
room3.seats.create(row: "B", number: 3, taken: false)

room4.seats.create(row: "A", number: 1, taken: false)
room4.seats.create(row: "A", number: 2, taken: false)
room4.seats.create(row: "A", number: 3, taken: false)
room4.seats.create(row: "B", number: 1, taken: false)
room4.seats.create(row: "B", number: 2, taken: false)
room4.seats.create(row: "B", number: 3, taken: false)

room5.seats.create(row: "A", number: 1, taken: false)
room5.seats.create(row: "A", number: 2, taken: false)
room5.seats.create(row: "A", number: 3, taken: false)
room5.seats.create(row: "B", number: 1, taken: false)
room5.seats.create(row: "B", number: 2, taken: false)
room5.seats.create(row: "B", number: 3, taken: false)

room6.seats.create(row: "A", number: 1, taken: false)
room6.seats.create(row: "A", number: 2, taken: false)
room6.seats.create(row: "A", number: 3, taken: false)
room6.seats.create(row: "B", number: 1, taken: false)
room6.seats.create(row: "B", number: 2, taken: false)
room6.seats.create(row: "B", number: 3, taken: false)

