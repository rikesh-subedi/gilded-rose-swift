//
//  ConjuredController.swift
//  GildedRose
//
//  Created by Subedi, Rikesh on 26/04/18.
//  Copyright © 2018 Tom Heinan. All rights reserved.
//

import Foundation
class ConjuredController: BaseController {
    
    override func updateQuality() {
        if(item.sellIn < 1){
            item.quality = item.quality - 2
        }
        item.quality = item.quality - 2
        item.quality = item.quality < 0 ? 0 : item.quality
    }
}


