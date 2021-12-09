//
//  NewViewController.swift
//  testpager
//
//  Created by 홍태희 on 2021/12/09.
//

import UIKit
import XLPagerTabStrip

class NewViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func indicatorInfo(for PagerTabStripController: PagerTabStripViewController) -> IndicatorInfo {
        return IndicatorInfo(title: "New")
    }
}
