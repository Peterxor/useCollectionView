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
        return [DataName(title: "wave"), DataName(title: "run"), DataName(title: "hhhhh"), DataName(title: "hello"),
                DataName(title: "dudu"), DataName(title: "darkvarder"), DataName(title: "bodyline"), DataName(title: "blue")]
    }
}
