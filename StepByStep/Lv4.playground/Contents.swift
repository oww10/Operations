/*
 *Lv1**
 - [ ]  더하기, 빼기, 나누기, 곱하기 연산을 수행할 수 있는 Calculator 클래스를 만들기
 - [ ]  생성한 클래스를 이용하여 연산을 진행하고 출력
 - Playground 파일 생성 → 아래와 같은 코드가 생성. 이 코드(이미지 1)를 삭제, Calculator 클래스 구현
 옵셔널 바인딩
 만약 둘 중 하나라도 nil이라면, else 블록이 실행되어 "입력값이 nil 입니다."라는 메시지를 출력하고 함수를 종료 시킵니다.
 guard let number1 = num1, let number2 = num2 else{
 print("입력값이 nil 입니다.")
 
 return 0
 }
 Division by Zero 오류를 방지
 0으로 나누기를 실행하면 오류가 발생
 func divOperations(num1:Double?, num2:Double?) -> Double{
 if number2 == 0 {
 print("num2가 2로 설정되었습니다 수정 부탁드립니다.")
 }
 **lv2**
 - [ ]  Lv1에서 만든 Calculator 클래스에 “나머지 연산”이 가능하도록 코드를 추가하고, 연산 진행 후 출력
 - ex) 나머지 연산 예시 : 6을 3으로 나눈 나머지는 0 / 5를 3으로 나눈 나머지는 2
 나머지 연산
 피제수 = 제수 × 몫 + 나머지
 number1 - (값 * number2)
 - [ ]  오류가 날 수 있는 ‘예외처리’ 상황에 대해 고민해보기 + 구현하기
 Lv3
 - [ ]  아래 각각의 클래스들을 만들고 클래스간의 관계를 고려하여 Calculator 클래스와 관계 맺기
 - [ ]  AddOperation(더하기)
 - [ ]  SubstractOperation(빼기)
 - [ ]  MultiplyOperation(곱하기)
 - [ ]  DivideOperation(나누기)
 - [ ]  Calculator 클래스의 내부코드를 변경
 - [ ]  관계를 맺은 후 필요하다면 별도로 만든 연산 클래스의 인스턴스를 Calculator 내부에서 사용
 - Lv2 와 비교하여 어떠한 점이 개선 되었는지 스스로 생각해 봅니다.
 - hint. 클래스의 책임(단일책임원칙)
 - [ ]  AbstractOperation라는 **추상화된** 프로토콜 만들기
 - [ ]  기존에 구현한 AddOperation(더하기), SubtractOperation(빼기), MultiplyOperation(곱하기), DivideOperation(나누기) 클래스들과 관계를 맺고 Calculator 클래스의 내부 코드를 변경
 - [ ]  Swift 내의 어떤 문법을 이용하여 추상화할 수 있을지 생각해 봅시다
 **Lv4** `08/22 까지`
 - [ ]  AbstractOperation라는 **추상화된** 프로토콜 만들기
 - [ ]  기존에 구현한 AddOperation(더하기), SubtractOperation(빼기), MultiplyOperation(곱하기), DivideOperation(나누기) 클래스들과 관계를 맺고 Calculator 클래스의 내부 코드를 변경
 - [ ]  Swift 내의 어떤 문법을 이용하여 추상화할 수 있을지 생각해 봅시다
 */
enum CalculationError: Error {
    case numberNilError
    case divisionByZeroError
    case calculateError
}

// Strategy(공통적인 인터페이스를 정의)
protocol AbstractOperation{
    func calculate(number1:Double?, number2:Double?) throws -> Double
}


//Concrete Strategy(Strategy(AbstractOperation) 인터페이스를 사용하여 구현
class Calculator {
    // AbstractOperation 객체를 참조받는 내부 인스턴스 클래스를 제작
    private var opertator: AbstractOperation?
    
    //어떤 계산기를 사용할지 수정(Add,Sub,Div ...)
    func op(op: AbstractOperation){
        self.opertator = op
    }
    
