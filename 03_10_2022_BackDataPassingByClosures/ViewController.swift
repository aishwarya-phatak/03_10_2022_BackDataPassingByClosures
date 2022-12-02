//
//  ViewController.swift
//  03_10_2022_BackDataPassingByClosures
//
//  Created by Vishal Jagtap on 01/12/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var firstNameLabel: UILabel!
    @IBOutlet weak var lastNameLabel: UILabel!
    @IBOutlet weak var courseNameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "FirstVC"
    }
    
    @IBAction func btnClick(_ sender: Any) {
        
        var secondViewController = self.storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
        
        secondViewController.dataOnSecondViewController = {(firstName, lastName, courseName) in
            
            self.firstNameLabel.text = firstName
            self.lastNameLabel.text = lastName
            self.courseNameLabel.text = courseName
        }
        
        self.navigationController?.pushViewController(secondViewController, animated: true)
    }
}
