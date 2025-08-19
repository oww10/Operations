//import UIKit
//
//
//public class AddOperation:AbstractOperation{
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
