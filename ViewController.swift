//
//  ViewController.swift
//  customcells
//
//  Created by jogan-pt6304 on 13/02/23.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate , UITableViewDataSource{
   
    let ar = [
        ["a","b","c","d"],
        ["z","y","x","w","v"],
        ["1","2","3","4","5","6","7","8","9","0"],
        ["7","1","1"]
    ]

    let tableview : UITableView = {
       let tview = UITableView()
        tview.translatesAutoresizingMaskIntoConstraints = false
        tview.rowHeight = 100
        return tview
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(tableview)
        tableview.frame = view.bounds
        tableview.register(Customcell.self, forCellReuseIdentifier: "cell")
        tableview.register(UITableViewCell.self, forCellReuseIdentifier: "cell2")
        tableview.delegate = self
        tableview.dataSource = self
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return ar.count
       }
       
       func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
           let cell = tableview.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! Customcell
           cell.cellcontent = ar[indexPath.row]
           return cell
       }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableview.deselectRow(at: indexPath, animated: true)
        print("table row \(indexPath.row)")
    }
}
