//
//  AddViewController.swift
//  UserDefaultsTodo
//
//  Created by Haruko Okada on 2/4/21.
//

import UIKit

class AddViewController: UIViewController {
    
    var todoArray: [String] = []
    
    let saveData = UserDefaults.standard
    
    @IBOutlet weak var todoTextView: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if saveData.array(forKey: "todo") != nil {
            todoArray = saveData.array(forKey: "todo") as! [String]
        }
    }
    
    
    @IBAction func saveButtonTapped(_ sender: Any) {
        
        todoArray.append(todoTextView.text!)
        saveData.set(todoArray, forKey: "todo")
        dismiss(animated: true, completion: nil)
        print(todoArray)
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
