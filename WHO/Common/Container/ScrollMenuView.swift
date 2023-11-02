//
//  ScrollMenuView.swift
//  TaleOMeter
//
//  Created by Durgesh on 16/02/22.
//

import UIKit

// MARK: - Protocol additional function -
protocol ScrollMenuViewDelegate : AnyObject {
    func scrollMenuViewSelectedIndex(_ index: NSInteger)
}

// MARK: - View -
class ScrollMenuView: UIView {
    
    // MARK: - Delegate -
    weak var delegate: ScrollMenuViewDelegate?
    
    // MARK: - Properties -
    var scrollView:UIScrollView?
    var itemViewArray:[UILabel]? = [UILabel]()
    var itemMainViewArray:[UIView]? = [UIView]()
    var itemSelectedTitleColor = UIColor.black
    
    var menuViewWidth:CGFloat = 70
    var menuViewMargin:CGFloat = 5.0
    var indicatorHeight:CGFloat = 2.0
    
    var viewbackgroundColor:UIColor? {
        didSet {
            self.backgroundColor = viewbackgroundColor
        }
    }
    
    var itemfont:UIFont! {
        didSet {
            for label:UILabel in self.itemViewArray! {
                label.font = itemfont
            }
        }
    }
    
    var itemTitleColor = UIColor.black {
        didSet {
            for label:UILabel in self.itemViewArray! {
                label.textColor = itemTitleColor
            }
        }
    }
    
    var itemIndicatorColor = UIColor.black {
        didSet {
            indicatorView.backgroundColor = itemIndicatorColor
        }
    }
    
