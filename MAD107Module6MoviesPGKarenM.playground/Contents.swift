import Cocoa

var str = "Hello, playground"

//.. Movie Array - array of Tuples
//.. Note: myRating contains a comma(,) in some data instances for a letter without a plus(+) or minus(-) so that sorting occurs properly...
//..    ie. "A," => "A"
var movieArray = [(IMDB:"tt0325980", movieName:"Pirates of the Caribbean: The Curse of the Black Pearl",
                   myRating:"A,", myComments:"Great family movie!"),
                  (IMDB:"tt1201607", movieName:"Harry Potter and the Deathly Hallows: Part 2",
                   myRating:"B+", myComments:"Great family movie but the ending didn't totaly follow the book!"),
                  (IMDB:"tt0076759", movieName:"Star Wars: Episode IV - A New Hope",
                   myRating:"A+", myComments:"Great scifi movie! Started all of the great \"space\" movies :)"),
                  (IMDB:"tt0120737", movieName:"The Lord of the Rings: The Fellowship of the Ring",
                   myRating:"A+", myComments:"Simply awesome!"),
                  (IMDB:"tt0167261", movieName:"The Lord of the Rings: The Two Towers",
                   myRating:"A-", myComments:"A little slower than the others...!"),
                  (IMDB:"tt0167260", movieName:"The Lord of the Rings: The Return of the King",
                   myRating:"A+", myComments:"Great finish to the trilogy!"),
                  (IMDB:"tt0120762", movieName:"Mulan",
                   myRating:"A+", myComments:"Love this movie! I've watched it many, many times with my daughter <3"),
                  (IMDB:"tt1596363", movieName:"The Big Short",
                   myRating:"B,", myComments:"Great movie about the banks and dishonest lending..."),
                  (IMDB:"tt0414387", movieName:"Pride & Prejudice",
                   myRating:"A+", myComments:"One of my favorites! Imo, better than the Colin Firth version"),
                  (IMDB:"tt0320691", movieName:"Underworld",
                   myRating:"B-", myComments:"Great action movie! Good SciFi series. A little bloody though..."),
                  (IMDB:"tt0112130", movieName:"Pride and Prejudice",
                   myRating:"C,", myComments:"This is the one with Colin Firth. It's way too long and kind of slow...")
]

//.. Used MCH303 Android App to pick off data for this dictionary(key/value-tuple)  :)
var movieDictionary = ["tt0325980": (movieName:"Pirates of the Caribbean: The Curse of the Black Pearl", movieYear:"2003", movieType:"movie",
                                     moviePosterURL:"https://m.media-amazon.com/images/M/MV5BNGYyZGM5MGMtYTY2Ni00M2Y1LWIzNjQtYWUzM2VlNGVhMDNhXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_SX300.jpg"),
                       "tt1201607": (movieName:"Harry Potter and the Deathly Hallows: Part 2", movieYear:"2011", movieType:"movie",
                                     moviePosterURL:"https://m.media-amazon.com/images/M/MV5BMjIyZGU4YzUtNDkzYi00ZDRhLTljYzctYTMxMDQ4M2E0Y2YxXkEyXkFqcGdeQXVyNTIzOTk5ODM@._V1_SX300.jpg"),
                       "tt0076759": (movieName:"Star Wars: Episode IV - A New Hope", movieYear:"1977", movieType:"movie",
                                     moviePosterURL:"https://m.media-amazon.com/images/M/MV5BNzVlY2MwMjktM2E4OS00Y2Y3LWE3ZjctYzhkZGM3YzA1ZWM2XkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_SX300.jpg"),
                       "tt0120737": (movieName:"The Lord of the Rings: The Fellowship of the Ring", movieYear:"2001", movieType:"movie",
                                     moviePosterURL:"https://m.media-amazon.com/images/M/MV5BN2EyZjM3NzUtNWUzMi00MTgxLWI0NTctMzY4M2VlOTdjZWRiXkEyXkFqcGdeQXVyNDUzOTQ5MjY@._V1_SX300.jpg"),
                       "tt0167261": (movieName:"The Lord of the Rings: The Two Towers", movieYear:"2002", movieType:"movie",
                                     moviePosterURL:"https://m.media-amazon.com/images/M/MV5BNGE5MzIyNTAtNWFlMC00NDA2LWJiMjItMjc4Yjg1OWM5NzhhXkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_SX300.jpg"),
                       "tt0167260": (movieName:"The Lord of the Rings: The Return of the King", movieYear:"2003", movieType:"movie",
                                     moviePosterURL:"https://m.media-amazon.com/images/M/MV5BNzA5ZDNlZWMtM2NhNS00NDJjLTk4NDItYTRmY2EwMWZlMTY3XkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_SX300.jpg"),
                       "tt0120762": (movieName:"Mulan", movieYear:"1998", movieType:"movie",
                                     moviePosterURL:"https://m.media-amazon.com/images/M/MV5BODkxNGQ1NWYtNzg0Ny00Yjg3LThmZTItMjE2YjhmZTQ0ODY5XkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_SX300.jpg"),
                       "tt1596363": (movieName:"The Big Short", movieYear:"2015", movieType:"movie",
                                     moviePosterURL:"https://m.media-amazon.com/images/M/MV5BNDc4MThhN2EtZjMzNC00ZDJmLThiZTgtNThlY2UxZWMzNjdkXkEyXkFqcGdeQXVyNDk3NzU2MTQ@._V1_SX300.jpg"),
                       "tt0414387": (movieName:"Pride & Prejudice", movieYear:"2005", movieType:"movie",
                                     moviePosterURL:"https://m.media-amazon.com/images/M/MV5BMTA1NDQ3NTcyOTNeQTJeQWpwZ15BbWU3MDA0MzA4MzE@._V1_SX300.jpg"),
                       "tt0112130": (movieName:"Pride and Prejudice", movieYear:"1995", movieType:"series",
                                     moviePosterURL:"https://m.media-amazon.com/images/M/MV5BMDM0MjFlOGYtNTg2ZC00MmRkLTg5OTQtM2U5ZjUyYTgxZThiXkEyXkFqcGdeQXVyNTAyODkwOQ@@._V1_SX300.jpg"),
                       "tt0320691": (movieName:"Underworld", movieYear:"2003", movieType:"movie",
                                     moviePosterURL:"https://m.media-amazon.com/images/M/MV5BMTk1OTc2ZmUtODU0Yy00NGJiLWJmNmQtODI0MzBjODk3MjI4L2ltYWdlL2ltYWdlXkEyXkFqcGdeQXVyMjUzOTY1NTc@._V1_SX300.jpg")
]

