cinema1 = Cinema.create(cinema_name: "Cinepolis", address: "Av. Insurgentes Sur 1971, CDMX", isOpen: true)
cinema2 = Cinema.create(cinema_name: "Cinemex", address: "Av. Universidad 1000, CDMX", isOpen: true)

room1 = Room.create(cinema: cinema1, room_name: "Sala 1", room_type: "2D")
room2 = Room.create(cinema: cinema1, room_name: "Sala 2", room_type: "3D")

room3 = Room.create(cinema: cinema2, room_name: "Sala 1", room_type: "2D")
room4 = Room.create(cinema: cinema2, room_name: "Sala 2", room_type: "3D")

movie1 = Movie.create(title: "The Matrix", description: "Matrix first part" , duration: 120, genre: "Sci-Fi")
movie2 = Movie.create(title: "The Matrix Reloaded", description: "Matrix second part", duration: 130, genre: "Sci-Fi")
movie3 = Movie.create(title: "The Matrix Revolutions", description: "Matrix third part", duration: 140, genre: "Sci-Fi")

show1 = Show.create(movie: movie1, room: room1, started: "12:00:00", finished: "14:00:00")
show2 = Show.create(movie: movie1, room: room2, started: "15:00:00", finished: "17:00:00")
show3 = Show.create(movie: movie3, room: room3, started: "18:00:00", finished: "20:00:00")
show4 = Show.create(movie: movie2, room: room4, started: "21:00:00", finished: "23:00:00")

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

