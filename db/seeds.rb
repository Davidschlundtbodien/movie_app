Actor.create!([
  {first_name: "Chris", last_name: "Tucker", known_for: "Friday", gender: "Male", age: 47, movie_id: 5},
  {first_name: "Bruce", last_name: "Willis", known_for: "Die Hard", gender: "Male", age: 33, movie_id: 5},
  {first_name: "Jackie", last_name: "Chan", known_for: "Rumble in the Bronx", gender: "Male", age: 50, movie_id: 2}
])
Genre.create!([
  {name: "Comedy"},
  {name: "Action"},
  {name: "Horror"},
  {name: "Scifi"}
])
Movie.create!([
  {title: "Tremors", year: 1990, plot: "Repairmen Val McKee (Kevin Bacon) and Earl Bassett (Fred Ward) are tired of their dull lives in the small desert town of Perfection, Nev. But just as the two try to skip town, they happen upon a series of mysterious deaths and a concerned seismologist (Finn Carter) studying unnatural readings below the ground. With the help of an eccentric couple (Reba McEntire, Michael Gross), the group fights for survival against giant, worm-like monsters hungry for human flesh.", director: nil, english: true},
  {title: "Rumble in the Bronx", year: 1995, plot: "Hong Kong policeman Keung (Jackie Chan) arrives in New York for the wedding of his uncle Bill (Bill Tung), a grocer who recently sold his Bronx store to the fetching Elaine (Anita Mui). After a biker gang bursts into the store to wreak havoc, Keung springs into action, giving up his vacation to defend the weak and protect the innocent with his extraordinary martial arts skills. As Keung investigates local gangs, he learns more about a criminal syndicate that needs to be brought to justice.", director: nil, english: true},
  {title: "GoldenEye", year: 1995, plot: "When a powerful satellite system falls into the hands of Alec Trevelyan, AKA Agent 006 (Sean Bean), a former ally-turned-enemy, only James Bond (Pierce Brosnan) can save the world from an awesome space weapon that -- in one short pulse -- could destroy the earth! As Bond squares off against his former compatriot, he also battles Trevelyan's stunning ally, Xenia Onatopp (Famke Janssen), an assassin who uses pleasure as her ultimate weapon.", director: nil, english: true},
  {title: "Commando", year: 1985, plot: "A retired Special Forces colonel tries to save his daughter, who was abducted by his former subordinate.", director: nil, english: true},
  {title: "Silence of the Lambs", year: 1991, plot: "A young F.B.I. cadet (Jodie Foster) must receive the help of an incarcerated and manipulative cannibal killer (Sir Anthony Hopkins) to help catch another serial killer (Ted Levine), a madman who skins his victims.", director: "Jonathan Demme", english: true},
  {title: "The Fifth Element", year: 1997, plot: "In the colorful future, a cab driver unwittingly becomes the central figure in the search for a legendary cosmic weapon to keep Evil and Mr. Zorg at bay.", director: "Luc Besson", english: true}
])
MovieGenre.create!([
  {genre_id: 3, movie_id: 1},
  {genre_id: 4, movie_id: 1},
  {genre_id: 1, movie_id: 2},
  {genre_id: 2, movie_id: 2},
  {genre_id: 2, movie_id: 3},
  {genre_id: 2, movie_id: 4},
  {genre_id: 2, movie_id: 5},
  {genre_id: 1, movie_id: 5},
  {genre_id: 4, movie_id: 5},
  {genre_id: 3, movie_id: 6},
  {genre_id: 4, movie_id: 1}
])
