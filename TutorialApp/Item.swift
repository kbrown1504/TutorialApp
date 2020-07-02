//
//  Item.swift
//  TutorialApp
//
//  Created by Keegan Brown on 7/1/20.
//  Copyright © 2020 Keegan Brown. All rights reserved.
//

import Foundation
import UIKit

var items: [Item] = []

class Item {
    
    var title: String?
    var textDescription: String?
    var link: String?
    var image: UIImage?
    
    init(t: String, td: String, l: String, i: UIImage)
    {
        title = t
        textDescription = td
        link = l
        image = i
    }
}
