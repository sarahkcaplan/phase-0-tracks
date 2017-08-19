travel = {
  "USA": {
    "NYC": {
      "attraction" => "Empire State Building",
      "food"=> "Bao Haus",
      "transportation": ["subway", "car", "buses"]
      },
    "LA": {
      "attraction" => "beach",
      "food" => "ramen",
      "transportation" => "car"},
    "SF" => "never been",
    "ABQ" => "lived here"
    },
  "South_Africa": {
    "cities": ["Johannesburg", "Victoria", "Port Elizabeth"]
  }
}

p travel[:USA][:NYC][:transportation][2]
p travel[:South_Africa][:cities][0]