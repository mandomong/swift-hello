import SwiftUI

// 상수, 변수의 선언
// 상수 선언 키워드 let
// 변수 선언 키워드 var

// 상수의 선언
// let 이름: 타입 = 값

// 변수의 선언
// var 이름: 타입 = 값

// 값의 타입이 명확하다면 타입은 생략 가능
// let 이름 = 값
// var 이름 = 값

let constant:String = "차후에 변경이 불가능한 상수 let"
var variable:String = "차후에 변경이 가능한 변수 var"

variable = "변수는 이렇게 차후에 다른 값을 할당할 수 있지만"
// constant = "상수는 차후에 값을 변경할 수 없습니다"

// 상수 선언 후에 나중에 값 할당하기

// 나중에 할당하려고 하는 상수나 변수는 타입을 꼭 명시해주어야 합니다
let sum: Int
let inputA: Int = 100
let inputB: Int = 200
sum = inputA + inputB

// sum =1 // 그 이후에는 다시 값을 바꿀 수 없음, 오류발생

// 변수도 물론 차후에 할당하는 것이 가능합니다
var nickName: String
nickName = "mandoo"

// 변수는 차후에 다시 다른 값을 할당할 수 있음
nickName = "sook"

// Swift의 기본 데이터 타입
// Bool, Int, UInt, Float, Double, Character, String

// Bool
var someBool: Bool = true
someBool = false
//someBool = 0 // error
//someBool = 1 // error

// Int
var someInt: Int = -100
//someInt = 100.1

// UInt
var someUInt: UInt = 100
//someUInt = -100 // error
//someUInt = someInt

// Float 부동 소수 32bit
var someFloat: Float = 3.14
someFloat = 3

// Double 부동 소수 64bit
var someDouble: Double = 3.14
someDouble = 3
//someDouble = someFloat

// Character
var someCharacter: Character = "🤪"
someCharacter = "A"
//someCharacter = "AAA" // error

// String
var someString: String = "하하하 🤪"
someString = someString + "웃으면 복이와요"
print(someString)

/*
 Any - Swift의 모든 타입을 지칭하는 키워드
 AnyObject - 모든 클래스 타입을 지칭하는 프로토콜
 nil - 없음을 의미하는 키워드
 */

//MARK: - Any
var someAny: Any = 100
someAny = "어떤 타입도 수용 가능합니다"
someAny = 123.12

//let someDouble: Double = someAny // error

//MARK: - AnyObject

class SomeClass {}

var someAnyObject: AnyObject = SomeClass()

//someAnyObject = 123.12

//MARK: - nil
//null, NULL, Null과 유사
//someAny = nil
//someAnyObject = nil

/* 컬렉션 타입 */
/* Array, Dictionary, Set */

/*
 Array - 순서가 있는 리스트 컬렉션
 Dictionary - 키와 값의 쌍으로 이루어진 컬렉션
 Set - 순서가 없고, 멤버가 유일한 컬렉션
 */

//MARK: - Array
// 빈 Int Array 생성
var integers: Array<Int> = Array<Int>()
integers.append(1)
integers.append(100)
//integers.append(101.1) // error

integers.contains(100)
integers.contains(99)

//integers.remove(at: 0)
integers.removeLast()
integers.removeAll()

integers.count
//integers[0] // error

// Array<Double>와 [Double]는 동일한 표현
// 빈 Double Array 생성
var doubles: Array<Double> = [Double]()

// 빈 String Array 생성
var strings: [String] = [String]()

// 빈 Character Array 생성
// []는 새로운 빈 Array
var characters: [Character] = []

// let을 사용하여 Array를 선언하면 불변 Array
let immutableArray = [1,2,3]

//immutableArray.append(4)
//immutableArray.removeAll()


//MARK: - Dictionary

//Key가 String 타입이고 Value가 Any인 빈 Dictionary 생성
var anyDictionary: Dictionary<String, Any> = [String: Any]()
anyDictionary["someKey"] = "value"
anyDictionary["anotherKey"] = 100

anyDictionary
anyDictionary.removeValue(forKey: "anotherKey")
anyDictionary

anyDictionary["someKey"] = nil
anyDictionary


let emptyDictionary: [String: String] = [:]
let initializedDictionary: [String: String] = ["name":"mandoo", "gender":"male"]
initializedDictionary

//let someValue: String = initializedDictionary["name"]

//MARK: - Set

// 빈 Int Set 생성
var integerSet: Set<Int> = Set<Int>()
integerSet.insert(1)
integerSet.insert(100)
integerSet.insert(99)
integerSet.insert(99)
integerSet.insert(99)

integerSet
integerSet.contains(1)
integerSet.remove(100)
integerSet.removeFirst()

integerSet.count

let setA: Set<Int> = [1,2,3,4,5]
let setB: Set<Int> = [3,4,5,6,7]

let union: Set<Int> = setA.union(setB)
let sortedUnion: [Int] = union.sorted()

let intersection: Set<Int> = setA.intersection(setB)
let subtracting: Set<Int> = setA.subtracting(setB)


