import Cocoa

var str = "Hello, playground"

//.. Player Dictionary
var playersDictionary = ["91": (name:"DRAKE CAGGIULA",age:"25",bday:"Jun 20, 1994",height:"5'10",country:"CAN"),
                         "22": (name:"RYAN CARPENTER",age:"29",bday:"Jan 18, 1991",height:"6'0",country:"USA"),
                         "77": (name:"KIRBY DACH",age:"19",bday:"Jan 21, 2001",height:"6'4",country:"CAN"),
                         "12": (name:"ALEX DEBRINCAT",age:"22",bday:"Dec 18, 1997",height:"5'7",country:"USA"),
                         "36": (name:"MATTHEW HIGHMORE",age:"23",bday:"Feb 27, 1996",height:"5'11",country:"CAN"),
                         "64": (name:"DAVID KAMPF",age:"25",bday:"Jan 12, 1995",height:"6'2",country:"CZE"),
                         "88": (name:"PATRICK KANE",age:"31",bday:"Nov 19, 1988",height:"5'10",country:"USA"),
                         "8": (name:"DOMINIK KUBALIK",age:"24",bday:"Aug 21, 1995",height:"6'2",country:"CZE"),
                         "30": (name:"MALCOLM SUBBAN",age:"26",bday:"Dec 21, 1993",height:"6'2",country:"CAN")
]



//let dictValInc = dict.sorted(by: { $0.value < $1.value })
//let testVar8ValInc = playersDictionary.sorted(by: { $0.value.name < $1.value.name })
//
//for (k,v) in testVar8ValInc where v.country == "USA" {
//    print("\n******* \(v.name) is number \(k) and is \(v.height) tall")
//}
//..***************************************************************************************************************************************
func sortByAge() {
    
    print("***************************** Sort by Age *****************************************\n")
    
    //let sortedPlayerDictionaryAge = playersDictionary.sorted(by: {$0.value.age < $1.value.age})
    
    //****  this part is the important part!!!!!!
    let playersTuple = playersDictionary.values
    
    let sortedTupleByAge = playersTuple.sorted(by: {$0.age < $1.age})
    print("\n******* Sorted by Age ********\n")
    print("    AGE    PLAYER NAME")
    print("    ---    -----------\n")
    var counterAge = 0
    var counterA = 0
    for item in sortedTupleByAge {
        //for item in sortedPlayerDictionaryAge {
        //print("\t\(item.value.age) | \(item.value.name) ")
        print("\t\(item.age) | \(item.name) ")
        counterA += 1
        counterAge += Int(item.age) ?? 0
    }
    
    let averageAge = counterAge/counterA
    print("\nThe average age of the players is: \(averageAge)")
}

