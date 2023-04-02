let t = Int(readLine()!)!
var count = 1
for _ in (0..<t) {
    let numList = readLine()!.split(separator: " ").map{ Int(String($0))! }
    print("Case #\(count): \(numList[0]+numList[1])")
    count += 1
}