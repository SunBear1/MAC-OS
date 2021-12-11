import Foundation
//na stronie http://online.swiftplayground.run konsola ucina kilka ostatnich linijek kodu więc na samym końcu dodałem 
//kilka printów, aby temu zapobiec
//ex.1 1
print("")
print("ex.1 1")
var a = 5
var b = 10
var c = a + b
var r = "\(a) + \(b) = \(c)"
print(r)

//ex.1 2
print("")
print("ex.1 2")
let string = "Gdansk University of Technology"
var gwiazdka_string = string.replacingOccurrences(of: "n", with: "⭐️", options: .literal, range: nil)
print(gwiazdka_string)

//ex.1 3
print("")
print("ex.1 3")
let name = "Łukasz Niedźwiadek"
let odwrocony = String(name.reversed())
print(odwrocony)

//ex.2 1
print("")
print("ex.2 1")
for i in 1...11
{
    print("I will pass this course with best mark, because Swift is great!")
}

//ex.2 2
print("")
print("ex.2 2")
let n = 5
var x = 0
for i in 1...n
{
    x = i * i
    print(x)
}

//ex.2 3
print("")
print("ex.2 3")
let m = 5
for i in 1...m
{
    for i in 1...m
    {
        print("@", terminator: "")
    }
    print("")
}

//ex.3 1
print("")
print("ex.3 1")
var numbers = [5, 10, 20, 15, 80, 13]
var max = 0
for number in numbers
{
    if(number > max)
    {
         max = number
    }  
}
print(max)

//ex.3 2
print("")
print("ex.3 2")
var output = ""
for number in numbers.reversed()
{
    output = "\(number) "
    print(output, terminator: "")
}
print("")

//ex.3 3
print("")
print("ex.3 3")
var allNumbers = [10, 20, 10, 11, 13, 20, 10, 30]
var unique = [Int]()
var unikat : Bool = true
for number in allNumbers
{
    unikat = true
    for uni in unique
    {
        if(number == uni)
        {
            unikat = false
        }     
    }
    if(unikat == true)
    {
        unique.append(number)
    }
    
}
print(unique)

//ex.4 1
print("")
print("ex.4 1")
var number = 10
var divisors = Set<Int>()
for i in 1...number
{
    if(number % i == 0)
    {
        divisors.insert(i)
    }
}
print(divisors.sorted())

//ex.5 1
print("")
print("ex.5 1")
var flights: [[String: String]] = [
    [
        "flightNumber" : "AA8025",
        "destination" : "Copenhagen"
    ],
    [
        "flightNumber" : "BA1442",
        "destination" : "New York"
    ],
    [
        "flightNumber" : "BD6741",
        "destination" : "Barcelona"
    ]
]
var flightNumbers = [String]()
for data in flights
{
    if let number = data["flightNumber"]
    {
        flightNumbers.append(number)
    }
}
print(flightNumbers)

//ex.5 2
print("")
print("ex.5 2")
var names = ["Hommer","Lisa","Bart"]
var fullname = [[String: String]]()
var tmp_fullname = [String: String]()
for name in names
{
    tmp_fullname["lastName"] = "Simpson"
    tmp_fullname["firstName"] = name
    fullname.append(tmp_fullname)
}
print(fullname)

print("ucina linijki")
print("ucina linijki")
print("ucina linijki")
    