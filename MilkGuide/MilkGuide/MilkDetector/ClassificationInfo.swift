//
//  ClassificationInfo.swift
//  MilkGuide
//
//  Created by 박희지 on 2021/06/27.
//

import UIKit

class ClassificationInfo {
    // 싱글톤 패턴
    static let shared = ClassificationInfo()
    
    var image: UIImage?
    var prediction: String?
    var result: String? {
        switch prediction {
        case "0":
            return "딸기우유"
        case "1":
            return "바나나우유"
        case "2":
            return "초코우유"
        case "3":
            return "커피우유"
        case "4":
            return "흰우유"
        default:
            return "분석 불가: \(prediction)"
        }
    }
    
    private init() {}
}
