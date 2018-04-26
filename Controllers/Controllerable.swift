//
//  Controllerable.swift
//  GildedRose
//
//  Created by Subedi, Rikesh on 26/04/18.
//  Copyright © 2018 Tom Heinan. All rights reserved.
//

import Foundation
protocol ItemController {
    var item: Item {get set}
    func updateQuality()
    func updateSellin()
    init(item: Item)
}
