// Our movie model
class Movie {
  final int id, year, numOfRatings, criticsReview, metascoreRating;
  final double rating;
  final List<String> genra;
  final String plot, title, poster, backdrop;
  final List<Map> cast;

  Movie({
    this.poster,
    this.backdrop,
    this.title,
    this.id,
    this.year,
    this.numOfRatings,
    this.criticsReview,
    this.metascoreRating,
    this.rating,
    this.genra,
    this.plot,
    this.cast,
  });
}

// our demo data movie data
List<Movie> movies = [
  Movie(
    id: 1,
    title: "Bloodshot",
    year: 2020,
    poster: "assets/images/poster_1.jpg",
    backdrop: "assets/images/backdrop_1.jpg",
    numOfRatings: 150212,
    rating: 7.3,
    criticsReview: 50,
    metascoreRating: 76,
    genra: ["Action", "Drama"],
    plot: plotText,
    cast: [
      {
        "orginalName": "Vin Diesel",
        "movieName": "Bloodshot",
        "image": "assets/images/actor_1.png",
      },
      {
        "orginalName": "Eiza González",
        "movieName": "KT (as Eiza Gonzalez)",
        "image": "assets/images/actor_2.png",
      },
      {
        "orginalName": "Sam Heughan",
        "movieName": "Jimmy Dalton",
        "image": "assets/images/actor_3.png",
      },
      {
        "orginalName": "Toby Kebbell",
        "movieName": "	Martin Axe",
        "image": "assets/images/actor_4.png",
      },
    ],
  ),
  Movie(
    id: 2,
    title: "Black Panther ",
    year: 2018,
    poster: "assets/images/poster_2.jpg",
    backdrop: "assets/images/backdrop_2.jpg",
    numOfRatings: 642549,
    rating: 7.3,
    criticsReview: 90,
    metascoreRating: 83,
    genra: ["Action", "Adventure", "Sci-Fi"],
    plot: plotText1,
    cast: [
      {
        "orginalName": "Chadwick Boseman",
        "movieName": "T'Challa",
        "image": "assets/images/actor_5.png",
      },
      {
        "orginalName": "Michael B. Jordan",
        "movieName": "Erik Killmonger",
        "image": "assets/images/actor_6.png",
      },
      {
        "orginalName": "Lupita Nyong'o",
        "movieName": "	Nakia",
        "image": "assets/images/actor_7.png",
      },
      {
        "orginalName": "Danai Gurira",
        "movieName": "Okoye",
        "image": "assets/images/actor_8.png",
      },
    ],
  ),
  Movie(
    id: 3,
    title: "Onward",
    year: 2020,
    poster: "assets/images/poster_3.jpg",
    backdrop: "assets/images/backdrop_3.jpg",
    numOfRatings: 150212,
    rating: 7.6,
    criticsReview: 70,
    metascoreRating: 79,
    genra: ["Action", "Drama"],
    plot: plotText2,
    cast: [
      {
        "orginalName": "James Mangold",
        "movieName": "Director",
        "image": "assets/images/actor_9.png",
      },
      {
        "orginalName": "Matt Damon",
        "movieName": "Carroll",
        "image": "assets/images/actor_10.png",
      },
      {
        "orginalName": "Christian Bale",
        "movieName": "Ken Miles",
        "image": "assets/images/actor_11.png",
      },
      {
        "orginalName": "Caitriona Balfe",
        "movieName": "Mollie",
        "image": "assets/images/actor_12.png",
      },
    ],
  ),
  Movie(
    id: 4,
    title: "Love and Monsters",
    year: 2020,
    poster: "assets/images/poster_4.jpg",
    backdrop: "assets/images/backdrop_4.jpg",
    numOfRatings: 63734,
    rating: 7.0,
    criticsReview: 58,
    metascoreRating: 83,
    genra: ["Action","Adventure", "Comedy"],
    plot: plotText3,
    cast: [
      {
        "orginalName": "Dylan O'Brien",
        "movieName": "Joel",
        "image": "assets/images/actor_13.png",
      },
      {
        "orginalName": "Jessica Henwick",
        "movieName": "Aimee",
        "image": "assets/images/actor_14.png",
      },
      {
        "orginalName": "Michael Rooker",
        "movieName": "Clyde",
        "image": "assets/images/actor_15.png",
      },
      {
        "orginalName": "Dan Ewing",
        "movieName": "Cap",
        "image": "assets/images/actor_16.png",
      },
    ],
  ),
  Movie(
    id: 5,
    title: "The Godfather",
    year: 1972,
    poster: "assets/images/poster_5.jpeg",
    backdrop: "assets/images/backdrop_5.jpg",
    numOfRatings: 1648989,
    rating: 9.2,
    criticsReview: 62,
    metascoreRating: 89,
    genra: ["Crime","Drama"],
    plot: plotText4,
    cast: [
      {
        "orginalName": "Marlon Brando",
        "movieName": "Don Vito Corleone",
        "image": "assets/images/actor_17.png",
      },
      {
        "orginalName": "Al Pacino",
        "movieName": "Michael Corleone",
        "image": "assets/images/actor_18.png",
      },
      {
        "orginalName": "James Caan",
        "movieName": "Sonny Corleone",
        "image": "assets/images/actor_19.png",
      },
      {
        "orginalName": "Richard S. Castellano",
        "movieName": "Clemenza",
        "image": "assets/images/actor_20.png",
      },
    ],
  ),
  Movie(
    id: 6,
    title: "The Lion King",
    year: 1994,
    poster: "assets/images/poster_6.jpg",
    backdrop: "assets/images/backdrop_6.jpg",
    numOfRatings: 957016,
    rating: 8.5,
    criticsReview: 69,
    metascoreRating: 84,
    genra: ["Animation","Adventure", "Drama"],
    plot: plotText5,
    cast: [
      {
        "orginalName": "Rowan Atkinson",
        "movieName": "Zazu (voice)",
        "image": "assets/images/actor_21.png",
      },
      {
        "orginalName": "Matthew Broderick",
        "movieName": "Simba (voice)",
        "image": "assets/images/actor_22.png",
      },
      {
        "orginalName": "Niketa Calame-Harris",
        "movieName": "	Young Nala (voice)",
        "image": "assets/images/actor_23.png",
      },
      {
        "orginalName": "Jim Cummings",
        "movieName": "Ed (voice)",
        "image": "assets/images/actor_24.png",
      },
    ],
  ),
  Movie(
    id: 7,
    title: "Toy Story",
    year: 1995,
    poster: "assets/images/poster_7.jpg",
    backdrop: "assets/images/backdrop_7.jpg",
    numOfRatings: 900568,
    rating: 8.3,
    criticsReview: 54,
    metascoreRating: 78,
    genra: ["Animation","Adventure", "Comedy"],
    plot: plotText6,
    cast: [
      {
        "orginalName": "Tom Hanks",
        "movieName": "Woody (voice)",
        "image": "assets/images/actor_25.png",
      },
      {
        "orginalName": "Tim Allen",
        "movieName": "Buzz Lightyear (voice)",
        "image": "assets/images/actor_26.png",
      },
      {
        "orginalName": "Don Rickles",
        "movieName": "Mr. Potato Head (voice)",
        "image": "assets/images/actor_27.png",
      },
      {
        "orginalName": "Jim Varney",
        "movieName": "Slinky Dog (voice)",
        "image": "assets/images/actor_28.png",
      },
    ],
  ),
  Movie(
    id: 8,
    title: "klaus",
    year: 2019,
    poster: "assets/images/poster_8.png",
    backdrop: "assets/images/backdrop_8.jpg",
    numOfRatings: 110848,
    rating: 8.2,
    criticsReview: 55,
    metascoreRating: 79,
    genra: ["Animation","Adventure", "Comedy"],
    plot: plotText7,
    cast: [
      {
        "orginalName": "Jason Schwartzman",
        "movieName": "Jesper (voice)",
        "image": "assets/images/actor_29.png",
      },
      {
        "orginalName": "J.K. Simmons",
        "movieName": "Klaus (voice)",
        "image": "assets/images/actor_30.png",
      },
      {
        "orginalName": "Rashida Jones",
        "movieName": "	Alva (voice)",
        "image": "assets/images/actor_31.png",
      },
      {
        "orginalName": "Will Sasso",
        "movieName": "Mr. Ellingboe (voice)",
        "image": "assets/images/actor_32.png",
      },
    ],
  ),
  Movie(
    id: 9,
    title: "Monsters, Inc.",
    year: 2001,
    poster: "assets/images/poster_9.jpg",
    backdrop: "assets/images/backdrop_9.jpg",
    numOfRatings: 826895,
    rating: 8.1,
    criticsReview: 60,
    metascoreRating: 85,
    genra: ["Animation","Adventure", "Comedy"],
    plot: plotText8,
    cast: [
      {
        "orginalName": "John Goodman",
        "movieName": "Sullivan (voice)",
        "image": "assets/images/actor_33.png",
      },
      {
        "orginalName": "Billy Crystal",
        "movieName": "Mike (voice)",
        "image": "assets/images/actor_34.png",
      },
      {
        "orginalName": "Mary Gibbs",
        "movieName": "	Boo (voice)",
        "image": "assets/images/actor_35.png",
      },
      {
        "orginalName": "Steve Buscemi",
        "movieName": "	Randall (voice)",
        "image": "assets/images/actor_36.png",
      },
    ],
  ),
  Movie(
    id: 10,
    title: "Soul",
    year: 2020,
    poster: "assets/images/poster_10.jpg",
    backdrop: "assets/images/backdrop_10.jpg",
    numOfRatings: 225968,
    rating: 8.1,
    criticsReview: 68,
    metascoreRating: 82,
    genra: ["Animation","Adventure", "Comedy"],
    plot: plotText9,
    cast: [
      {
        "orginalName": "Jamie Foxx",
        "movieName": "Joe (voice)",
        "image": "assets/images/actor_37.png",
      },
      {
        "orginalName": "Tina Fey",
        "movieName": "22 (voice)",
        "image": "assets/images/actor_38.png",
      },
      {
        "orginalName": "Graham Norton",
        "movieName": "Moonwind (voice)",
        "image": "assets/images/actor_39.png",
      },
      {
        "orginalName": "Rachel House",
        "movieName": "Terry (voice)",
        "image": "assets/images/actor_40.png",
      },
    ],
  ),

];

