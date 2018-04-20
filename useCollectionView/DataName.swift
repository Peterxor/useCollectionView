//
//  DataName.swift
//  useCollectionView
//
//  Created by Peter on 2018/4/19.
//  Copyright © 2018年 Peter. All rights reserved.
//

import Foundation
class DataName{
    var title: String?
    init(title: String) {
        self.title = title
    }
    
    static func myDataName() -> [DataName]{
        return [DataName(title: "wave.jpg"), DataName(title: "run.png"), DataName(title: "hhhhh.jpg"), DataName(title: "hello.jpg"), DataName(title: "dudu.jpg"), DataName(title: "darkvarder.png"), DataName(title: "bodyline.png"), DataName(title: "blue.png")]
    }
}
