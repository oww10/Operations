import UIKit
/*
 **Lv1**
 - [ ]  더하기, 빼기, 나누기, 곱하기 연산을 수행할 수 있는 Calculator 클래스를 만들기
 - [ ]  생성한 클래스를 이용하여 연산을 진행하고 출력
 - Playground 파일 생성 → 아래와 같은 코드가 생성. 이 코드(이미지 1)를 삭제, Calculator 클래스 구현
 */

/*
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
 
 */

class Calculator {
    
    func addSumOperations(num1:Double?, num2:Double?) -> Double{
        guard let number1 = num1, let number2 = num2 else{
            print("입력값이 nil 입니다.")
            return 0
        }
        let sumResult = number1 + number2
        print(sumResult)
        
        return sumResult
    }
    
    func minusOperations(num1:Double?, num2:Double?) -> Double{
        guard let number1 = num1, let number2 = num2 else{
            print("입력값이 nil 입니다.")
            return 0
        }
        
        let minusResult = number1 - number2
        
        print(minusResult)
        return minusResult
    }
    func mulitplyOperations(num1:Double?, num2:Double?) -> Double{
    guard let number1 = num1, let number2 = num2 else{
        print("입력값이 nil 입니다.")
        return 0
    }
        
    let mulitplyResult = number1 * number2
    
    print(mulitplyResult)
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
        print(divResult)
        return divResult

    }
}
    let calculator = Calculator()
    calculator.addSumOperations(num1: 1, num2: nil)
    calculator.minusOperations(num1: 1, num2: 3)
    calculator.mulitplyOperations(num1: 4, num2: 1)
    calculator.divOperations(num1: 2, num2: 0)
