//
//  homeVC.swift
//  Emdad
//
//  Created by creative on 15/09/1440 AH.
//  Copyright © 1440 creative. All rights reserved.
//

import UIKit
import ImageSlideshow
class homeVC: UIViewController {

    @IBOutlet weak var slideView: ImageSlideshow!
    
    
    open override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        return .portrait
    }
    let localSource = [ImageSource(imageString: "card1"),
                       ImageSource(imageString: "card2"),
                       ImageSource(imageString: "card3")
        
    ]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        slideView.slideshowInterval = 2.0
        slideView.pageIndicatorPosition = .init(horizontal: .center, vertical: .under)
        slideView.contentScaleMode = UIView.ContentMode.scaleAspectFill
        
        let pageControl = UIPageControl()
        pageControl.currentPageIndicatorTintColor = UIColor.lightGray
        pageControl.pageIndicatorTintColor = UIColor.black
        slideView.pageIndicator = pageControl
        // slideView.delegate = self
        
        // can be used with other sample sources as `afNetworkingSource`, `alamofireSource` or `sdWebImageSource` or `kingfisherSource`
        //slideView.setImageInputs(localSource as! [InputSource])
      //  slideView.setImageInputs([localSource as! InputSource])
        let recognizer = UITapGestureRecognizer(target: self, action: #selector(didTap))
        slideView.addGestureRecognizer(recognizer)
        
        
    }
    @objc func didTap() {
        let fullScreenController = slideView.presentFullScreenController(from: self)
        // set the activity indicator for full screen controller (skipping the line will show no activity indicator)
        fullScreenController.slideshow.activityIndicator = DefaultActivityIndicator(style: .white, color: nil)
    }
    
    
    @IBAction func shippingAndTransportBtn(_ sender: UIButton) {
        performSegue(withIdentifier: "firstScreenToTransportation", sender: self)
    }
    


}
