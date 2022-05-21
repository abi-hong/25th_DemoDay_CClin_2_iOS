//
//  ProjectRegisterVC.swift
//  25th_DemoDay_CClin_2_iOS
//
//  Created by 홍희수 on 2022/05/20.
//

import UIKit

class ProjectRegisterVC: UIViewController {
    
    
    @IBOutlet weak var posterImg: UIImageView!
    @IBOutlet weak var registerBtn: UIImageView!
    
    let projectDetailSB : UIStoryboard = UIStoryboard(name: "ProjectDetail", bundle: nil)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        posterImg.image = UIImage(named: "고퀄")
        registerBtn.image = UIImage(named : "등록하기버튼")
    }
    

    @IBAction func registerBtnClicked(_ sender: Any) {
        guard let nextVC = projectDetailSB.instantiateViewController(identifier: "ProjectDetailVC") as? ProjectDetailVC else {return}
        
        self.navigationController?.pushViewController(nextVC, animated: true)
    }
    
    
}
