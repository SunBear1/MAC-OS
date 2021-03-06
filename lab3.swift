class City {
  var id: Int
  var name: String
  var description: String
  var latitude: Double
  var longitude: Double
  var tags = [String]()
  var locations = [Location]()
  
  init(id:Int, name:String, description:String,latitude:Double,longitude:Double,tags:[String], locations:[Location]){
        self.id = id
        self.name = name
        self.description = description
        self.latitude = latitude
        self.longitude = longitude
        self.tags = tags
        self.locations = locations
        
    }
}

class Location {
  var id: Int
  var type: String
  var name: String
  var rating: Int
  init(id:Int, type:String,name:String, rating:Int){
        self.id = id
        self.type = type
        self.name = name
        self.rating = rating
    }
}

var cities = [City]()



cities.append(City(id:1,name:"Warsaw",description:"Mermaid",latitude:52.14,longitude:21.01,tags:["party","old","Europe"],
                   locations: [Location(id:1, type:"Pub",name:"Pod rozbrykanym kucykiem",rating:5),
                               Location(id:2, type:"Restaurant",name:"Słonecznik",rating: 4),
                               Location(id:3, type:"Cafe",name:"Pączuś",rating: 5)]))
							   
cities.append(City(id:2,name:"Athens",description:"Akropol",latitude:37.58,longitude:23.72,tags:["music","Europe","old"],
                   locations: [Location(id:1, type:"Restaurant",name:"Dionizos",rating:2),
                               Location(id:2, type:"Museum",name:"Apollo",rating: 4),
                               Location(id:3, type:"Monument",name:"Zeus",rating: 3)]))
							   
cities.append(City(id:3,name:"Los Angeles",description:"Hollywood",latitude:34.05,longitude:-118.24,tags:["music","party","USA"],
                   locations: [Location(id:1, type:"Pub",name:"Drunk Englishman",rating:3),
                               Location(id:2, type:"Restaurant",name:"Cat",rating: 4),
                               Location(id:3, type:"Monument",name:"Funny bench",rating: 4)]))								   

cities.append(City(id:4,name:"San Fransico",description:"Golden Gate",latitude:37.45,longitude:-122.43,tags:["old","party","USA"],
                   locations: [Location(id:1, type:"Pub",name:"Drunk Bear",rating:5),
                               Location(id:2, type:"Restaurant",name:"Flower",rating: 5), 
							   Location(id:3, type:"Museum",name:"Tram museum",rating: 5)]))

cities.append(City(id:5,name:"Paris",description:"Eiffel Tower",latitude:48.5,longitude:2.34,tags:["old","music","Europe"],
                   locations: [Location(id:1, type:"Monument",name:"Eiffel Tower",rating:5),
                               Location(id:2, type:"Restaurant",name:"Wine",rating: 2), 
							   Location(id:3, type:"Museum",name:"Louvre",rating: 5)]))
							   
cities.append(City(id:6,name:"Hong kong",description:"Skyscraper",latitude:22.30,longitude:114.17,tags:["sport","modern","party"],
                   locations: [Location(id:1, type:"Pub",name:"Nie mam pomysłu",rating:1),
                               Location(id:2, type:"Restaurant",name:"Monika",rating: 5), 
							   Location(id:3, type:"Museum",name:"New",rating: 2)]))

cities.append(City(id:7,name:"New York",description:"Liberty Statue",latitude:40.73,longitude:-73.93,tags:["music","USA","party"],
                   locations: [Location(id:1, type:"Cafe",name:"Manhattan",rating:4),
                               Location(id:2, type:"Restaurant",name:"Polar beat",rating: 2), 
							   Location(id:3, type:"Museum",name:"Art museum",rating: 1)]))

cities.append(City(id:8,name:"London",description:"Big Ben",latitude:51.36,longitude:-0.11,tags:["music","Europe","old"],
                   locations: [Location(id:1, type:"Cafe",name:"Tea",rating:2),
                               Location(id:2, type:"Monument",name:"Big Ben",rating: 5), 
							   Location(id:3, type:"Museum",name:"WWII",rating: 3)]))

