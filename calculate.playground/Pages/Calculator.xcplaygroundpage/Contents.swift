
enum CalculationError: Error {
    case numberNilError
}
protocol AbstractOperation{
    func calculate(number1:Double?, number2:Double?) throws -> Double
}

class Calculator {
    let addOperation = AddOperation()
    let minusOperations = SubstractOperation()
    let mulitplyOperations = MultiplyOperation()
    let divOperations = DivideOperation()
    
}
let calculator = Calculator()
print("===========addOperation===========")
print(try calculator.addOperation.calculate(number1: 10, number2: nil))
print("===========minusOperations===========")
print(try calculator.minusOperations.calculate(number1: 10, number2: 20))
print("===========mulitplyOperations===========")
print(try calculator.mulitplyOperations.calculate(number1: 10, number2: 10))
print("===========divOperations===========")
print(try calculator.divOperations.calculate(number1: 10, number2: 0))

print("===========예외처리===========")
do{
    let result = try calculator.addOperation.calculate(number1: 10, number2: nil)
    print(result)
}catch CalculationError.numberNilError{
    print("number가 nil 입니다.")
} catch{
    print("모르는 에러 발생")
}

class AddOperation: AbstractOperation{
    func calculate(number1: Double?, number2: Double?) throws -> Double {
        guard let number1 = number1, let number2 = number2 else{
            print("입력값이 nil 입니다.")
            throw CalculationError.numberNilError
    }
        return number1 + number2
    }
}
class SubstractOperation:AbstractOperation{
    func calculate(number1: Double?, number2: Double?) throws -> Double {
        guard let number1 = number1, let number2 = number2 else{
            print("입력값이 nil 입니다.")
            throw CalculationError.numberNilError
        }
    
        return number1 - number2
    }
}
class MultiplyOperation:AbstractOperation{
    func calculate(number1: Double?, number2: Double?) throws -> Double {
        guard let number1 = number1, let number2 = number2 else{
            print("입력값이 nil 입니다.")
            throw CalculationError.numberNilError
    }
        return number1 * number2
    }
}
class DivideOperation:AbstractOperation{
    func calculate(number1: Double?, number2: Double?) throws -> Double {
        guard let number1 = number1, let number2 = number2 else{
            print("입력값이 nil 입니다.")
            throw CalculationError.numberNilError
        }
    
        if number2 == 0 {
            print("num2가 2로 설정되었습니다 수정 부탁드립니다.")
        }
        
        let divResult = number1 / number2
        let remainResult = number1 - (divResult * number2)
        
        print("값은 : \(divResult) 나머지 값은 \(remainResult)")
        return divResult
    }
}




