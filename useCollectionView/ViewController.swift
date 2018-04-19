//
//  ViewController.swift
//  useCollectionView
//
//  Created by Peter on 2018/4/19.
//  Copyright © 2018年 Peter. All rights reserved.
//

import UIKit

class ViewController: UICollectionViewController, UICollectionViewDelegateFlowLayout{
    
    var myLayout: UICollectionViewFlowLayout!
    let data = DataName.myDataName()
    override func viewDidLoad() {
        super.viewDidLoad()
        setMyLayout()
        self.collectionView = UICollectionView.init(frame: UIScreen.main.bounds, collectionViewLayout: myLayout)
        self.collectionView?.register(MyCell.self, forCellWithReuseIdentifier: "MyCell")
        self.collectionView?.delegate = self
        self.collectionView?.dataSource = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func setMyLayout(){
        myLayout = UICollectionViewFlowLayout()
        myLayout.scrollDirection = .horizontal
        myLayout.sectionInset = UIEdgeInsets.init(top: 10, left: 10, bottom: 10, right: 10)
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 2
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "MyCell", for: indexPath)
        cell.backgroundView = UIImageView.init(image: UIImage.init(named: data[indexPath.row].title!))
        return cell
    }


}

