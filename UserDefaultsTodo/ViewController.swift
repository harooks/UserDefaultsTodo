//
//  ViewController.swift
//  UserDefaultsTodo
//
//  Created by Haruko Okada on 2/4/21.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    
    var todoArray: [String] = []
    
    let saveData = UserDefaults.standard
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self


        self.tableView.reloadData()
    }
    
    override func viewDidAppear(_ animated: Bool) {

        if saveData.object(forKey: "todo") != nil {
        todoArray = saveData.object(forKey: "todo") as! [String]
        }
        
        print("hi2")
        tableView.reloadData()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        print("12")
        return todoArray.count

    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.textLabel?.text = todoArray[indexPath.row]
 print("tableView")
        print("returnedCell")
        return cell
    }


}

