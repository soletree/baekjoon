extension String {
    func toList() -> [String] {
    var result: [String] = []
        for index in (0..<self.count) {
            let startIndex = self.index(self.startIndex, offsetBy: index)
            result.append(String(self[startIndex]))
        }
        return result
      
    }
}

import Foundation

let firstNum = Int(readLine()!)!
let secondNum = readLine()!.toList()
var result = 0
var power = 0

for num in secondNum.reversed() {
    let subResult = (Int(num)! * firstNum)
    print(subResult)
    result += subResult * Int(pow(10.0, Double(power)))
    power += 1
}
print(result)