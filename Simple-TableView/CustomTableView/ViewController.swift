//
//  ViewController.swift
//  CustomTableView
//
//  Created by Сергей Анпилогов on 26.08.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var table: UITableView!
    
    
    var models = [Post]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        table.register(MyTableViewCell.nib(), forCellReuseIdentifier: MyTableViewCell.identifier)
        
    
        models.append(Post(avatarImageName: "logo", postImageName: "Image1", viewCount: 150 , description: " Lorem ipsum is a placeholder text commonly used to demonstrate the visual form ", countOfComments: 30, postedAt: "3 minutes ago"))
        
        models.append(Post(avatarImageName: "logo", postImageName: "Image2", viewCount: 250, description: " Lorem ipsum is a placeholder text commonly used to demonstrate the visual form  ", countOfComments: 10, postedAt: "5 minutes ago"))
        
        models.append(Post(avatarImageName: "logo", postImageName: "Image3", viewCount: 340, description: " Lorem ipsum is a placeholder text commonly used to demonstrate the visual form  ", countOfComments: 50, postedAt: "10 minutes ago"))
        
        
        table.delegate = self
        table.dataSource = self
        
        
        
    }
}


extension ViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        models.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: MyTableViewCell.identifier, for: indexPath) as! MyTableViewCell
        cell.configurate(with: models[indexPath.row])
        
        return cell
        
    }
}

extension ViewController: UITableViewDelegate {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
}


