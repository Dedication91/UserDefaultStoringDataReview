//
//  ViewController.swift
//  UserDefaultStoringDataReview
//
//  Copyright © 2017 Shaan Mirchandani. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var input: UITextField!
    @IBOutlet weak var output: UILabel!
    
    
    @IBAction func action(_ sender: Any) {
       
        output.text = input.text
        UserDefaults.standard.set(input.text, forKey: "myName")
        input.text = ""
    
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func viewDidAppear(_ animated: Bool) {
        if let n = UserDefaults.standard.object(forKey: "myName") as? String {
            output.text = n
        }
        
        
    }


}

