var alphaDict: [String : Int] = [:]
let word = readLine()!

for char in word {
    alphaDict[char.uppercased(), default: 0] += 1
}

let keysOfAlphaDict = alphaDict.keys.sorted{ alphaDict[$0]! > alphaDict[$1]! }

if keysOfAlphaDict.count > 1 {
    if alphaDict[keysOfAlphaDict[0]] == alphaDict[keysOfAlphaDict[1]] {
        print("?")
    }
    else {
        print(keysOfAlphaDict[0])
    }
}
else {
  print(keysOfAlphaDict[0])  
}