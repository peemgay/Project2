//
//  ViewController.swift
//  AutoScroller
//
//  Created by SHUBHAM AGARWAL on 04/02/19.
//  Copyright © 2019 SHUBHAM AGARWAL. All rights reserved.
//

import UIKit

class ViewController3: UIViewController {
    
   // @IBOutlet weak var SliderCollectionView: UICollectionView!
    //@IBOutlet weak var pageView: UIPageControl!
 
    @IBOutlet weak var abc: UICollectionView!
    
    
    var imgArr = [  UIImage(named:"Alexandra Daddario"),
                    UIImage(named:"1") ,
                    UIImage(named:"2") ,
                    UIImage(named:"3") ,
                    UIImage(named:"4") ,
                    UIImage(named:"5") ,
                    UIImage(named:"6") ,
                    UIImage(named:"7") ,
                    UIImage(named:"8") ,
                    UIImage(named:"9") ]
    
    var timer = Timer()
    var counter = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        /*pageView.numberOfPages = imgArr.count
        pageView.currentPage = 0*/
        DispatchQueue.main.async {
            self.timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(self.changeImage), userInfo: nil, repeats: true)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
   @objc func changeImage() {
    
    if counter < imgArr.count {
        let index = IndexPath.init(item: counter, section: 0)
        //self.test.scrollToItem(at: index, at: .centeredHorizontally, animated: true)
        //pageView.currentPage = counter
        counter += 1
    } else {
        counter = 0
        let index = IndexPath.init(item: counter, section: 0)
        //self.test.scrollToItem(at: index, at: .centeredHorizontally, animated: false)
        //pageView.currentPage = counter
        counter = 1
    }
    
    }
}

extension ViewController3: UICollectionViewDelegate, UICollectionViewDataSource {
    
    //var imgArr = imgArr
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return imgArr.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell3", for: indexPath)
        if let vc = cell.viewWithTag(111) as? UIImageView {
            vc.image = imgArr[indexPath.row]
        } 
        return cell
    }
}


extension ViewController3: UICollectionViewDelegateFlowLayout {

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
}

    /*func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let size = test.frame.size
        return CGSize(width: size.width, height: size.height)
}*/

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0.0
}

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0.0
    }
}
