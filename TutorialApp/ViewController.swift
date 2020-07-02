//
//  ViewController.swift
//  TutorialApp
//
//  Created by Keegan Brown on 6/30/20.
//  Copyright © 2020 Keegan Brown. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var mainTableView: UITableView!
    
    var selectedItem : Item?
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = mainTableView.dequeueReusableCell(withIdentifier: "cellid")
        cell?.imageView?.image = items[indexPath.row].image!
        cell?.textLabel?.text = items[indexPath.row].title!
        return cell!
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let cell = tableView.cellForRow(at: indexPath)
        tableView.deselectRow(at: indexPath, animated: true)
        selectedItem = items[indexPath.row]
        performSegue(withIdentifier: "tableToDetailSegue", sender: cell)
    }
    

    override func viewWillAppear(_ animated: Bool) {
        let object1 = Item(t: "title", td: "desc", l: "https://space-facts.com", i: UIImage(named: "avatarIcon")!)
        items.append(object1)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mainTableView.delegate = self
        mainTableView.dataSource = self
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let SVC = segue.destination as! ScrollViewViewController
        SVC.selectedItem = selectedItem
        print(selectedItem?.textDescription)
    }


}

