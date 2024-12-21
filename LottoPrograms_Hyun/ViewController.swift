//
//  ViewController.swift
//  LottoPrograms_Hyun
//
//  Created by 김영현 on 12/21/24.
//

import UIKit



/*
 1. 배열 생성 하여 랜덤값 1~45 6개 추첨하여 넣기. (중복 불가)
 
 */



class ViewController: UIViewController {

    
    @IBOutlet weak var lottoNumberView: UIView!
    //lottoNumberView.applyLottoStyle()
    //StyleManager.applyLottoStyle(to: lottoNumberView)
    
    
    
    
    
    // 앱 실행시 먼저 실행하는 함수
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // UIViewStype에서 작성한 UIView의 스타일 적용
        if let view = lottoNumberView {
            StyleManager.applyLottoStyle(to: view)
        }
    }
    
    
    
    
    // 추첨 시작 버튼 눌렀을 때
    @IBAction func startLottoTapped(_ sender: UIButton) {
    }
    
    // 초기화 버튼 눌렀을 때
    @IBAction func resetLottoTapped(_ sender: UIButton) {
    }
    


}

