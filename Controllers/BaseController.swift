//
//  BaseController.swift
//  GildedRose
//
//  Created by Subedi, Rikesh on 26/04/18.
//  Copyright © 2018 Tom Heinan. All rights reserved.
//

import Foundation
class BaseController: ItemController {
    var item: Item
    
    required init(item: Item) {
        self.item = item
    }
    
    func updateQuality() {
        if(item.sellIn < 1){
            item.quality = item.quality - 1
        }
        item.quality = item.quality - 1
        item.quality = item.quality < 0 ? 0 : item.quality
    }
    
    func updateSellin() {
        self.item.sellIn = self.item.sellIn - 1
    }
}


