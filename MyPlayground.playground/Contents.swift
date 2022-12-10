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

