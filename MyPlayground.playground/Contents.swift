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

class SomeClass {
    var count: Int = 0
}

struct SomeStruct {
    var count: Int = 0
}

var class1 = SomeClass()
var class2 = class1
var class3 = class1

class3.count = 2
class1.count

var struct1 = SomeStruct()
var struct2 = struct1
var struct3 = struct1

struct2.count = 3
struct3.count = 4

struct1.count
struct2.count
struct3.count

class Vehicle {
    var currentSpeed = 0.0
    var description: String {
        return "traveling at \(currentSpeed) miles per hour"
    }
    func makeNoise() {
        print("speaker on")
    }
}

/*
 class 클래스 이름: 부모클래스 이름 {
  //하위 클래스 정의
 }
 */

class Bicycle: Vehicle {
    var hasBasket = false
}

var bicycle = Bicycle()
bicycle.currentSpeed
bicycle.currentSpeed = 15.0
bicycle.currentSpeed

class Train: Vehicle {
    override func makeNoise() {
        super.makeNoise()
        print("choo choo")
    }
}

let train = Train()
train.makeNoise()

class Car: Vehicle{
    var gear = 1
    override var description: String {
        return super.description + "in gear \(gear)"
    }
}

let car = Car()
car.currentSpeed = 30.0
car.gear = 2
print(car.description)

class AutomaticCar: Car {
    override var currentSpeed: Double {
        didSet {
            gear = Int(currentSpeed / 10) + 1
        }
    }
}

let automatic = AutomaticCar()
automatic.currentSpeed = 35.0
print("AutomaticCar: \(automatic.description)")

class MediaItem {
    var name: String
    init(name: String) {
        self.name = name
    }
}

class Movie: MediaItem {
    var director: String
    init(name: String, director: String) {
        self.director = director
        super.init(name: name)
    }
}

class Song: MediaItem {
    var artist: String
    init(name: String, artist: String) {
        self.artist = artist
        super.init(name: name)
    }
}

let library = [
 Movie(name: "기생충", director: "봉준호"),
 Song(name: "Butter", artist: "BTS"),
 Movie(name: "올드보이", director: "박찬욱"),
 Song(name: "Wonderwall", artist: "Oasis"),
 Song(name: "Rain", artist: "이적")
]



var movieCount = 0
var songCount = 0

for item in library {
    if item is Movie {
        movieCount += 1
    } else if item is Song {
        songCount += 1
    }
}

print("Media library contains \(movieCount) movie and \(songCount) songs")

for item in library {
    if let movie = item as? Movie {
        print("Movie: \(movie.name), dir. \(movie.director)")
    } else if let song = item as? Song {
        print("Song: \(song.name), by \(song.artist)")
    }
}

//assert문

var num3 = 0
assert(num3 == 0)

num3  = 2
//assert(num3 == 0, "값이 0이 아닙니다")

//guard문
/*
 guard 조건 else {
 // 조건이 false 이면 else 구문이 실행되고
 return or throw or break 를 통해 이 후 코드를 실행하지 않도록 한다.
 }
 */

func guardTest(num4: Int?) {
    guard let num4 = num4 else { return }
    print(num4)
}

guardTest(num4: 2)
guardTest(num4: nil)

//프로토콜
/*
 protocol 이름 {
 
 }
 */

protocol SomeProtocol {
    
}

protocol SomeProtocol2 {
    
}

struct SomeStructure2: SomeProtocol, SomeProtocol2 {
    
}

/*
 class SomeClass: SomeSuperclass, FirstProtocol, AnotherProtocol
    {
 
 }
 */

protocol FirstProtocol {
    var name: Int { get set}
    var age: Int { get }
}

protocol AnotherProtocol {
    static var someTypeProperty: Int { get set }
}

protocol FullyNames {
    var fullName: String { get set }
    func printFullName()
}

struct Person: FullyNames {
    var fullName: String
    
    func printFullName() {
        print(fullName)
    }
}

protocol SomeProtocol3 {
    func someTypeMethod()
}

protocol SomeProtocol4 {
    init(someParameter: Int)
}

protocol SomeProtocol5 {
    init()
}

