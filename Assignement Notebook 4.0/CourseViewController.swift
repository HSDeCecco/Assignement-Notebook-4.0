//
//  CourseViewController.swift
//  Assignement Notebook 4.0
//
//  Created by  on 12/5/17.
//  Copyright © 2017 MadManApps. All rights reserved.
//

import UIKit

class CourseViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var courseTableView: UITableView!
    var courses: [Course] = [Course] ()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addAlert()
        
        
    }
    
    //func
    
    
    func addAlert (){
        
        let alert = UIAlertController(title: "Set courses", message: "", preferredStyle: UIAlertControllerStyle.alert)
        alert.addTextField(configurationHandler: {textField in
            textField.placeholder = "Add Course Name"
        })
        alert.addTextField(configurationHandler: {textField in
            textField.placeholder = "Add Block/Period"
        })
        let okayAction = UIAlertAction(title: "Set", style: .default, handler: {action in
            let nameTF = alert.textFields![0]
            let blockTF = alert.textFields![1]
            let newCourse = Course(name: nameTF.text!, block: blockTF.text!)
            self.courses.append(newCourse)
            self.courseTableView.reloadData()
            self.addAlert()
        })
        let noAction = UIAlertAction(title: "No More Classes", style: .destructive, handler: {action in
            
        })
        
        
        alert.addAction(okayAction)
        alert.addAction(noAction)
        present(alert, animated: true, completion: nil)
        
    }
    
    
    //table view properties
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return courses.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "course", for: indexPath)
        let course = courses[indexPath.row]
        cell.textLabel?.text = course.name
        cell.detailTextLabel?.text = course.block
        cell.selectionStyle = .none
        return cell
    }
    

    
    
    
}
    
    

