Movie.destroy_all
List.destroy_all
User.destroy_all

user1 = User.create(email: 'laurent@gmail.com', password: "123456")
user2 = User.create(email: 'toto@gmail.com', password: "123456")

Movie.create(title: "Wonder Woman 1984", preview: "Wonder Woman comes into conflict with the Soviet Union during the Cold War in the 1980s", poster_url: "https://image.tmdb.org/t/p/original/8UlWHLMpgZm9bx6QYh0NFoq67TZ.jpg", rating: 6.9)
Movie.create(title: "The Shawshank Redemption", preview: "Framed in the 1940s for double murder, upstanding banker Andy Dufresne begins a new life at the Shawshank prison", poster_url: "https://image.tmdb.org/t/p/original/q6y0Go1tsGEsmtFryDOJo3dEmqu.jpg", rating: 8.7)
Movie.create(title: "Titanic", preview: "101-year-old Rose DeWitt Bukater tells the story of her life aboard the Titanic.", poster_url: "https://image.tmdb.org/t/p/original/9xjZS2rlVxm8SFx8kPC3aIGCOYQ.jpg", rating: 7.9)
Movie.create(title: "Ocean's Eight", preview: "Debbie Ocean, a criminal mastermind, gathers a crew of female thieves to pull off the heist of the century.", poster_url: "https://image.tmdb.org/t/p/original/MvYpKlpFukTivnlBhizGbkAe3v.jpg", rating: 7.0)
Movie.create(title: "Magnolia", preview: "An epic mosaic of many interrelated characters in search of happiness, forgiveness, and meaning in the San Fernando Valley.", poster_url: "https://image.tmdb.org/t/p/original/MvYpKlpFukTivnlBhizGbkAe3v.jpg", rating: 7.7)
Movie.create(title: "Schindler's List", preview: "The true story of how businessman Oskar Schindler saved over a thousand Jewish lives from the Nazis while they worked as slaves in his factory during World War II.", poster_url: "https://image.tmdb.org/t/p/original/MvYpKlpFukTivnlBhizGbkAe3v.jpg", rating: 8.6)
Movie.create(title: "Jackie Brown", preview: "Jackie Brown is a flight attendant who gets caught in the middle of smuggling cash into the country for her gunrunner boss.", poster_url: "https://www.themoviedb.org/t/p/w1280/ewbLUXvm4riZL0aepy90o0vMesn.jpg", rating: 7.3)

List.create(name: "Action", user: user1)
List.create(name: "Drama", user: user2)