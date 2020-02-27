import Cocoa

var str = "Hello, playground"

//.. Player Dictionary
//var playersDictionary = ["91": (name:"DRAKE CAGGIULA",age:"25",bday:"Jun 20, 1994",height:"5'10",country:"CAN"),
//                         "22": (name:"RYAN CARPENTER",age:"29",bday:"Jan 18, 1991",height:"6'0",country:"USA"),
//                         "77": (name:"KIRBY DACH",age:"19",bday:"Jan 21, 2001",height:"6'4",country:"CAN"),
//                         "12": (name:"ALEX DEBRINCAT",age:"22",bday:"Dec 18, 1997",height:"5'7",country:"USA"),
//                         "36": (name:"MATTHEW HIGHMORE",age:"23",bday:"Feb 27, 1996",height:"5'11",country:"CAN"),
//                         "64": (name:"DAVID KAMPF",age:"25",bday:"Jan 12, 1995",height:"6'2",country:"CZE"),
//                         "88": (name:"PATRICK KANE",age:"31",bday:"Nov 19, 1988",height:"5'10",country:"USA"),
//                         "8": (name:"DOMINIK KUBALIK",age:"24",bday:"Aug 21, 1995",height:"6'2",country:"CZE"),
//                         "30": (name:"MALCOLM SUBBAN",age:"26",bday:"Dec 21, 1993",height:"6'2",country:"CAN")
//]

//.. Movie Array - array of Tuples
var movieArray = [(IMDB:"tt0325980", movieName:"Pirates of the Caribbean: The Curse of the Black Pearl",
                   myRating:"A+", myComments:"Great family movie!"),
                  (IMDB:"tt1201607", movieName:"Harry Potter and the Deathly Hallows: Part 2",
                   myRating:"B", myComments:"Great family movie but the ending didn't totaly follow the book!"),
                  (IMDB:"tt0076759", movieName:"Star Wars: Episode IV - A New Hope",
                   myRating:"A+", myComments:"Great scifi movie! Started all of the great \"space\" movies :)"),
                  (IMDB:"tt0120737", movieName:"The Lord of the Rings: The Fellowship of the Ring",
                   myRating:"A+", myComments:"Simply awesome!"),
                  (IMDB:"tt0167261", movieName:"The Lord of the Rings: The Two Towers",
                   myRating:"B", myComments:"A little slower than the others...!"),
                  (IMDB:"tt0167260", movieName:"The Lord of the Rings: The Return of the King",
                   myRating:"A+", myComments:"Great finish to the trilogy!"),
                  (IMDB:"tt0120762", movieName:"Mulan",
                   myRating:"A+", myComments:"Love this movie! I've watched it many, many times with my daughter <3"),
                  (IMDB:"tt1596363", movieName:"The Big Short",
                   myRating:"B", myComments:"Great movie about the banks and dishonest lending..."),
                  (IMDB:"tt0414387", movieName:"Pride & Prejudice",
                   myRating:"A+", myComments:"One of my favorites! Imo, better than the Colin Firth version"),
                  (IMDB:"tt0320691", movieName:"Underworld",
                   myRating:"B-", myComments:"Great action movie! Good SciFi series. A little bloody though..."),
                  
]

//.. Used MCH303 Android App to pick off data for this dictionary(key/tuple)  :)
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
                       "tt0320691": (movieName:"Underworld", movieYear:"2003", movieType:"movie",
                                     moviePosterURL:"https://m.media-amazon.com/images/M/MV5BMTk1OTc2ZmUtODU0Yy00NGJiLWJmNmQtODI0MzBjODk3MjI4L2ltYWdlL2ltYWdlXkEyXkFqcGdeQXVyMjUzOTY1NTc@._V1_SX300.jpg")

]

let movieTuple = movieDictionary.values
let sortedMovieTuple = movieTuple.sorted(by: {$0.movieName < $1.movieName})
//print(movieTuple)
print("Here are my movies sorted by name:")
print("------------------------------------------------------------------------------------------------\n")


for item in sortedMovieTuple {
    print("\t Name: \(item.movieName)")
    print("\t Year:\(item.movieYear) Type:\(item.movieType)")
    print("\n................................................................................................\n")
}


//let dictValInc = dict.sorted(by: { $0.value < $1.value })
//let testVar8ValInc = playersDictionary.sorted(by: { $0.value.name < $1.value.name })
//
//for (k,v) in testVar8ValInc where v.country == "USA" {
//    print("\n******* \(v.name) is number \(k) and is \(v.height) tall")
//}
//..***************************************************************************************************************************************
//func sortByAge() {
//
//    print("***************************** Sort by Age *****************************************\n")
//
//    //let sortedPlayerDictionaryAge = playersDictionary.sorted(by: {$0.value.age < $1.value.age})
//
//    //****  this part is the important part!!!!!!
//    let playersTuple = playersDictionary.values
//
//    let sortedTupleByAge = playersTuple.sorted(by: {$0.age < $1.age})
//    print("\n******* Sorted by Age ********\n")
//    print("    AGE    PLAYER NAME")
//    print("    ---    -----------\n")
//    var counterAge = 0
//    var counterA = 0
//    for item in sortedTupleByAge {
//        //for item in sortedPlayerDictionaryAge {
//        //print("\t\(item.value.age) | \(item.value.name) ")
//        print("\t\(item.age) | \(item.name) ")
//        counterA += 1
//        counterAge += Int(item.age) ?? 0
//    }
//
//    let averageAge = counterAge/counterA
//    print("\nThe average age of the players is: \(averageAge)")
//}

func printMyMovies() {
    
}