    var itemTitleArray:[NSString]? {
        didSet {
            
            var views:[UILabel] = [UILabel]()
            var mainViews: [UIView] = [UIView]()
            
            for index in 0..<itemTitleArray!.count {
                let frame = CGRect(x: 0, y: 0, width: menuViewWidth, height: self.frame.height)
                let mainView = UIView(frame: frame)
                mainView.isUserInteractionEnabled = true
                mainView.tag = index
                
                let itemView = UILabel.init(frame: frame)
//                itemView.tag = index
                itemView.text = itemTitleArray![index] as String
//                itemView.isUserInteractionEnabled = true
                itemView.backgroundColor = UIColor.clear
                itemView.textAlignment = .center
                itemView.adjustsFontSizeToFitWidth = true
//                itemView.minimumScaleFactor = 0.7
                itemView.numberOfLines = 2
                itemView.font = self.itemfont
                views.append(itemView)
                mainView.addSubview(itemView)

//                let btn = UIButton(frame: CGRect(x: 0.0, y: 0.0, width: mainView.frame.size.width, height: mainView.frame.size.height))
//                btn.tag = index
//                btn.addTarget(self, action: #selector(itemTapAction), for: .touchUpInside)
                mainView.backgroundColor = .clear
                mainViews.append(mainView)
                self.scrollView?.addSubview(mainView)
                
                let tapGesture = UITapGestureRecognizer.init(target: self, action: #selector(itemViewTapAction))
                mainView.addGestureRecognizer(tapGesture)
            }
            
            self.itemMainViewArray = mainViews
            self.itemViewArray = views
            self.indicatorView = UIView.init(frame: CGRect(x: 0, y: self.scrollView!.frame.size.height - indicatorHeight, width: menuViewWidth, height: indicatorHeight))
            self.indicatorView.backgroundColor = self.itemIndicatorColor
            self.scrollView?.addSubview(self.indicatorView)
        }
    }

    fileprivate var indicatorView:UIView = UIView()
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Initialization -
    init(frame: CGRect,mwidth:CGFloat = 70,mmargin:CGFloat = 5.0,mindicator:CGFloat = 2.0) {
        super.init(frame: frame)

        viewbackgroundColor = UIColor.white
        self.backgroundColor = viewbackgroundColor!
        
        menuViewWidth = mwidth
        menuViewMargin = 0.0//mmargin
        indicatorHeight = mindicator

        itemfont = UIFont.systemFont(ofSize: 16)
        itemTitleColor = UIColor(red: 0.866667, green: 0.866667, blue: 0.866667, alpha: 1.0)
        itemSelectedTitleColor = UIColor(red: 0.33333, green: 0.33333, blue: 0.33333, alpha: 1.0)
        itemIndicatorColor = UIColor(red: 0.168627, green: 0.168627, blue: 0.168627, alpha: 1.0)
        
        self.scrollView = UIScrollView.init(frame: bounds)
        self.scrollView!.showsHorizontalScrollIndicator = false
        
        self.addSubview(scrollView!)
    }
    
    override func draw(_ rect: CGRect) {
        super.draw(rect)
        
    }
    
    internal func setIndicatorViewFrame(_ ratio:CGFloat,isNextItem:Bool,toIndex:NSInteger){
        
        var indicatorX:CGFloat = 0.0
        indicatorX = (menuViewMargin + menuViewWidth)*ratio+menuViewWidth*CGFloat(toIndex) + menuViewMargin*CGFloat(toIndex+1)
        
        if (indicatorX < menuViewMargin || indicatorX > self.scrollView!.contentSize.width - (menuViewMargin + menuViewWidth)) {
            return
        }
        
        self.indicatorView.frame = CGRect(x: indicatorX, y: (self.scrollView?.frame.size.height)! - indicatorHeight, width: menuViewWidth, height: indicatorHeight)
    }
    
    internal func setItem(_ itemTextColor:UIColor?,selectedItemTextColor:UIColor?,currentIndex:NSInteger){
        
        if itemTextColor != nil {
            self.itemTitleColor = itemTextColor!
        }
        
        if selectedItemTextColor != nil {
            self.itemSelectedTitleColor = selectedItemTextColor!
        }
        
        for index in 0..<self.itemViewArray!.count {
            let label = self.itemViewArray![index]
            if index == currentIndex {
                label.backgroundColor = UIColor(hexString: "#22CF80")
                UIView.animate(withDuration: 0.75, delay: 0.0, options: [.curveLinear , .allowUserInteraction], animations: {
//                    label.alpha = 1.0
                    label.textColor = self.itemSelectedTitleColor
                    }, completion:nil)
            } else {
                label.textColor = self.itemTitleColor
                label.backgroundColor = .clear
            }
        }
    }
    
    func addBottomBorder(with color: UIColor?, andWidth borderWidth: CGFloat) {
        let border = UIView()
        border.backgroundColor = color
        border.autoresizingMask = [.flexibleWidth, .flexibleTopMargin]
        border.frame = CGRect(x: 0, y: frame.size.height - borderWidth, width: frame.size.width, height: borderWidth)
        addSubview(border)
    }
    
    func setShadowView() {
        let view = UIView()
        view.frame = CGRect(x: 0, y: self.frame.size.height - 0.5, width: self.frame.width, height: 0.5)
        view.backgroundColor = UIColor.lightGray
        self.addSubview(view)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        var x:CGFloat = menuViewMargin
        
        for index in 0..<self.itemViewArray!.count {
            let width = menuViewWidth
            let iteV:UIView = self.itemMainViewArray![index] as UIView
            iteV.frame = CGRect(x: x, y: 0, width: width, height: (self.scrollView?.frame.height)!)
            x += width + menuViewMargin
        }
        
        self.scrollView?.contentSize = CGSize(width: x, height: (self.scrollView?.frame.height)!)
        
        var fra:CGRect = (self.scrollView?.frame)!
        if self.frame.size.width > x {
            fra.origin.x = (self.frame.size.width - x)*0.5
            fra.size.width = x
        }else{
            fra.origin.x = 0
            fra.size.width = self.frame.size.width
        }
        
        self.scrollView?.frame = fra
    }
    
    @objc func itemViewTapAction(_ Recongnizer:UITapGestureRecognizer){
        let tapGesture = Recongnizer as UITapGestureRecognizer
        self.delegate?.scrollMenuViewSelectedIndex((tapGesture.view?.tag)!)
    }
    
    @objc func itemTapAction(_ sender: UIButton){
        self.delegate?.scrollMenuViewSelectedIndex(sender.tag)
    }
}


extension UILabel {

     func drawBorder(edges: [UIRectEdge], borderWidth: CGFloat, color: UIColor, margin: CGFloat) {
        for item in edges {
            let borderLayer: CALayer = CALayer()
            borderLayer.borderColor = color.cgColor
            borderLayer.borderWidth = borderWidth
            switch item {
            case .top:
                borderLayer.frame = CGRect(x: margin, y: 0, width: frame.width - (margin*2), height: borderWidth)
            case .left:
                borderLayer.frame =  CGRect(x: 0, y: margin, width: borderWidth, height: frame.height - (margin*2))
            case .bottom:
                borderLayer.frame = CGRect(x: margin, y: frame.height - borderWidth, width: frame.width - (margin*2), height: borderWidth)
            case .right:
                borderLayer.frame = CGRect(x: frame.width - borderWidth, y: margin, width: borderWidth, height: frame.height - (margin*2))
            case .all:
                drawBorder(edges: [.top, .left, .bottom, .right], borderWidth: borderWidth, color: color, margin: margin)
            default:
                break
            }
            self.layer.addSublayer(borderLayer)
        }
    }

}
