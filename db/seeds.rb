user1 = User.new(name: "jack")
user2 = User.new(name: "mack")
user3 = User.new(name: "cornpop")

friend1 = Friend.new(name: "joe")

gift1 = Gift.new(name: "bike chains")

user1.password = ("come on")


user1.friends << friend1

friend1.gifts << gift1

user1.save