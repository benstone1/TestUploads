func notQuiteLisp(input: String) -> String {
    var floorCounter = 0
    var charCounter = 0
    var hasEnteredBasement = false

    for paren in input {
        if paren == "(" {
            floorCounter += 1
        } else if paren == ")" {
            floorCounter -= 1
            if floorCounter == -1 {
                hasEnteredBasement = true
            }
        }
        if !hasEnteredBasement {
            charCounter += 1
        }
    }
    return "Santa is on floor \(floorCounter)." + " \(hasEnteredBasement ? "Santa has entered the basement at position \(charCounter)" : "Santa did not enter the basement.")"
}
