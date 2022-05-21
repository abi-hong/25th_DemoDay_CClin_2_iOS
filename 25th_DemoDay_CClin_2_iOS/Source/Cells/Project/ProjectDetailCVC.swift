//
//  ProjectDetailCVC.swift
//  25th_DemoDay_CClin_2_iOS
//
//  Created by 홍희수 on 2022/05/14.
//

import UIKit

class ProjectDetailCVC: UICollectionViewCell {
    
    static let identifier: String = "ProjectDetailCVC"
 
    
    @IBOutlet weak var projectImg: UIImage!
    @IBOutlet weak var projectTitle: UILabel!
    @IBOutlet weak var projectCategory: UILabel!
    @IBOutlet weak var projectCompanyTitle: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func setData(projectImgname : String, projectName : String, category: String, companyName: String) {
        /*if let image = UIImage(named: projectName) {
            projectImg.image = image
        }*/
        projectImg = UIImage(named : projectImgname)
        projectTitle.text = projectName
        projectCategory.text = category
        projectCompanyTitle.text = companyName
        
    }
    
}
