//
//  ViewController.swift
//  LottoPrograms_Hyun
//
//  Created by 김영현 on 12/21/24.
//

import UIKit



/*
 1. 배열 생성 하여 랜덤값 1~45 6개 추첨하여 넣기. (중복 불가)
 2. 추첨시작 버튼 눌렀을 때 1번 부터 6번까지 순차적으로 텀을 주고 보여주기.
 (이때 1~10, 11~20, 21~30, 31~40, 41~45 번호 별 색깔 다르게)
 3. 초기화 버튼 눌렀을 때 다시 [ 번호 1] ~ 6 까지
 */



class ViewController: UIViewController {

    
    // 로또 담는 뷰
    @IBOutlet weak var lottoNumberView: UIView!
    
    
    @IBOutlet weak var lottoNumber1: UILabel!
    @IBOutlet weak var lottoNumber2: UILabel!
    @IBOutlet weak var lottoNumber3: UILabel!
    
    @IBOutlet weak var lottoNumber4: UILabel!
    @IBOutlet weak var lottoNumber5: UILabel!
    @IBOutlet weak var lottoNumber6: UILabel!
    
    
    @IBOutlet weak var selectButtonLabel: UIButton!
    
    @IBOutlet weak var lifeQuotesLabel: UILabel!
    
    
    var lottoNumberArray:[Int] = []
    
    // 앱 실행시 먼저 실행하는 함수
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // UIViewStype에서 작성한 UIView의 스타일 적용
        if let view = lottoNumberView {
            StyleManager.applyLottoStyle(to: view)
        }
        
        
        
        // 배열 크기가 0~5 까지
        while lottoNumberArray.count < 6 {
            // 랜덤 숫자 생성 (1~45)
            var number = Int.random(in: 1...45)
           
            // 위에서 랜덤으로 생성한 number가 lottoNumberArray 배열에 포함되어있는지 확인. (지금 조건문은 해당 number가 배열에 없으면?)
            // https://developer.apple.com/documentation/swift/array/contains(_:)
            if !lottoNumberArray.contains(number) {
                // number를 0번방부터 넣는다. (이후 배열에 있는 값들과 비교하면서 동일한 숫자가 있으면 못들어옴)
                lottoNumberArray.append(number)
            }
        }
        
        // 배열 무작위 섞기
        lottoNumberArray.shuffle()
        
        lifeQuotesLabel.font = UIFont.italicSystemFont(ofSize: UIFont.labelFontSize)
        
        var quotesRnd = Int.random(in: 0...100)
        lifeQuotesLabel.text = LifeQuotesLab(num: quotesRnd)
        
    }
    
    
    
    
    // 추첨 시작 버튼 눌렀을 때
    @IBAction func startLottoTapped(_ sender: UIButton) {
        lottoNumber1.text = String(lottoNumberArray[0])
        lottoNumber2.text = String(lottoNumberArray[1])
        lottoNumber3.text = String(lottoNumberArray[2])
        lottoNumber4.text = String(lottoNumberArray[3])
        lottoNumber5.text = String(lottoNumberArray[4])
        lottoNumber6.text = String(lottoNumberArray[5])
        
        // 추첨 시작 눌렀을 때 아래 title로 변경
        selectButtonLabel.setTitle("추첨 완료", for: .normal)
    }
    
    // 초기화 버튼 눌렀을 때
    @IBAction func resetLottoTapped(_ sender: UIButton) {
        
        lottoNumber1.text = ""
        lottoNumber2.text = ""
        lottoNumber3.text = ""
        lottoNumber4.text = ""
        lottoNumber5.text = ""
        lottoNumber6.text = ""
        
        // 초기화 시 배열 안 값 모두 삭제
        lottoNumberArray.removeAll()
        
        selectButtonLabel.setTitle("추첨 시작", for: .normal)
        
        while lottoNumberArray.count < 6 {
            // 랜덤 숫자 생성 (1~45)
            var number = Int.random(in: 1...45)
            
            if !lottoNumberArray.contains(number) {
                lottoNumberArray.append(number)
            }
        }
        
        var quotesRnd = Int.random(in: 0...100)
        lifeQuotesLabel.text = LifeQuotesLab(num: quotesRnd)
        
    }
    


}

