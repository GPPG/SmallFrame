//
//  ViewController.swift
//  ImageProcess
//
//  Created by 郭鹏 on 2019/12/25.
//  Copyright © 2019 郭鹏. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    var cropVC: CropViewController!
    var adjustVC: AdjustViewController!


    // MARK: - Life cyle
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    // MARK: - Set up
    func setupUI(){
        imageView.image = UIImage.init(named: "1")
        navigationController?.navigationBar.isHidden = true
    }
    
    
    // MARK: - Action
    @IBAction func clipAction(_ sender: Any) {
        cropVC = CropViewController()
        cropVC.cropImage = imageView.image
        navigationController?.pushViewController(cropVC, animated: true)
        
        cropVC.cropSucceedBlock = {
            [unowned self] image in
            self.imageView.image = image
        }
    }
    
    
    @IBAction func adjustAction(_ sender: Any) {
        adjustVC = AdjustViewController()
        adjustVC.adjustImage = imageView.image

        navigationController?.pushViewController(adjustVC, animated: true)
        
        adjustVC.disposeCompleteBlock = { [unowned self] disposeImage in
            self.imageView.image = disposeImage
        }

    }
    
    @IBAction func magazineAction(_ sender: Any) {
        
    }
    
    
}

