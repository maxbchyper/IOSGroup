//
//  TopRatedViewController.swift
//  iosGroup assignment
//
//  Created by Claire Ongley on 18/5/22.
//

import Foundation
import UIKit

class TopRatedViewController:UIViewController{
    @IBOutlet weak var shawshank: UIImageView!
    @IBOutlet weak var godfather: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        shawshank.layer.shadowRadius = 4
        godfather.layer.shadowRadius = 4
        shawshank.layer.cornerRadius = 8
        godfather.layer.cornerRadius = 8
        
    }
}
