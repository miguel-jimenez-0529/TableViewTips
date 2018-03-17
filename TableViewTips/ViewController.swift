//
//  ViewController.swift
//  TableViewTips
//
//  Created by Macbook Pro on 16/03/18.
//  Copyright © 2018 Macbook Pro. All rights reserved.
//

import UIKit



class ViewController: UIViewController {
    
    var identifier = "cell"
    struct Section {
        let title: String
        let cells: [FeedItem]
    }
    var sections: [Section] = []

    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

extension ViewController : UITableViewDataSource  {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return sections.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cellModel = sections[indexPath.item].cells[indexPath.row]
        /*
        switch cellModel {
        case .status(let status):
            let cell = tableView.dequeueReusableCell( withIdentifier: identifier, for: indexPath) as! StatusTableViewCell
            cell.model = cellModel as! StatusFeed
            return cell
        case .photo(let photo):
            let cell = UITableViewCell()
            return cell
        }*/
        
         let cell = UITableViewCell()
        return cell
    }
    
    func tableView(_ tableView: UITableView,
                   titleForHeaderInSection section: Int) -> String? {
        return sections[section].title
    }
}

