//
//  ImageClassificationViewController.swift
//  MilkGuide
//
//  Created by 박희지 on 2021/06/26.
//

import UIKit
import CoreML
import Vision
import ImageIO

class ImageClassificationViewController: UIViewController {
    /*
    0 : 딸기우유
    1 : 바나나우유
    2 : 초코우유
    3 : 커피우유
    4 : 흰우유
    */
    var image: UIImage?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    // MARK: - Image Classification
    /// - Tag: MLModelSetup
    lazy var classificationRequest: VNCoreMLRequest = {
        do {
            let model = try VNCoreMLModel(for: MilkClassifier().model)
            
            let request = VNCoreMLRequest(model: model, completionHandler: { [weak self] request, error in
                self?.processClassifications(for: request, error: error)
            })
            return request
            
        } catch {
            fatalError("Failed to load Vision ML model: \(error)")
        }
    }()
    
    /// - Tag: PerformRequests
    func updateClassifications(for image: UIImage) {
        let orientation = CGImagePropertyOrientation(image.imageOrientation)
        guard let ciImage = CIImage(image: image) else { fatalError("Unable to create \(CIImage.self) form \(image)") }
        
        DispatchQueue.global(qos: .userInitiated).async {
            let handler = VNImageRequestHandler(ciImage: ciImage, orientation: orientation)
            do {
                try handler.perform([self.classificationRequest])       // handler로 model에게 request
            } catch {
                print("Failed to perform classification.\n\(error.localizedDescription)")
            }
        }
    }
    
    /// update UI with the results of the classification.
    /// - Tag: ProcessClassification
    func processClassifications(for request: VNRequest, error: Error?) {
        
        
        DispatchQueue.main.async {
            let resultVC = self.storyboard?.instantiateViewController(identifier: "ResultViewController") as! ResultViewController
            guard let results = request.results else {
                resultVC.resultLabel.text = "분류 불가"
                self.present(resultVC, animated: false, completion: nil)
                return
            }
            print("-------------결과------------\(results)")
            let classifications = results as! [VNClassificationObservation]
            
            if classifications.isEmpty {
                resultVC.resultLabel.text = "알 수 없음"
            } else {
//                let topClassification = classifications.prefix(1)
                let topClassification = classifications.prefix(1)
                let result = Int(topClassification[0].identifier)!
                
                switch result {
                case 0:
                    resultVC.resultLabel.text = "딸기우유"
                case 1:
                    resultVC.resultLabel.text = "바나나우유"
                case 2:
                    resultVC.resultLabel.text = "초코우유"
                case 3:
                    resultVC.resultLabel.text = "커피우유"
                case 4:
                    resultVC.resultLabel.text = "흰우유"
                default:
                    resultVC.resultLabel.text = "이상한 우유"
                }
            }
            resultVC.imageView.image = self.image
            resultVC.modalPresentationStyle = .fullScreen
            self.present(resultVC, animated: false, completion: nil)
            
        }
    }
}
