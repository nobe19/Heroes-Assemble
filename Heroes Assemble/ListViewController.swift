//
//  ListViewController.swift
//  Heroes Assemble
//
//  Created by Nipuni Obe on 5/14/21.
//

import UIKit

class ListViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    
    var heroes = Heroes()
    //var heroes = ["Scarlet Witch", "Iron Man", "Harry Potter", "Batman", "Mephisto"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        heroes.getHeroes(){
            self.tableView.reloadData()
        }
    }
}

extension ListViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return heroes.heroesArray.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.textLabel?.text = heroes.heroesArray[indexPath.row].name//???
        return cell
    }
}
