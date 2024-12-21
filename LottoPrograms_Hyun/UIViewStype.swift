//
//  UIViewStype.swift
//  LottoPrograms_Hyun
//
//  Created by 김영현 on 12/21/24.
//


import UIKit

struct StyleManager {
    static func applyLottoStyle(to view: UIView) {
        view.backgroundColor = .systemGray6
        view.layer.cornerRadius = 10
        view.layer.shadowColor = UIColor.black.cgColor
        view.layer.shadowOpacity = 0.2
        view.layer.shadowOffset = CGSize(width: 2, height: 2)
        view.layer.shadowRadius = 4
    }
}
