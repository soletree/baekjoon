var count = 0
let words = readLine()!.split(separator: " ")
            .map{ word -> (String) in  
                if String(word) != "" {
                    count += 1
                    }
                return String(word)
            }

print(count)