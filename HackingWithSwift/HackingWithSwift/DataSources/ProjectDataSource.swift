//
//  ProjectDataSource.swift
//  HackingWithSwift
//
//  Created by Thomas Kellough on 6/18/20.
//  Copyright © 2020 Hacking with Swift. All rights reserved.
//

import UIKit

class ProjectDataSource: NSObject, UITableViewDataSource {
    
    let projects: [Project] = Bundle.main.decode(from: "projects.json")
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return projects.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        let project = projects[indexPath.row]
        cell.textLabel?.attributedText = project.attributedTitle
        return cell
    }
    
    // Getter for projects
    func project(at index: Int) -> Project {
        return projects[index]
    }
}
