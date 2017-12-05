//
//  CourseViewController.swift
//  Assignement Notebook 4.0
//
//  Created by  on 12/5/17.
//  Copyright © 2017 MadManApps. All rights reserved.
//

import UIKit

class CourseViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    var courseOneName = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    
    
    
    
    
    //table view propertys
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "course", for: indexPath)
        cell.textLabel?.text = courseOneName
        return cell
    }
    
    
    
    
    
    
}
