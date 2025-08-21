enum CalculationError: Error {
    case numberNilError
    case divisionByZeroError
    case calculateError
}
enum Operations{
    case add
    case sub
    case multiply
    case div
    case remain
}
protocol AbstractOperation{
    func calculate(number1:Double?, number2:Double?) throws -> Double
}

class Calculator {
    private let addOperation = AddOperation()
    private let minusOperations = SubstractOperation()
    private let mulitplyOperations = MultiplyOperation()
    private let divOperations = DivideOperation()
    private let remainOperations = RemainOperation()
    
    func calculate(op: Operations, number1:Double?, number2:Double?) throws -> Double{
        switch op{
        case Operations.add:
            return try addOperation.calculate(number1: number1, number2: number2)
        case Operations.sub:
            return try minusOperations.calculate(number1: number1, number2: number2)
        case Operations.multiply:
            return try mulitplyOperations.calculate(number1: number1, number2: number2)
        case Operations.div:
            return try divOperations.calculate(number1: number1, number2: number2)
        case Operations.remain:
            return try remainOperations.calculate(number1: number1, number2: number2)
        }
        
    }
    
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
            throw CalculationError.divisionByZeroError
        }
        
        let divResult = number1 / number2
        
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
        return number1.truncatingRemainder(dividingBy: number2)
    }
}


print(try Calculator().calculate(op: .add, number1: 10, number2: nil))
print(try Calculator().calculate(op: .sub, number1: 10, number2: 10))
print(try Calculator().calculate(op: .multiply, number1: 10, number2: 10))
print(try Calculator().calculate(op: .div, number1: 10, number2: 2))
print(try Calculator().calculate(op: .remain, number1: 10, number2: 1))
