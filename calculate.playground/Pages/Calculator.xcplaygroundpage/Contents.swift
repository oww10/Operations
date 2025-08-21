import UIKit
import Operations

enum CalculationError: Error {
    case numberNilError
}
protocol AbstractOperation{
    func calculate(number1:Double?, number2:Double?) throws -> Double

}

class Calculator{
    
    let addOperation = AddOperation()
    let subOperation = SubstractOperation()
    let multiplyOperation = MultiplyOperation()
    let divOperation = DivideOperation()
    let testOperation = TestCalculator()
}



let calculator = Calculator()

print("=====addOperation=====")
print(try calculator.addOperation.calculate(number1: nil, number2: 10))
print("=====subOperation=====")
print(calculator.subOperation.calculate(number1: 10, number2: 2))
print("=====multiplyOperation=====")
print(calculator.multiplyOperation.calculate(number1: 10, number2: 2))
print("=====divOperation=====")
print(calculator.divOperation.calculate(number1: 10, number2: 0))
print("=====testOperation=====")
print(calculator.testOperation.calculate(number1: 10, number2: 2))

//do { 예외가 발생할 수 있는 코드를 포함하는 블록
//    try 예외가 발생할 수 있는 작업을 호출
//} catch {
//    예외가 발생했을 때 처리할 코드
//}
print("=====예외처리진행중=====")
do{
    let result = try calculator.addOperation.calculate(number1: 10, number2: nil)
    print("결과는 \(result)")
} catch CalculationError.numberNilError{
    print("number가 nil 입니다.")
} catch{
    print("모르는 에러 발생")
}

//class AddOperation:AbstractOperation{
//    func calculate(number1: Double?, number2: Double?) throws -> Double{
//        guard let num1 = number1, let num2 = number2 else{
//            //옵셔널 바인딩에 실패하면 예외를 던진다 -> guard let은 옵셔널 바인딩의 역할
//            //nil인지 먼저 확인하는 개념?
//            print("AddOperation nilError 발견")
//            throw CalculationError.numberNilError
//            
//            
//        }
//        return num1 + num2
//    }
//    
//}


 class AddOperation: AbstractOperation {
     //public init() {} // 다른 모듈에서 생성자를 호출할 수 있도록 public init을 추가합니다.
    public func calculate(number1: Double?, number2: Double?) throws -> Double {
        guard let num1 = number1, let num2 = number2 else {
            print("AddOperation nilError 발견")
            throw CalculationError.numberNilError
        }
        return num1 + num2
    }
}

class SubstractOperation:AbstractOperation{
    func calculate(number1: Double?, number2: Double?) -> Double{
        guard let num1 = number1, let num2 = number2 else{
            print("입력 값이 nil 입니다.")
            
            return 0
        }
        return num1 - num2
    }
    
}

class MultiplyOperation:AbstractOperation{
    func calculate(number1: Double?, number2: Double?) -> Double{
        guard let num1 = number1, let num2 = number2 else{
            print("입력 값이 nil 입니다.")
            
            return 0
        }
        return num1 * num2
    }
    
}


class DivideOperation:AbstractOperation{
    func calculate(number1: Double?, number2: Double?) -> Double {
        guard let num1 = number1, let num2 = number2 else{
            
            print("입력 값이 nil 입니다.")
            
            return 0
        }
        // number2가 0일 경우 Zero Division 상태 발생 방지
        if num2 == 0 {
            print("num2의 숫자가 0입니다. 0 이외의 숫자를 넣어주세요")
        }
        
        let divResult = num1 / num2
        //피제수 = 제수 × 몫 + 나머지
        //num1 - (값 * num2)
        let remain = num1 - (divResult * num2)
        
        print("값: \(divResult), 나머지: \(remain)")
        
        return divResult
    }
}

class TestCalculator:AbstractOperation{
    func calculate(number1: Double?, number2: Double?) -> Double {
        if let num1 = number1,let num2 = number2{
            if num2 == 0{
                print("num2의 숫자가 0입니다. 0 이외의 숫자를 넣어주세요")
            }
            let divResult = num1 / num2
            //피제수 = 제수 × 몫 + 나머지
            //num1 - (값 * num2)
            let remain = num1 - (divResult * num2)
            
            print("값: \(divResult), 나머지: \(remain)")
            
            return divResult
        } else{
            print("입력 값이 nil 입니다.")
            return 0
        }
    }
}




