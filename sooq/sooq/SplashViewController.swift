//
//  SplashViewController.swift
//  sooq
//
//  Created by 2B on 03/08/2025.
//

import UIKit
import Sooq_UI
class SplashViewController: UIViewController {

    @IBOutlet weak var buttonPressed: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

       // view.backgroundColor = UIColor.primaryOrangeFresh
        
        buttonPressed.applyButtonStyle(.filledWithImage(fontStyle: .buttonTitle, imageName: "heart.fill"))
    }



}
