//
//  ViewController.swift
//  useCollectionView
//
//  Created by Peter on 2018/4/19.
//  Copyright © 2018年 Peter. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout{
    var collectionView: UICollectionView?
    let data = DataName.myDataName()
    override func viewDidLoad() {
        super.viewDidLoad()
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        layout.sectionInset = UIEdgeInsets.init(top: 50, left: 50, bottom: 50, right: 50)
        layout.itemSize = CGSize.init(width: Double(UIScreen.main.bounds.width - 100), height: Double(UIScreen.main.bounds.width - 100))
        layout.minimumInteritemSpacing = 10
        collectionView = UICollectionView.init(frame: UIScreen.main.bounds, collectionViewLayout: layout)
        collectionView?.delegate = self
        collectionView?.dataSource = self
        collectionView?.register(MyCell.self, forCellWithReuseIdentifier: "cell")
        collectionView?.backgroundColor = .gray
        self.view.addSubview(collectionView!)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 2
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return data.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath)
        let image = UIImageView.init(image: UIImage.init(named: data[indexPath.row].title!))
        cell.backgroundView = image
        return cell
    }


}

