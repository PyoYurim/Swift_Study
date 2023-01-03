import Foundation
//상수와 변수

//상수
// let 상수명: 데이터 타입 = 값
let a: Int = 100

//변수
// var 변수명: 데이터 타입 = 값
var b: Int = 200
b = 300

//데이터 타입

// Int
var someInt: Int = -100
someInt = 100

// UInt
var someUInt: UInt = 200

// Float
var someFloat: Float = 1.1
someFloat = 1
print(someFloat)

// Double
var someDouble: Double = 1.1
someDouble = 1

// Bool
var someBool: Bool = true
someBool = false

// Character
var someCharacter: Character = "가"
someCharacter = "A"

// String
var someString: String = "안녕하세요"

// 타입 추론
var number = 10

// 컬렉션 타입 - 데이터들의 집합 묶음

// Array
var numbers: Array<Int> = Array<Int>()
numbers.append(1)
numbers.append(2)
numbers.append(3)

numbers[0]
numbers[1]

numbers.insert(4, at: 2)
numbers

numbers.remove(at: 0)
numbers

// Dictionary
//var dic: Dictionary<String, Int> = Dictionary<String, Int>()
var dic: [String: Int] = ["변백현": 1]
dic["김철수"] = 3
dic["김민지"] = 5
dic

dic["김민지"] = 6
dic

dic.removeValue(forKey: "김민지")
dic

// Set
var set: Set = Set<Int>()

set.insert(10)
set.insert(20)
set.insert(30)
set.insert(30)
set.insert(30)
set

set.remove(20)
set
