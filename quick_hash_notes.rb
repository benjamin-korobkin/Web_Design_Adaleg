grades = {

  "BJ"=>50,
  "Ari"=>66,
  "Yossi"=>99

}

grades = grades.to_a # to_a converts to an array
grades = grades.sort # sorts alphabetically/numerically
grades = grades.to_h # to_h converts back to hash
puts grades
