//
//  ViewController.swift
//  StackFrameWork
//
//  Created by Shashwat KN on 31/10/20.
//  Copyright © 2020 Flipkart. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {

    var selectedRow = 0
    override func viewDidLoad() {
        tableView.isScrollEnabled = false
        super.viewDidLoad()
        self.tableView.contentInset = UIEdgeInsets(top: 20, left: 0, bottom: 0, right: 0)
        // Do any additional setup after loading the view.
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if selectedRow == indexPath.row && selectedRow != 3 {
            selectedRow = indexPath.row + 1
        } else {
            selectedRow = indexPath.row
        }
        if indexPath.row != 3 {
            self.tableView.reloadRows(at: [indexPath], with: .bottom)
            
        }
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        let cell = UITableViewCell()

        cell.selectionStyle = .none
        if selectedRow == indexPath.row {
            cell.backgroundColor = UIColor.black
             cell.textLabel?.text = "expanded View Click to go to next view"
            cell.textLabel?.textColor = UIColor.white
        } else {
            cell.backgroundColor = UIColor.gray
            cell.textLabel?.text = "collapsed View Click to expand this view"
            cell.imageView?.image = UIImage(named: "chevron.down")
            
        }
        return cell
    }
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if selectedRow == indexPath.row {
            return UIScreen.main.bounds.size.height - CGFloat((indexPath.row * 50))

        } else if selectedRow < indexPath.row {
            return 0
        } else {
            return 50
        }
    }

}

