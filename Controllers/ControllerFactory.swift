//
//  ControllerFactory.swift
//  GildedRose
//
//  Created by Subedi, Rikesh on 26/04/18.
//  Copyright © 2018 Tom Heinan. All rights reserved.
//

import Foundation
class ControllerFactory {
    public func getController(item: Item) -> ItemController {
        switch item.name {
        case "Sulfuras, Hand of Ragnaros":
            return SulfurasController(item: item)
        case "Aged Brie":
            return AgedBrieController(item: item)
        case "Backstage passes to a TAFKAL80ETC concert":
            return BackstagePassesController(item:item)
        case "Conjured Mana Cake":
            return ConjuredController(item:item)
        default:
            return BaseController(item:item)
        }
    }
}
