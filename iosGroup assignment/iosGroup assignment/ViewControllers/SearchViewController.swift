//
//  ViewController.swift
//  iosGroup assignment
//
//  Created by Claire Ongley on 6/5/22.
// Chenglin


// Chenglin Zhang
import UIKit

class SearchViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    var searchValue: String = ""
    @IBOutlet weak var SearchValueInput: UITextField!
    
    @IBAction func Search(_ sender: Any) {
        print("search!")
        var request = URLRequest(url: URL(string: "https://api.themoviedb.org/3/search/movie?api_key=392edc2e9b59a6d9b11f639b3c2a0f26&language=en-US&query=" + (SearchValueInput.text ?? "a") + "&page=1&include_adult=false")!)
        request.httpMethod = "GET"
        let session = URLSession.shared
        let task = session.dataTask(with: request, completionHandler: { data, response, error -> Void in
            do {
                let json = try JSONSerialization.jsonObject(with: data!) as! Dictionary<String, AnyObject>
                let result:NSArray = (json["results"] as! NSArray)
                var eachDic:NSDictionary
                var number = 0
                for each in result{
                    eachDic = each as! NSDictionary
                    number += 1
                    let resultString = String(describing: eachDic["title"])
                    print(type(of: resultString))
                    print("Title: " + resultString)
                    print(eachDic["id"] ?? "No id")
                    print("-----------------")
                }
                
            } catch {
                print("error")
            }
        })

        task.resume()
    }
        
    
}

