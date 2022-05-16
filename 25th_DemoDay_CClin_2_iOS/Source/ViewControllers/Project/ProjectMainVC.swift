//
//  ProjectMainVC.swift
//  25th_DemoDay_CClin_2_iOS
//
//  Created by 홍희수 on 2022/05/11.
//

import UIKit
import Tabman
import Pageboy


class ProjectMainVC: UIViewController {
    
    @IBOutlet weak var projectCollectionView: UICollectionView!
    @IBOutlet weak var searchBar: UISearchBar!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        projectCollectionView.delegate = self
        projectCollectionView.dataSource = self
    }
    
}

extension ProjectMainVC : UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        <#code#>
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        <#code#>
    }
    
    
}

extension ProjectMainVC : UICollectionViewDelegate {
    
}

extension ProjectMainVC : UICollectionViewDelegateFlowLayout {
    
}
