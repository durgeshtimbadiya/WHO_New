//
//  ViewController.swift
//  WHO
//
//  Created by Durgesh on 12/10/23.
//

import UIKit

class LaunchViewController: UIViewController {

    @IBOutlet weak var descLabel: UILabel!
    
    @IBOutlet weak var guideView: UIView!
    @IBOutlet weak var guideScrollView: UIScrollView!
    @IBOutlet weak var AGskipButton: UIButton!
    @IBOutlet weak var pageController: UIPageControl!
    
    private struct AppGuideData {
        var image = UIImage()
        var title = String()
        var subTitle = String()
    }
    private var appGuideList = [AppGuideData]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //en, as-IN, bn-IN, gu-IN, hi-IN, kn-IN, ml-IN, or-IN, pa-IN, ta-IN, te-IN,

//        DispatchQueue.main.asyncAfter(deadline: .now() + 10.0) {
//            self.descLabel.text = "Launch".localizeString(string: "as-IN")
//            DispatchQueue.main.asyncAfter(deadline: .now() + 10.0) {
//                self.descLabel.text = "Launch".localizeString(string: "bn-IN")
//                DispatchQueue.main.asyncAfter(deadline: .now() + 10.0) {
//                    self.descLabel.text = "Launch".localizeString(string: "gu-IN")
//                }
//            }
//            //en, as-IN, bn-IN, gu-IN, hi-IN, kn-IN, ml-IN, or-IN, pa-IN, ta-IN, te-IN,
//        }
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        descLabel.text = StringConstant.launchTagLine
        self.AGskipButton.setTitle(StringConstant.SKIP, for: .normal)
        DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
            if UserDefaults.standard.value(forKey: "SelectedLanguege") == nil {
                if let myobject = Storyboard.dashboard.instantiateViewController(withIdentifier: "LanguageViewController") as? LanguageViewController {
                    myobject.isFromLaunch = true
                    self.navigationController?.pushViewController(myobject, animated: true)
                }
                return
            } else {
                if !UserDefaults.standard.bool(forKey: "GuideCompleted") {
                    self.appGuideList.append(AppGuideData(image: UIImage(named: "img2")!, title: StringConstant.guideTitle1, subTitle: ""))
                    self.appGuideList.append(AppGuideData(image: UIImage(named: "img1")!, title: StringConstant.guideTitle2, subTitle: ""))
                    self.appGuideList.append(AppGuideData(image: UIImage(named: "img3")!, title: StringConstant.guideTitle3, subTitle: ""))
                    self.appGuideList.append(AppGuideData(image: UIImage(named: "img4")!, title: StringConstant.guideTitle4, subTitle: ""))
                    self.guideScrollView.contentSize = CGSize(width: self.guideScrollView.frame.size.width * CGFloat(self.appGuideList.count), height: self.guideScrollView.frame.size.height - 100.0)
                    self.pageController.numberOfPages = self.appGuideList.count
                    var xOrigin = 0.0
                    for ag in self.appGuideList {
                        let stackView = UIStackView(frame: CGRect(x: xOrigin + 10.0, y: 0.0, width: self.guideScrollView.frame.size.width - 20.0, height: self.guideScrollView.frame.size.height - 0.0))
                        stackView.axis = .vertical
                        stackView.alignment = .center
                        stackView.distribution = .fillProportionally
                        stackView.spacing = 5
                        
                        let imageVi = UIImageView()
                        imageVi.image = ag.image
                        imageVi.contentMode = .scaleAspectFit
                        stackView.addArrangedSubview(imageVi)
                        
                        let titleLabel = UILabel()
                        titleLabel.font = UIFont.boldSystemFont(ofSize: 17.0)
                        titleLabel.text = ag.title
                        titleLabel.textColor = .white
                        titleLabel.textAlignment = .center
                        titleLabel.numberOfLines = 0
                        titleLabel.sizeToFit()
                        let heightConstraint = NSLayoutConstraint(item: titleLabel, attribute: NSLayoutConstraint.Attribute.height, relatedBy: NSLayoutConstraint.Relation.equal, toItem: nil, attribute: NSLayoutConstraint.Attribute.notAnAttribute, multiplier: 1, constant: 80.0)
                        titleLabel.addConstraint(heightConstraint)
                        stackView.addArrangedSubview(titleLabel)

                        self.guideScrollView.addSubview(stackView)
                        xOrigin += Double(self.guideScrollView.frame.size.width)
                    }
                    self.guideView.isHidden = false
                    return
                }
            }
            if let myobject = Storyboard.dashboard.instantiateViewController(withIdentifier: "DashboardViewController") as? DashboardViewController {
                self.navigationController?.pushViewController(myobject, animated: true)
            }
        }
    }
    
    @IBAction func tapOnSkip(_ sender: UIButton) {
        UserDefaults.standard.setValue(true, forKey: "GuideCompleted")
        if let myobject = Storyboard.dashboard.instantiateViewController(withIdentifier: "DashboardViewController") as? DashboardViewController {
            self.navigationController?.pushViewController(myobject, animated: true)
        }
    }
    
    @IBAction func changePageView(_ sender: UIPageControl) {
        let xOrigin = Double(self.guideScrollView!.frame.size.width) * Double(sender.currentPage)
        self.guideScrollView!.scrollRectToVisible(CGRect(x: xOrigin, y: 0.0, width: Double(self.guideScrollView!.frame.size.width), height: Double(self.guideScrollView!.frame.size.height)), animated: true)
    }
}

extension LaunchViewController: UIScrollViewDelegate {
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        if self.guideScrollView != nil {
            let pageWidth = self.guideScrollView!.frame.size.width
            let page = Int(floor((self.guideScrollView!.contentOffset.x - pageWidth / 2) / pageWidth) + 1)
            self.pageController.currentPage = page
//            self.AGskipButton.isHidden = !self.AGLetsStart.isHidden
        }
    }

    func scrollViewWillEndDragging(_ scrollView: UIScrollView, withVelocity velocity: CGPoint, targetContentOffset: UnsafeMutablePointer<CGPoint>) {
    }
}
