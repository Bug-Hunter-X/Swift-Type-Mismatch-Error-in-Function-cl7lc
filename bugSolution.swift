func calculateArea(width: Int, height: Int) -> Int {
    return width * height
}

func calculateAreaSafely(width: Int, height: Int) -> Int? {
    guard let width = width as? Int, let height = height as? Int else {
        return nil // Handle type mismatch gracefully
    }
    return width * height
}

let area1 = calculateArea(width: 10, height: 20) // Correct usage

let area2 = calculateAreaSafely(width: 10, height: "hello" as! Int) // Error Handling

print(area1) // Output: 200
print(area2 ?? 0) // Output: 0