class SomeClass2: SomeProtocol5 {
    required init() {
    }
}
//익스텐션

/*
 extension SomeType {
    // 추가 기능
 }
 */

extension Int {
    var isEven: Bool {
        return self % 2 == 0
    }
    
    var isOdd: Bool {
        return self % 2 == 1
    }
}

var number3 = 3
number.isOdd
number.isEven

extension String {
    func convertToInt() -> Int? {
        return Int(self)
    }
}

var string2 = "0"
string2.convertToInt()

//열거형

enum CompassPoint: String {
    case north = "북"
    case south = "남"
    case east = "동"
    case west = "서"
}

var direction = CompassPoint.east
direction = .west

switch direction {
case .north:
    print(direction.rawValue)
    
case .south:
    print(direction.rawValue)
    
case .east:
    print(direction.rawValue)
    
case .west:
    print(direction.rawValue)
}

let direction2 = CompassPoint(rawValue: "남")

enum PhoneError {
    case unknown
    case batteryLow(String)
}

let error = PhoneError.batteryLow("배터리가 곧 방전됩니다.")

switch error {
case .batteryLow(let message):
    print(message)
    
case .unknown:
    print("알 수 없는 에러입니다.")
}

//옵셔널 체이닝

struct Developer {
    let name: String
}

struct Company {
    let name: String
    var developer: Developer?
}

var developer = Developer(name: "han")
var company = Company(name: "Gunter", developer: developer)
print(company.developer)
print(company.developer?.name)
print(company.developer!.name)

//try-catch

enum PhoneError1: Error {
    case unknown
    case batteryLow(batteryLevel: Int)
}

//throw PhoneError1.batteryLow(batteryLevel: 20)

func checkPhoneBatteryStatus(batteryLevel: Int) throws -> String {
    guard batteryLevel != -1 else { throw PhoneError1.unknown }
    guard batteryLevel > 20 else { throw
        PhoneError1.batteryLow(batteryLevel: 20)}
    return "배터리 상태가 정상입니다."
}

/*
 do {
  try 오류 발생 가능코드
 } catch 오류 패턴 {
  처리 코드
 }
 */

do {
    try checkPhoneBatteryStatus(batteryLevel: 20)
} catch PhoneError1.unknown {
    print("알 수 없는 에러입니다.")
} catch PhoneError1.batteryLow(let batteryLebel) {
    print("배터리 전원 부족 남은 배터리 : \(batteryLebel)%")
} catch {
    print("그 외 오류 발생 : \(error)")
}

let status = try? checkPhoneBatteryStatus(batteryLevel: 30)
print(status)

let status2 = try! checkPhoneBatteryStatus(batteryLevel: 30)
print(status2)


/*
 { (매개 변수) -> 리턴 타입 in
    실행 구문
 }
 */

let hello1 = { () -> () in
    print("hello")
}

hello1()

let hello2 = { (name: String) -> String in
    return "Hello, \(name)"
}

hello2("Gunter")

func doSomething(closure: () -> ()) {
    closure()
}

doSomething(closure: { () -> () in
    print("hello")
})

doSomething() {
    print("hello2")
}
func doSomething2() -> () -> () {
    return { () -> () in
        print("hello4")
    }
}

doSomething2()()

func doSomething2(success: () -> (), fail: () -> ()) {
    
}



func doSomething3(closure: (Int, Int, Int) -> Int) {
    closure(1,2,3)
}

doSomething3(closure: { (a, b, c) in
    return a+b+c
})

doSomething3(closure: {
    return $0+$1+$2
})

doSomething3(closure: {
    $0+$1+$2
})

doSomething3() {
    $0+$1+$2
}

doSomething3 {
    $0+$1+$2
}

//고차함수

//map
let numbers2 = [0,1,2,3]
let mapArray = numbers2.map { (number) -> Int in
    return number * 2
}
print("map \(mapArray)")

// filter
let intArray = [10,5,20,13,4]
let filterArray = intArray.filter { $0 > 5 }
print("filter \(filterArray)")

// reduce
let someArray = [1,2,3,4,5]
let reduceResult = someArray.reduce(2) {
    (result: Int, element: Int) -> Int in
    return result + element
}

print("reduce \(reduceResult)")
