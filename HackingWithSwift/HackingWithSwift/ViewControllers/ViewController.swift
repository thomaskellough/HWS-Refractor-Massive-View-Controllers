//
//  ViewController.swift
//  HackingWithSwift
//
//  Created by Paul Hudson on 08/11/2018.
//  Copyright © 2018 Hacking with Swift. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    
    let dataSource = ProjectDataSource()

    override func viewDidLoad() {
        super.viewDidLoad()

        title = "Hacking with Swift"
        navigationController?.navigationBar.prefersLargeTitles = true
        
        tableView.dataSource = dataSource
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let project = dataSource.project(at: indexPath.row)

        guard let detailVC = storyboard?.instantiateViewController(withIdentifier: "DetailViewController") as? DetailViewController else {
            return
        }

        detailVC.project = project
        navigationController?.pushViewController(detailVC, animated: true)
    }
}