cities.append(City(id:9,name:"Rome",description:"Coloseum",latitude:41.54,longitude:12.49,tags:["party","Europe","old"],
                   locations: [Location(id:1, type:"Pub",name:"Pizza&beer",rating:3),
                               Location(id:2, type:"Cafe",name:"SPQR",rating: 5), 
							   Location(id:3, type:"Museum",name:"Popes dream",rating: 4)]))
							   
cities.append(City(id:10,name:"Barcelona",description:"Camp nou",latitude:41.39,longitude:2.15,tags:["sport","Europe","seaside"],
                   locations: [Location(id:1, type:"Cafe",name:"Hasta la vista",rating:1),
                               Location(id:2, type:"Monument",name:"Statue",rating: 2), 
							   Location(id:3, type:"Pub",name:"Taco",rating: 5)]))

cities.append(City(id:11,name:"Gdansk",description:"Żuraw",latitude:52.13,longitude:21.01,tags:["seaside","Europe","old"],
                   locations: [Location(id:1, type:"Pub",name:"Spółdzielnia",rating:5),
                               Location(id:2, type:"Restaurant",name:"Ping pong",rating: 5), 
							   Location(id:3, type:"Museum",name:"ECS",rating: 5)]))

cities.append(City(id:12,name:"Moscow",description:"Vodka",latitude:55.45,longitude:37.61,tags:["party","Europe","sport"],
                   locations: [Location(id:1, type:"Restaurant",name:"Napoleon",rating:3),
                               Location(id:2, type:"Monument",name:"Red square",rating: 2), 
							   Location(id:3, type:"Museum",name:"Museum in Russia",rating: 1)]))
							   
cities.append(City(id:13,name:"Vienna",description:"Mozart",latitude:48.12,longitude:16.22,tags:["party","old","Europe"],
                   locations: [Location(id:1, type:"Monument",name:"Church",rating:5),
                               Location(id:2, type:"Restaurant",name:"Schnicel",rating: 4),
                               Location(id:3, type:"Cafe",name:"Icecream&Coffe",rating: 5)]))
							   
cities.append(City(id:14,name:"Stockholm",description:"IKEA",latitude:59.20,longitude:18.06,tags:["seaside","Europe","nature"],
                   locations: [Location(id:1, type:"Restaurant",name:"Spruce",rating:2),
                               Location(id:2, type:"Cafe",name:"Meatball",rating: 4),
                               Location(id:3, type:"Monument",name:"IKEA",rating: 3)]))
							   
cities.append(City(id:15,name:"Dublin",description:"st. Patrik",latitude:53.21,longitude:-6.26,tags:["music","party","Europe"],
                   locations: [Location(id:1, type:"Pub",name:"Whiskey Waterfall",rating:3),
                               Location(id:2, type:"Cafe",name:"Drunk dog",rating: 3),
                               Location(id:3, type:"Monument",name:"Famous Whiskey",rating: 3)]))								   

cities.append(City(id:16,name:"Copenhagen",description:"Lego",latitude:55.41,longitude:12.56,tags:["seaside","party","Europe"],
                   locations: [Location(id:1, type:"Pub",name:"Bricks",rating:1),
                               Location(id:2, type:"Restaurant",name:"Doggo",rating: 4), 
							   Location(id:3, type:"Museum",name:"Trains",rating: 1)]))	
							   
cities.append(City(id:17,name:"Helsinki",description:"Nokia",latitude:60.15,longitude:24.94,tags:["seaside","sport","Europe"],
                   locations: [Location(id:1, type:"Monument",name:"Ice",rating:1),
                               Location(id:2, type:"Restaurant",name:"Warm Bear",rating: 5),
                               Location(id:3, type:"Cafe",name:"Trout",rating: 2)]))
							   
cities.append(City(id:18,name:"Bern",description:"Bear",latitude:46.57,longitude:7.45,tags:["music","Europe","old"],
                   locations: [Location(id:1, type:"Restaurant",name:"Clock",rating:2),
                               Location(id:2, type:"Museum",name:"Swiss cheese museum",rating: 4),
                               Location(id:3, type:"Monument",name:"Swiss cheese monument",rating: 3)]))
							   
