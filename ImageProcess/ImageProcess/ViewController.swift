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
        
    }
    
    @IBAction func magazineAction(_ sender: Any) {
        
    }
    
    
}

