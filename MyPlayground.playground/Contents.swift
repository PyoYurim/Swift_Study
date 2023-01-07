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

/*
함수
func 함수명(파라미터 이름: 데이터 타입) -> 변환 타입 {
 return 반환 값
}
 */

func sum(a: Int, b: Int) -> Int {
    return a+b
}

sum(a: 5, b: 3)

func hello() -> String {
    return "hello"
}
hello()

func printName() {
    
}

func greeting(friend: String, me: String = "gunter") {
    print("Hello, \(friend)! I'm \(me)")
}

greeting(friend: "Albert")

/*
 func 함수 이름(전달인자 레이블: 매개변수 이름: 매개변수 타입,전달인자 레이블: 매개변수 이름: 매개변수 타입...) -> 반환 타입 {
 }
 */

func sendMessage(from myName: String, to name: String) -> String {
    return "Hello \(name)! I'M \(myName)"
}

sendMessage(from: "Gunter", to: "Json")

func sendMessage(_ name: String) -> String {
    return "Hello \(name)"
}

sendMessage("변백현")

func sendMessage(me: String, friends: String...) -> String {
    return "Hello \(friends)! I'm \(me)"
}

sendMessage(me: "Gunter", friends: "Json", "Albert", "Stella")

//조건문

/*
 if 조건문 {
  실행할 구문
 }
 */

let age = 20

if age < 19 {
    print("미성년자 입니다.")
}

/*
 if 조건식 {
  조건식이 만족하면 해당 구문 실행
 } else {
  만족하지 않으면 해당 구문 실행
 }
 */

if age < 19 {
    print("미성년자")
} else {
    print("성년자")
}

/*
 if 조건식1 {
 // 조건식1을 만족할 때 실행할 구문
 } else if 조건식2 {
 // 조건식2를 만족할 때 실행할 구문
 } else {
 // 아무 조건식도 만족하지 않을 때 실행할 구문
 }
 */

let animal = "pig"

if animal == "dog" {
    print("강아지 사료 주기")
} else if animal == "cat" {
    print("고양이 사료 주기")
} else {
    print("해당하는 동물 사료가 없음")
}

/*
 switch 비교대상 {
 case 패턴1:
 // 패턴1 일치할 때 실행되는 구문
 case 패턴2, 패턴3:
 //패턴2, 3이 일치할 때 실행되는 구문
 default:
 //어느 비교 패턴과도 일치하지 않을 때 실행되는 구문
 }
 */

let color = "red"

switch color {
case "blue":
    print("파란색 입니다.")

case "green":
    print("초록색 입니다.")

case "yellow":
    print("노랑색 입니다.")

default:
    print("찾는 색상이 없습니다.")
}

let temperature = 30

switch temperature {
case -20...9:
    print("겨울 입니다.")

case 10...14:
    print("가을 입니다.")
    
case 15...25:
    print("봄 입니다.")
    
case 26...35:
    print("여름 입니다.")
    
default:
    print("이상 기후입니다.")
}

//반복문

/*
 for 루프상수 in 순회대상 {
 // 실행할 구문..
 }
 */

for i in 1...4 {
    print(i)
}

let array = [1,2,3,4,5]

for i in array {
    print(i)
}

/*
 while 조건식 {
 // 실행할 구문
 }
 */

var num = 5

while num < 10 {
    num+=1
}

num

/*
 repeat {
 // 실행할 구문
 } while 조건식
 */

var x = 6

repeat {
    x+=2
} while x < 5

print(x)

//옵셔널

var name: String?

var optionalName: String? = "Gunter"

//var requiredName: String = optionalName

//옵셔널 바인딩

var number2: Int? = 3
print(number2!)

if let result = number2 {
    print(result)
} else {
    
}

func test() {
    let number3: Int? = 5
    guard let result = number3 else { return }
    print(result)
}

test()

let value: Int? = 6
if value == 6 {
    print("value가 6입니다.")
} else {
    print("value가 6이 아닙니다.")
}
//묵시적 옵셔널 해제
let string = "12"
var stringToInt: Int! = Int(string)
print(stringToInt + 1)

//구조체

struct User {
    var nickname: String
    var age: Int
    
    func information() {
        print("\(nickname) \(age)")
    }
}

var user = User(nickname: "gunter", age: 23)

user.nickname
user.nickname = "ablert"
user.nickname

user.information()

//클래스

class Dog {
    var name: String = ""
    var age: Int = 0
    
    func introduce() {
        print("name \(name) age \(age)")
    }
}

var dog = Dog()
dog.name = "CoCo"
dog.age = 3
dog.name
dog.age

dog.introduce()

/*
 init(매개변수: 타입, ...) {
    // 프로퍼티 초기화
    // 인스턴스 생성시 필요한 설정을 해주는 코드 작성
 }
 */

class People {
    var nickname: String
    var age: Int
    
    init(nickname: String, age: Int) {
        self.nickname = nickname
        self.age = age
    }
    
    init(age: Int) {
        self.nickname = "ablert"
        self.age = age
    }
    
    deinit {
        print("deint user")
    }
}

var people = User(nickname: "gunter", age: 23)
user.nickname
user.age

var people2 = People(age: 27)
people2.nickname
people2.age

var people3: People? = People(age: 23)
people3 = nil

//프로퍼티
struct Bear {
    var name: String
    let gender: String
}

var bear = Bear(name: "gunter", gender: "Male")
print(bear)

bear.name = "변백현"

let bear2 = Bear(name: "gunter", gender: "male")

class Panda {
    var name: String
    let gender: String
    
    init(name: String, gender: String) {
        self.name = name
        self.gender = gender
    }
}

let panda = Panda(name: "json", gender: "male")
panda.name = "gunter"
print(panda.name)

struct Stock {
    var averagePrice: Int
    var quantity: Int
    var purchasePrice: Int {
        get {
            return averagePrice * quantity
        }
        set(newPrice) {
            averagePrice = newPrice / quantity
        }
    }
}

var stock = Stock(averagePrice: 2300, quantity: 3)
print(stock)
stock.purchasePrice
stock.purchasePrice = 3000
stock.averagePrice

class Account {
    var credit: Int = 0 {
        // 소괄호 이름 지정
        willSet {
            print("잔액이 \(credit)원에서 \(newValue)원으로 변경될 예정입니다.")
        }
        
        didSet {
            print("잔액이 \(oldValue)원에서 \(credit)원으로 변경되었습니다.")
        }
    }
}

var account = Account()
account.credit = 1000

struct SomeStructure {
    static var storedTypeProperty = "Some vlaue." // 스토어
    static var computedTypeProperty: Int { //컴퓨디드
        return 1
    }
}

SomeStructure.computedTypeProperty
SomeStructure.storedTypeProperty
SomeStructure.storedTypeProperty = "hello"
SomeStructure.storedTypeProperty
