import Foundation

var lottoNumbers: Set<Int> = Set<Int>()
var winningNumber: [Int] = []
var myLottoNumbers: [Int] = [1, 2, 3, 4, 5, 6]

func generateOfRandomNumbers() {
    while lottoNumbers.count < 6 {
        let randomNumber: Int = Int.random(in: 1 ... 45)
        lottoNumbers.insert(randomNumber)
    }
}
// 랜덤 번호를 생성하는 함수

func printWinningMesage() {
    if winningNumber.count >= 1 {
        var printWinningMesage: String = String()
        for number in winningNumber {
            printWinningMesage.insert(contentsOf: "\(number), ", at: printWinningMesage.endIndex)
        }
        printWinningMesage.removeLast()
        printWinningMesage.removeLast()
        print("축하합니다! 겹치는 번호는 \(printWinningMesage) 입니다!")
    } else {
        print("아쉽지만 겹치는 번호가 없습니다.")
    }
}
// 로또 당첨, 낙첨 결과를 프린트 하는 함수

func resetLottoResult() {
    lottoNumbers.removeAll()
    winningNumber.removeAll()
}
// 로또 추첨 결과를 초기화 하는 함수

func drawLottoNumbers() {
    resetLottoResult()
    
    generateOfRandomNumbers()
    
    for lottoNumber in lottoNumbers {
        if myLottoNumbers.contains(lottoNumber) {
            winningNumber.append(lottoNumber)
        }
    }
    
    printWinningMesage()
}
    
    
    
    
    
    
