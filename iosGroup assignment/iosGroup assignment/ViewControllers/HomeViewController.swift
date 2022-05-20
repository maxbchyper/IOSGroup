//
//  HomeController.swift
//  iosGroup assignment
//
//  Created by Claire Ongley on 18/5/22.
//

import Foundation
import UIKit



class HomeViewController: UIViewController {
    @IBOutlet weak var poster1: UIImageView!
    @IBOutlet weak var poser2: UIImageView!
    @IBOutlet weak var poster3: UIImageView!
    @IBOutlet weak var backdrop1: UIImageView!
    @IBOutlet weak var backdrop2: UIImageView!

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        poster1.layer.cornerRadius = 8
        poser2.layer.cornerRadius = 8
        poster3.layer.cornerRadius = 8
        poster1.layer.shadowRadius = 4
        poser2.layer.shadowRadius = 4
        poster3.layer.shadowRadius = 4
        backdrop1.layer.cornerRadius = 8
        backdrop1.layer.shadowRadius = 4
        backdrop2.layer.cornerRadius = 8
        backdrop2.layer.shadowRadius = 4
        
        
        // Create URL
        let url = URL(string: "https://image.tmdb.org/3/t/p/w500/6DrHO1jr3qVrViUO6s6kFiAGM7.jpg")!
        let url2 = URL(string: "https://image.tmdb.org/3/t/p/w500/neMZH82Stu91d3iqvLdNQfqPPyl.jpg")!
        let url3 = URL(string: "https://image.tmdb.org/3/t/p/w500/tlZpSxYuBRoVJBOpUrPdQe9FmFq.jpg")!
        let url4 = URL(string:"https://image.tmdb.org/3/t/p/w500/2n95p9isIi1LYTscTcGytlI4zYd.jpg")!
        let url5 = URL(string: "https://image.tmdb.org/3/t/p/w500/tH1afdfqqrYTP3l2oqsHEsNN5ul.jpg")!
        
        DispatchQueue.global().async {
            // Fetch Image Data
            if let data = try? Data(contentsOf: url) {
                DispatchQueue.main.async {
                    // Create Image and Update Image View
                    self.poster1.image = UIImage(data: data)
                }
            }
            if let data = try? Data(contentsOf: url2) {
                DispatchQueue.main.async {
                    // Create Image and Update Image View
                    self.poser2.image = UIImage(data: data)
                }
            }
            if let data = try? Data(contentsOf: url3) {
                DispatchQueue.main.async {
                    // Create Image and Update Image View
                    self.poster3.image = UIImage(data: data)
                }
            }
            if let data = try? Data(contentsOf: url4) {
                DispatchQueue.main.async {
                    // Create Image and Update Image View
                    self.backdrop1.image = UIImage(data: data)
                }
            }
            if let data = try? Data(contentsOf: url5) {
                DispatchQueue.main.async {
                    // Create Image and Update Image View
                    self.backdrop2.image = UIImage(data: data)
                }
            }
            
        }
        
        
    }
}
