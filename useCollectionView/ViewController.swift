//
//  ViewController.swift
//  useCollectionView
//
//  Created by Peter on 2018/4/19.
//  Copyright © 2018年 Peter. All rights reserved.
//

import UIKit

class ViewController: UICollectionViewController, UICollectionViewDelegateFlowLayout{
    
    let data = DataName.myDataName()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //debug:UICollectionView must be initialized with a non-nil layout parameter
        
        self.collectionView?.register(MyCell.self, forCellWithReuseIdentifier: "MyCell")
        self.collectionView?.delegate = self
        self.collectionView?.dataSource = self
        self.collectionView?.backgroundColor = .gray
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return data.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "MyCell", for: indexPath)
        let dataname = data[indexPath.row].title
        let imageview = UIImageView.init(image: UIImage.init(named: dataname!))
        imageview.frame = cell.contentView.frame
        cell.contentView.addSubview(imageview)
        return cell
    }


}

