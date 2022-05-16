//
//  ProjectCategoryCVC.swift
//  25th_DemoDay_CClin_2_iOS
//
//  Created by 홍희수 on 2022/05/11.
//

import UIKit

class ProjectCategoryCVC: UICollectionViewCell {
    static let identifier : String = "ProjectCategoryCVC"
    
    @IBOutlet weak var categoryButton: UIButton!
    
    func setData(btn : String) {
        categoryButton.setTitle(btn, for: .normal)
    }
}
