//
//  ProjectDetailCVC.swift
//  25th_DemoDay_CClin_2_iOS
//
//  Created by ííŽė on 2022/05/14.
//

import UIKit

class ProjectDetailCVC: UICollectionViewCell {
    
    static let identifier: String = "ProjectDetailCVC"
 
    
    @IBOutlet weak var projectImg: UIImageView!
    @IBOutlet weak var projectTitle: UILabel!
    @IBOutlet weak var projectCategory: UILabel!
    @IBOutlet weak var projectCompanyTitle: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func setData(projectImgname : String, projectName : String, category: String, companyName: String) {
        
        if let image = UIImage(named: projectImgname) {
         projectImg.image = image
        }
        projectTitle.text = projectName
        projectCategory.text = category
        projectCompanyTitle.text = companyName
        
    }
    
}