//....................................................................................................................................................

func printMyMovies() {
    
    let sortedMovieDictionary = movieDictionary.sorted(by: {$0.value.movieName < $1.value.movieName})
    //print(sortedMovieDictionary)
    print("\n\nHere are my movies SORTED BY MOVIE NAME and my associated REVIEWS if there are any:")
    print("----------------------------------------------------------------------------------------------------------")
    
    //..get movies from movieDictionary
    for (k,v) in sortedMovieDictionary {
        print("\t Name: \(v.movieName)")
        print("\t\t Year: \(v.movieYear) Type: \(v.movieType)")
        
        //..get/print associated reviews from movieArray
        printMyReview(imdbNumber: k)
    
        print("..........................................................................................................")
    }
}

//....................................................................................................................................................

func printMyReview(imdbNumber: String) {
    
    //.. get/print movie review info from movieArray where the incoming IMDB number matches the IMDB number in the tuple in the array (ie. in the array of tuples)
    for item in movieArray where item.IMDB == imdbNumber {
       
        print("\t\t\t My Rating: \(item.myRating)")
        print("\t\t\t My Movie Comments: \(item.myComments)")
        print("..........................................................................................................")
    }
}

//....................................................................................................................................................

func printMyMoviesByRating() {
    
        //.. sort the movieArray which is an array of tuples... reference tuple fields below by name
        let sortedMovieArray = movieArray.sorted(by: {$0.myRating < $1.myRating})
        //print(sortedMovieArray])
        print("\n\nHere are my movies REVIEWS SORTED BY RATING:")
        print("----------------------------------------------------------------------------------------------------------")
    
        for item in sortedMovieArray {
            
            print("\t Name: \(item.movieName)")
            
            let tempRating = item.myRating
            
            //.. comma was used in data for sorting purposes... here it is "removed" for printing....
            switch tempRating {
            case "A,","B,","C,","D,","F,":
                let mySubstring = tempRating.prefix(1)
                print("\t\t My Rating: \(mySubstring)")
            default:
                print("\t\t My Rating: \(item.myRating)")
            }
            
            //print("\t\t My Raing: \(item.myRating)")
            print("\t\t My Movie Comments: \(item.myComments)")
            print("..........................................................................................................")
        }
}

//....................................................................................................................................................


printMyMovies()
printMyMoviesByRating()

