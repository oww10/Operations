# 계산기 프로젝트<br />
## 📖 프로젝트 소개<br />
#### 본 프로젝트는 Swift를 사용하여 단계별 요구사항에 따라 계산기 기능을 구현하고, 객체 지향 설계 원칙을 적용하여 코드를 개선하는 과정을 담고 있습니다. 간단한 연산 클래스부터 시작하여, 전략 패턴(Strategy Pattern)을 적용하여 각 연산의 책임을 분리하고 코드의 유연성과 확장성을 높이는 과정을 학습할 수 있습니다.<br />
## 🚀 주요 기능<br />
#### 사칙연산: 더하기, 빼기, 곱하기, 나누기 기능을 제공합니다.<br />
#### 나머지 연산: 나머지 값을 구하는 연산을 지원합니다.<br />
#### 예외 처리: 0으로 나누는 경우, 입력값이 없는 경우 등 발생할 수 있는 오류를 처리합니다.<br />
#### 전략 패턴 적용: 각 연산을 별도의 클래스로 분리하고, AbstractOperation 프로토콜을 통해 연산을 교체할 수 있도록 설계하여 단일 책임 원칙을 따릅니다.<br />

## 🌱 개발 과정 및 개선점 (Lv1 ~ Lv4)<br />
### Lv1: 기본 계산기 클래스 구현<br />
#### 하나의 Calculator 클래스 내에 더하기, 빼기, 곱하기, 나누기 메서드를 모두 구현했습니다.<br />
#### guard let을 사용한 옵셔널 바인딩으로 안전하게 값을 처리하고, 0으로 나누는 경우를 방지하는 코드를 추가했습니다.<br />
### Lv2: 기능 추가 및 예외 처리<br />
#### 나머지 연산(%) 기능을 추가했습니다.<br />
#### 오류가 발생할 수 있는 상황에 대해 고민하고, if문을 사용하여 간단한 오류 메시지를 출력하도록 구현했습니다.<br />
### Lv3: 클래스 분리 (단일 책임 원칙)<br />
#### 각 연산(더하기, 빼기 등)을 별개의 클래스(AddOperation, SubstractOperation 등)로 분리하여 단일 책임 원칙을 적용했습니다.<br />
#### Calculator 클래스는 이제 연산의 실제 구현을 책임지지 않고, 해당 연산 클래스의 인스턴스를 사용하여 계산을 위임합니다.<br />
#### 개선된 점: 각 클래스가 하나의 책임만 갖게 되어 코드의 유지보수성과 가독성이 향상되었습니다. 새로운 연산을 추가할 때 기존 Calculator 코드를 수정할 필요가 없어졌습니다.<br />
### Lv4: 프로토콜을 이용한 추상화 (전략 패턴)<br />
#### AbstractOperation이라는 프로토콜을 만들어 모든 연산 클래스가 이를 채택하도록 했습니다.<br />
#### Calculator는 이제 구체적인 연산 클래스가 아닌 AbstractOperation 프로토콜에 의존합니다.<br />
#### 개선된 점: Calculator와 각 연산 클래스 간의 결합도가 낮아졌습니다. 런타임에 동적으로 연산 방식을 변경할 수 있어 유연성이 극대화되었고, 새로운 기능(연산)을 추가할 때 기존 코드를 수정하지 않고 확장할 수 있습니다.<br />

## 💻 IDEs/Editors<br />
![Xcode](https://img.shields.io/badge/Xcode-007ACC?style=for-the-badge&logo=Xcode&logoColor=white)<br />
## 📋 Languages<br />
![Swift](https://img.shields.io/badge/swift-F54A2A?style=for-the-badge&logo=swift&logoColor=white)<br />
## 🕓 Version Control<br />
![Git](https://img.shields.io/badge/git-%23F05033.svg?style=for-the-badge&logo=git&logoColor=white)![GitHub](https://img.shields.io/badge/github-%23121011.svg?style=for-the-badge&logo=github&logoColor=white)<br />
## 🎛️ Operating System<br />
![macOS](https://img.shields.io/badge/mac%20os-000000?style=for-the-badge&logo=macos&logoColor=F0F0F0)![iOS](https://img.shields.io/badge/iOS-000000?style=for-the-badge&logo=ios&logoColor=white)<br />