    // 계산 함수
    func calculate(number1: Double?, number2: Double?) throws -> Double?{
        return try? opertator?.calculate(number1: number1, number2: number2)
    }
    
}


// 전략을 사용할 객체(프로토콜을 참조 받음)
class AddOperation: AbstractOperation{
    /*
     옵셔널 바인딩
     만약 둘 중 하나라도 nil이라면, else 블록이 실행되어 "입력값이 nil 입니다."라는 메시지를 출력하고 함수를 종료 시킵니다.
     guard let number1 = num1, let number2 = num2 else{
     print("입력값이 nil 입니다.")
     */
    func calculate(number1: Double?, number2: Double?) throws -> Double {
        guard let number1 = number1, let number2 = number2 else{
            print("입력값이 nil 입니다.")
            throw CalculationError.numberNilError
        }
        print("더하기 입력 값은 \(number1 + number2)입니다.")
        return number1 + number2
    }
}
class SubstractOperation:AbstractOperation{
    func calculate(number1: Double?, number2: Double?) throws -> Double {
        guard let number1 = number1, let number2 = number2 else{
            print("입력값이 nil 입니다.")
            throw CalculationError.numberNilError
        }
        print("빼기 입력 값은 \(number1 - number2)입니다.")
        return number1 - number2
    }
}
class MultiplyOperation:AbstractOperation{
    func calculate(number1: Double?, number2: Double?) throws -> Double {
        guard let number1 = number1, let number2 = number2 else{
            print("입력값이 nil 입니다.")
            throw CalculationError.numberNilError
        }
        print("곱하기 입력 값은 \(number1 * number2)입니다.")
        return number1 * number2
    }
}
class DivideOperation:AbstractOperation{
    func calculate(number1: Double?, number2: Double?) throws -> Double {
        guard let number1 = number1, let number2 = number2 else{
            print("입력값이 nil 입니다.")
            throw CalculationError.numberNilError
        }
//        Division by Zero 오류를 방지
//        0으로 나누기를 실행하면 오류가 발생
        if number2 == 0 {
            print("num2가 2로 설정되었습니다 수정 부탁드립니다.")
            throw CalculationError.divisionByZeroError
        }
        
        let divResult = number1 / number2
        print("나누기 입력 값은 \(divResult)입니다.")
        return divResult
    }
}
class RemainOperation:AbstractOperation{
    func calculate(number1: Double?, number2: Double?) throws -> Double {
        guard let number1 = number1, let number2 = number2 else{
            print("입력값이 nil 입니다.")
            throw CalculationError.numberNilError
        }
        if number2 == 0 {
            print("num2가 2로 설정되었습니다 수정 부탁드립니다.")
            throw CalculationError.divisionByZeroError
        }
        print("나머지 입력 값은 \(number1.truncatingRemainder(dividingBy: number2))입니다.")
        return number1.truncatingRemainder(dividingBy: number2)
    }
}



let calculator = Calculator()

calculator.op(op: AddOperation())
let result = try calculator.calculate(number1: 10, number2: 2)

calculator.op(op: SubstractOperation())
let result1 = try calculator.calculate(number1: 10, number2: 2)

calculator.op(op:  MultiplyOperation())
let result2 = try calculator.calculate(number1: 10, number2: 2)

calculator.op(op: DivideOperation())
let result3 = try calculator.calculate(number1: 10, number2: 2)

calculator.op(op: RemainOperation())
let result4 = try calculator.calculate(number1: 10, number2: 2)
//do-try-catch를 통한 예외 처리는 런타임에 발생할 수 있는 다양한 오류 상황에 유연하게 대처
do {
    let result: () = try
    calculator.op(op: AddOperation())
    try calculator.calculate(number1: 10, number2: 2)
    print(result)
}catch CalculationError.numberNilError{
    print("number가 nil 입니다.")
}catch CalculationError.divisionByZeroError{
    print("나누기값이 0 입니다")
} catch{
    print("모르는 에러 발생")
}
