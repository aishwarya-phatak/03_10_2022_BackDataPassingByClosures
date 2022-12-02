//
//  SecondViewController.swift
//  03_10_2022_BackDataPassingByClosures
//
//  Created by Vishal Jagtap on 01/12/22.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var firstNameTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    @IBOutlet weak var courseNameTextField: UITextField!
    
    var dataOnSecondViewController : ((String,String,String) -> Void)?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "SecondVC"
    }
    
    @IBAction func btnPassDataToFirstVC(_ sender: Any) {
        let firstName = self.firstNameTextField.text
        let lastName = self.lastNameTextField.text
        let courseName = self.courseNameTextField.text
       
        guard let dataFromSecondViewController = dataOnSecondViewController else {
            print("No data Found")
            return
        }
       
        dataFromSecondViewController(firstName ?? "Abc",
                                     lastName ?? "Abc",
                                     courseName ?? "iOS")
        
        self.navigationController?.popViewController(animated: true)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
