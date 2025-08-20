import UIKit


//- [ ]  Lv1에서 만든 Calculator 클래스에 “나머지 연산”이 가능하도록 코드를 추가하고, 연산 진행 후 출력
//- ex) 나머지 연산 예시 : 6을 3으로 나눈 나머지는 0 / 5를 3으로 나눈 나머지는 2
// 나머지 연산
//피제수 = 제수 × 몫 + 나머지
//number1 - (값 * number2)
//- [ ]  오류가 날 수 있는 ‘예외처리’ 상황에 대해 고민해보기 + 구현하기
class Calculator {
    
    func addSumOperations(num1:Double?, num2:Double?) -> Double{
        guard let number1 = num1, let number2 = num2 else{
            print("입력값이 nil 입니다.")
            
            return 0
        }
        let sumResult = number1 + number1
        
        print("더하기의 값은  \(sumResult)")
        
        return sumResult
    }
    
    func minusOperations(num1:Double?, num2:Double?) -> Double{
        guard let number1 = num1, let number2 = num2 else{
            print("입력값이 nil 입니다.")
            
            return 0
        }
        let minusResult = number1 + number1
        
        print("빼기의 값은  \(minusResult)")
        return minusResult
    }
    
    func mulitplyOperations(num1:Double?, num2:Double?) -> Double{
        guard let number1 = num1, let number2 = num2 else{
            print("입력값이 nil 입니다.")
            
            return 0
        }
        let mulitplyResult = number1 * number1
        
        print("곱하기의 값은 \(mulitplyResult)")
        return mulitplyResult
    }
    func divOperations(num1:Double?, num2:Double?) -> Double{
        
        guard let number1 = num1, let number2 = num2 else{
            print("입력값이 nil 입니다.")
            
            return 0
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
    let calculator = Calculator()
    calculator.addSumOperations(num1: 1, num2: nil)
    calculator.minusOperations(num1: 1, num2: 3)
    calculator.mulitplyOperations(num1: 4, num2: 1)
    calculator.divOperations(num1: 2, num2: 1)