String plotText =
    "American car designer Carroll Shelby and driver Kn Miles battle corporate interference and the laws of physics to build a revolutionary race car for Ford in order.";

String plotText1 =
    "T'Challa, heir to the hidden but advanced kingdom of Wakanda, must step forward to lead his people into a new future and must confront a challenger from his country's past.";

String plotText2 =
    "Two elven brothers embark on a quest to bring their father back for one day.";

String plotText3 =
    "Seven years after he survived the monster apocalypse, lovably hapless Joel leaves his cozy underground bunker behind on a quest to reunite with his ex.";

String plotText4 =
    "An organized crime dynasty's aging patriarch transfers control of his clandestine empire to his reluctant son.";

String plotText5 =
    "After the murder of his father, a young lion prince flees his kingdom only to learn the true meaning of responsibility and bravery.";

String plotText6 =
    "A cowboy doll is profoundly threatened and jealous when a new spaceman figure supplants him as top toy in a boy's room.";

String plotText7 =
    "A simple act of kindness always sparks another, even in a frozen, faraway place. When Smeerensburg's new postman, Jesper, befriends toymaker Klaus, their gifts melt an age-old feud and deliver a sleigh full of holiday traditions.";

String plotText8 =
    "In order to power the city, monsters have to scare children so that they scream. However, the children are toxic to the monsters, and after a child gets through, 2 monsters realize things may not be what they think.";

String plotText9 =
    "After landing the gig of a lifetime, a New York jazz pianist suddenly finds himself trapped in a strange land between Earth and the afterlife.";