//
//  ProjectDetailVC.swift
//  25th_DemoDay_CClin_2_iOS
//
//  Created by 홍희수 on 2022/05/20.
//

import UIKit

class ProjectDetailVC: UIViewController {

    @IBOutlet weak var posterImg: UIImageView!
    @IBOutlet weak var projectRegisterBtn: UIImageView!
    
    let projectRegisterSB : UIStoryboard = UIStoryboard(name: "ProjectRegister", bundle: nil)
    
    override func viewDidLoad() {
        super.viewDidLoad()

        posterImg.image = UIImage(named : "고퀄")
        projectRegisterBtn.image = UIImage(named : "프로젝트신청하기버튼")
        // Do any additional setup after loading the view.
    }
    
    @IBAction func projectRegisterBtnClicked(_ sender: Any) {
        guard let nextVC = projectRegisterSB.instantiateViewController(identifier: "ProjectRegisterVC") as? ProjectRegisterVC else {return}
        
        self.navigationController?.pushViewController(nextVC, animated: true)
        
    }
    
}
