//
//  MyTableViewCell.swift
//  CustomTableView
//
//  Created by Сергей Анпилогов on 26.08.2022.
//

import UIKit

class MyTableViewCell: UITableViewCell {

    
    @IBOutlet weak var postImageName: UIImageView!
    @IBOutlet weak var avatarImageName: UIImageView!
    @IBOutlet weak var pointImage: UIImageView!
    @IBOutlet weak var viewCount: UILabel!
    @IBOutlet weak var descriptions: UILabel!
    @IBOutlet weak var postedAd: UILabel!

    static let identifier = "MyTableViewCell"
    
    static func nib() -> UINib {
        return UINib(nibName: "MyTableViewCell", bundle: nil)
    }

    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
    
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

      
    }
    
    
    func configurate(with model: Post) {
        self.avatarImageName.image = UIImage(named: model.avatarImageName)
        self.postImageName.image = UIImage(named: model.postImageName)
        self.viewCount.text = String(model.viewCount)
        self.descriptions.text = model.description
        self.postedAd.text = model.postedAt
        
        
    }
    
    
}

