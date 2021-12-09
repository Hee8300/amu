//
//  ViewController.swift
//  testpager
//
//  Created by 홍태희 on 2021/12/09.
//

import UIKit
import XLPagerTabStrip
import FSPagerView
import SnapKit
import Then

class ViewController: ButtonBarPagerTabStripViewController {

    let pageCollection = UICollectionView()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .white
        configureButtonBar()
    }

    //상단 탭바 디자인
    func configureButtonBar() {
        
        settings.style.buttonBarBackgroundColor = .white
        settings.style.buttonBarItemBackgroundColor = .white

        settings.style.buttonBarItemFont = UIFont(name: "Helvetica", size: 17.0)!
        settings.style.buttonBarItemTitleColor = .gray
            
        settings.style.buttonBarMinimumLineSpacing = 20
        settings.style.buttonBarItemsShouldFillAvailableWidth = true
        settings.style.buttonBarLeftContentInset = 0
        settings.style.buttonBarRightContentInset = 0

        settings.style.selectedBarHeight = 3.0
        settings.style.selectedBarBackgroundColor = .orange
                    
        // Changing item text color on swipe
        changeCurrentIndexProgressive = { (oldCell: ButtonBarViewCell?, newCell: ButtonBarViewCell?, progressPercentage: CGFloat, changeCurrentIndex: Bool, animated: Bool) -> Void in
            guard changeCurrentIndex == true else { return }
            oldCell?.label.textColor = .gray
            newCell?.label.textColor = .orange
        }
    }
    
    func indicatorInfo(for PagerTabStripController: PagerTabStripViewController) -> IndicatorInfo {
        return IndicatorInfo(title: "투데이")
    }
    
    override func viewControllers(for pagerTabStripController: PagerTabStripViewController) -> [UIViewController] {
        
        let child1 = ViewController()
        let child2 = RealtimeViewController()
        let child3 = NewViewController()
        
        return [ child1, child2, child3 ]
    }
}

