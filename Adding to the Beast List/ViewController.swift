//
//  ViewController.swift
//  Adding to the Beast List
//
//  Created by R on 04/05/1443 AH.
//  Copyright © 1443 R. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var newItemTF: UITextField!
    
    @IBOutlet weak var addBtn: UIButton!
    
    @IBOutlet weak var tableView: UITableView!
    
    @IBOutlet weak var stack: UIStackView!

    
    var BeastList = [String]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Beast List"
        stack.layer.borderColor = UIColor.orange.cgColor
        stack.layer.borderWidth = 10
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    @IBAction func beastButtonPressed(_ sender: UIButton) {
        // your code here
        // Add the textField text as an item to the array
        let newItem = newItemTF.text
        if let newItem = newItem{
        BeastList.append(newItem)
        }
        // reload the table view data
        tableView.reloadData()
        print(BeastList)
        newItemTF.text = ""

    }



}

extension ViewController :UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        BeastList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "tblcel")!
        cell.textLabel?.text = BeastList[indexPath.row]
        return cell
    }
    
    
}

