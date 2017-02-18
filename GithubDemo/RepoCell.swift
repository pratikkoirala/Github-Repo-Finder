//
//  RepoCell.swift
//  GithubDemo
//
//  Created by Pratik Koirala on 2/17/17.
//  Copyright © 2017 codepath. All rights reserved.
//

import UIKit

class RepoCell: UITableViewCell {

    @IBOutlet weak var forkView: UIImageView!
    @IBOutlet weak var starView: UIImageView!
    @IBOutlet weak var avatarView: UIImageView!
    @IBOutlet weak var forksLabel: UILabel!
    @IBOutlet weak var starsLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var ownerLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    
    var repo: GithubRepo! {
        didSet {
            ownerLabel.text = "by: " + repo.ownerHandle!
            forksLabel.text = "\(repo.forks!)"
            starsLabel.text = "\(repo.stars!)"
            descriptionLabel.text = repo.repoDescription
            nameLabel.text = repo.name
            let imageURL = URL(string: repo.ownerAvatarURL!)
            avatarView.setImageWith(imageURL!)
            forkView.image = UIImage(named: "fork")
            starView.image = UIImage(named: "star")
           
        
        }
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
