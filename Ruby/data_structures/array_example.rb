# Another array example

strings = ["My String", "My pokemon"]

myWord = strings[0] # The value of myWord is "My String"

pikachu = strings[1]  # The value of pikachu is "My pokemon"

# 2D Arrays

basic2d = [ [10,20,30], [11,12,13], [100,200,300] ]

firstArray = basic2d[0] # [10,20,30]

twenty = firstArray[1] # 20

alsoTwenty = basic2d[0][1] # 20

# Example of nested info with JSON, 3D structure

json = {
	"hey" => "guy",
	"anumber" => 243,
	"anobject" => {
		"whoa" => "nuts",
		"anarray" => [1,2,"thr<h1>ee"],
		"more" => "stuff"
	},
	"awesome" => true,
	"bogus" => false,
	"meaning" => nil,
	"japanese" => "nonsense"
}

anything = json["anobject"]["anarray"][1]  # get the 2
puts anything  # anythin == 2