//
//  AgedBrieController.swift
//  GildedRose
//
//  Created by Subedi, Rikesh on 26/04/18.
//  Copyright © 2018 Tom Heinan. All rights reserved.
//

import Foundation
class AgedBrieController : BaseController {
    override func updateQuality() {
        if item.sellIn < 1 {
            item.quality = item.quality + 1
        }
        item.quality = item.quality + 1
        item.quality = item.quality > 50 ? 50 : item.quality
    }
}
