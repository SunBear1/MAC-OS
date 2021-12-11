
import Foundation

enum Filter:String{
    case Halki = "black"
    case Loreto = "green"
    case Gazette = "red"
    case Kilda = "dark-blue"
    case Lapis = "light-blue"
}

class Tweet{
    var name:String{ get { return "" } }
    var date:String
    var stats: Reaction
    init(date: String, 
        stats: Reaction){
        self.date = date
        self.stats = stats
    }
}
class Image: Tweet{
    override var name: String{ get { return "Image" } }
    var numberOfPhotos:Int
    var filter: Filter
    init(numberOfPhotos: Int, 
        filter: Filter, 
        date: String, 
        stats: Reaction){
        self.numberOfPhotos = numberOfPhotos
        self.filter = filter
        super.init(date: date, stats: stats)
    }
}
class Poll: Tweet{
    override var name:String{ get { return "Poll" } }
    var numberOfVotes: Int
    var numberOfOptions: Int
    init(numberOfVotes: Int, 
        numberOfOptions: Int, 
        date:String, 
        stats:Reaction){
        self.numberOfVotes = numberOfVotes
        self.numberOfOptions = numberOfOptions
        super.init(date: date, stats: stats)
    }
}
class Video: Tweet{
    override var name:String{ get { return "Video" } }
    var numberOfViews: Int
    var durationOfVideo: Double
    init(numberOfViews: Int, 
        durationOfVideo:Double, 
        date:String, 
        stats:Reaction){
        self.numberOfViews = numberOfViews
        self.durationOfVideo = durationOfVideo
        super.init(date: date, stats: stats)
    }
}
struct Reaction : Decodable {
    enum CodingKeys: String, CodingKey {
     case numberOfLikes, numberOfComments, numberOfReTweets
   }
    var numberOfLikes=0
    var numberOfReTweets=0
    var numberOfComments=0
    init(numberOfLikes: Int,numberOfReTweets: Int,numberOfComments: Int){
        self.numberOfComments = numberOfComments
        self.numberOfLikes = numberOfLikes
        self.numberOfReTweets = numberOfReTweets
    }
}
struct User {
    var userName:String
    var name:String
    var Followers: Int
    var Following: Int
    var tweet: Tweet
    init(userName: String,name: String,Followers: Int,Following: Int, tweet:Tweet){
        self.userName = userName
        self.name = name
        self.Followers = Followers
        self.Following = Following
        self.tweet = tweet
    }
}

func printTweet(_ user: User){
    var tmp=0
    var outputLikes = String(user.tweet.stats.numberOfLikes)
    var outputComments = String(user.tweet.stats.numberOfComments)
    var outputReTweets = String(user.tweet.stats.numberOfReTweets)
    if (user.tweet.stats.numberOfLikes > 1000)
    {
        tmp = user.tweet.stats.numberOfLikes/1000
        outputLikes = "\(tmp)k"
    }
    if (user.tweet.stats.numberOfComments > 1000)
    {
        tmp = user.tweet.stats.numberOfComments/1000
        outputComments = "\(tmp)k"
    }
    if (user.tweet.stats.numberOfReTweets > 1000)
    {
        tmp = user.tweet.stats.numberOfReTweets/1000
        outputReTweets = "\(tmp)k"
    }
    if (user.tweet.stats.numberOfLikes > 1000000)
    {
        tmp = user.tweet.stats.numberOfLikes/1000000
        outputLikes = "\(tmp)M"
    }
    if (user.tweet.stats.numberOfComments > 1000000)
    {
        tmp = user.tweet.stats.numberOfComments/1000000
        outputComments = "\(tmp)M"
    }
    if (user.tweet.stats.numberOfReTweets > 1000000)
    {
        tmp = user.tweet.stats.numberOfReTweets/1000000
        outputReTweets = "\(tmp)M"
    }
    print("User name: \( user.name), Post type: \(user.tweet.name), Publish date: \(user.tweet.date), Number of likes: \(outputLikes), Number of comments: \(outputComments), Number of ReTweets: \(outputReTweets)")
}

func printProfile(_ user: User){
    var num:Int
    var outputFollowing = String(user.Followers)
    var outputFollowers = String(user.Following)
    if (user.Followers > 1000)
    {
        num = user.Followers/1000
        outputFollowers = "\(num)k"
    }
    if (user.Following > 1000)
    {
        num = user.Following/1000
        outputFollowing = "\(num)k"
    }
    print("User name: \( user.name), User username: \(user.userName), User number of followers: \(outputFollowers),  User number of following: \(outputFollowing)")
}
//JSON PART
let JSONREACTIONS = """
{
    "numberOfLikes": 24121,
    "numberOfReTweets":123456,
     "numberOfComments": 99
}
"""
let jsonData1 = JSONREACTIONS.data(using: .utf8)!
let reaction_json: Reaction = try! JSONDecoder().decode(Reaction.self, from: jsonData1)

var users = [User]()

users.append(User(userName: "Malajski",name: "Łukasz",Followers: 123, Following: 456, tweet: Image(numberOfPhotos: 2, filter: Filter.Halki, date: "24.02.2020", stats: Reaction(numberOfLikes: 213787653, numberOfReTweets: 854, numberOfComments: 10000))))
users.append(User(userName: "Eska5",name: "Jakub",Followers: 789, Following: 112, tweet: Poll(numberOfVotes:783,numberOfOptions:4,date: "16.04.2020",stats: Reaction(numberOfLikes: 2761115, numberOfReTweets: 231, numberOfComments: 13500))))
users.append(User(userName: "f0rce",name: "Piotr",Followers: 345, Following: 678, tweet: Video(numberOfViews:88821,durationOfVideo:1.23,date: "05.06.2019",stats: Reaction(numberOfLikes: 42, numberOfReTweets: 11, numberOfComments: 86))))
users.append(User(userName: "Chovy",name: "Wiktor",Followers:2137,Following: 420, tweet: Video(numberOfViews:12882,durationOfVideo:3.21,date: "06.05.2006",stats: reaction_json)))
for user in users{
    print("---------------------------------------------------------")
    printTweet(user)
    print("---------------------------------------------------------")
    printProfile(user)
    print("---------------------------------------------------------")
}



