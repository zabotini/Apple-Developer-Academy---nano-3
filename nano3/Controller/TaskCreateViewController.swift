//
//  TaskCreateViewController.swift
//  nano3
//
//  Created by Rafael Zabotini on 07/02/18.
//  Copyright © 2018 Rafael Zabotini. All rights reserved.
//

import UIKit

class TaskCreateViewController: UIViewController {
    
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var descriptionTextField: UITextView!
    @IBOutlet weak var categorySegmented: UISegmentedControl!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.hideKeyboardWhenTappedAround()
    }
    
    @IBAction func saveDataButton(_ sender: Any) {
        guard let name = nameTextField.text else {return}
        guard let description = descriptionTextField.text else {return}
        guard let category = categorySegmented else {return}
        
        DataModel.shared.createTask(task: TaskRegister(name: name, description: description, category: TaskCategory(rawValue: category.selectedSegmentIndex)!))
    }
    
     // MARK: - Navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     }
}

extension UIViewController {
    func hideKeyboardWhenTappedAround() {
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(UIViewController.dismissKeyboard))
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
    }
    
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
}
