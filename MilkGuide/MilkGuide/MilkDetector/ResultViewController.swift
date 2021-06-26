//
//  ResultViewController.swift
//  MilkGuide
//
//  Created by 박희지 on 2021/06/26.
//

import UIKit
import CoreML
import Vision
import ImageIO

class ResultViewController: UIViewController {
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var goHomeButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func homeButtonTapped(_ sender: Any) {
        let milkDetectorVC = self.storyboard?.instantiateViewController(identifier: "MilkDetectorViewController") as! MilkDetectorViewController
        milkDetectorVC.modalPresentationStyle = .fullScreen
        present(milkDetectorVC, animated: false, completion: nil)
    }
}