cities.append(City(id:19,name:"Austin",description:"Texas",latitude:30.26,longitude:-97.73,tags:["nature","party","USA"],
                   locations: [Location(id:1, type:"Museum",name:"KFC",rating:2),
                               Location(id:2, type:"Restaurant",name:"MCDONALD",rating: 2),
                               Location(id:3, type:"Monument",name:"WENDY'S",rating: 2)]))								   

cities.append(City(id:20,name:"Jerusalem",description:"Betleyem",latitude:31.78,longitude:35.21,tags:["old","music","nature"],
                   locations: [Location(id:1, type:"Pub",name:"Sunflower",rating:2),
                               Location(id:2, type:"Restaurant",name:"Opossum",rating: 4), 
							   Location(id:3, type:"Museum",name:"Grave",rating: 1)]))

func SearchByName(_ searched_name: String)-> Array<City>{
	var CitiesFound = [City]()
    for city in cities
    {
		if(city.name == searched_name)
		{
			CitiesFound.append(city)
		}
    }
	return CitiesFound
}

func SearchByTag(_ searched_tag: String)-> Array<City>{
	var CitiesFound = [City]()
    for city in cities
    {
		for tag in city.tags
		{
			if(tag == searched_tag)
			{
				CitiesFound.append(city)
			}
		}
    }
	return CitiesFound
}

func CalculateDistance(_ cityA: City, _ cityB: City)-> Double
{
	let a = cityB.latitude - cityA.latitude 
	let b = cityB.longitude - cityA.longitude
	let distance = (a * a + b * b).squareRoot()
	return distance
}

func ClosestAndFarthest(_ x: Double, _ y: Double)-> [City]
{ 
	var FarthestCity = cities[0]
	var ClosestCity = cities[0]
	var max = 0.0
	var min = 0.0
	for city in cities
	{
		let a = city.latitude - x
		let b = city.longitude - y

		if((a * a + b * b).squareRoot() > max)
		{
			max = (a * a + b * b).squareRoot()
			FarthestCity = city
			
		}
		if((a * a + b * b).squareRoot() < min)
		{
			min = (a * a + b * b).squareRoot()
			ClosestCity = city
		}
	}
	 return [FarthestCity,ClosestCity]
}

func FarthestCities()->[City]
{
	var distance = 0.0
	var max = 0.0
	var City_1 = cities[0]
	var City_2 = cities[0]
	for city in cities
	{
		for city2 in cities
		{
			if(city.id != city2.id)
			{
				distance = CalculateDistance(city,city2)
				
				if(distance > max)
				{
					max = distance
					City_1 = city
					City_2 = city2
				}
			
			}
	
		}
	
	}
	return [City_1,City_2]
}

func SearchBy5starRestaurant()-> Array<City>
{
	var CitiesFound = [City]()
	for city in cities
	{
		for location in city.locations
		{
			if (location.type == "Restaurant")
			{
				if(location.rating == 5)
				{
					CitiesFound.append(city)
				}
			}
		}
	}
	return CitiesFound
}

func LocationsSortedByRating(_ city: City)-> [Location]
{
	var locations_tmp: [Location] = []
    locations_tmp = city.locations.sorted (by: { $0.rating > $1.rating})
    return locations_tmp
}



func FiveStarLocations()
{
	for city in cities
	{
		var LocationsFound: [String] = []
		var licznik = 0
		for location in city.locations
		{
			if(location.rating == 5)
			{
				licznik = licznik + 1
				LocationsFound.append(location.type + ": " + location.name)
              
			}
		}
		if (licznik > 0)
		{
			print("\n \(city.name) has \(licznik) five star locations which are:\n \(LocationsFound)") 
		}
		else
		{
			print("\n \(city.name) has no five star locations") 
		}
		
	}
}

dump(SearchByName("Austin"))
dump(SearchByTag("seaside"))
print(CalculateDistance(cities[0],cities[1]))
dump(ClosestAndFarthest(50,20))
dump(FarthestCities())
dump(SearchBy5starRestaurant())
dump(LocationsSortedByRating(cities[2]))
dump(FiveStarLocations())

























