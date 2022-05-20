//
//  PopularViewController.swift
//  iosGroup assignment
//
//  Created by Claire Ongley on 18/5/22.
//

import Foundation
import UIKit

class TrendingNowViewController: UIViewController{
    @IBOutlet weak var eEAAO: UIImageView!
    @IBOutlet weak var morbius: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        eEAAO.layer.shadowRadius = 4
        morbius.layer.shadowRadius = 4
        eEAAO.layer.cornerRadius = 8
        morbius.layer.cornerRadius = 8
        
    }
}
