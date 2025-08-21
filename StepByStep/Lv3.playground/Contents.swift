import UIKit
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
 */
class AddOperation{
    func addSumOperations(num1:Double?, num2:Double?) -> Double{
        guard let number1 = num1, let number2 = num2 else{
            print("입력값이 nil 입니다.")
            return 0
        }
        
        let sumResult = number1 + number1
        
        print("더하기의 값은  \(sumResult)")
        
        return sumResult
    }
}
class SubstractOperation{
    func minusOperations(num1:Double?, num2:Double?) -> Double{
        guard let number1 = num1, let number2 = num2 else{
            print("입력값이 nil 입니다.")
            return 0
        }
        
        let minusResult = number1 + number1
        
        print("빼기의 값은  \(minusResult)")
        return minusResult
    }
}
class MultiplyOperation{
    func mulitplyOperations(num1:Double?, num2:Double?) -> Double{
        guard let number1 = num1, let number2 = num2 else{
            print("입력값이 nil 입니다.")
            return 0
        }
        
        let mulitplyResult = number1 * number1
        
        print("곱하기의 값은 \(mulitplyResult)")
        return mulitplyResult
    }
}
class DivideOperation{
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
class Calculator {
    let addOperation = AddOperation()
    let minusOperations = SubstractOperation()
    let mulitplyOperations = MultiplyOperation()
    let divOperations = DivideOperation()
    
}
let calculator = Calculator()
calculator.addOperation.addSumOperations(num1: 1, num2: nil)
calculator.minusOperations.minusOperations(num1: 1, num2: 3)
calculator.mulitplyOperations.mulitplyOperations(num1: 4, num2: 1)
calculator.divOperations.divOperations(num1: 2, num2: 1)
