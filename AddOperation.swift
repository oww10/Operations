import Foundation

//public enum CalculationError: Error {
//    case numberNilError
//}
//
//public protocol AbstractOperation {
//    func calculate(number1:Double?, number2:Double?) throws -> Double
//}
//
//public class AddOperation: AbstractOperation {
//    public init() {} // 다른 모듈에서 생성자를 호출할 수 있도록 public init을 추가합니다.
//    public func calculate(number1: Double?, number2: Double?) throws -> Double {
//        guard let num1 = number1, let num2 = number2 else {
//            print("AddOperation nilError 발견")
//            throw CalculationError.numberNilError
//        }
//        return num1 + num2
//    }
//}
