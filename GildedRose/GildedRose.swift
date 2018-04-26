//
//  GildedRose.swift
//  GildedRose
//
//  Created by Tom Heinan on 8/31/15.
//  Copyright © 2015 Tom Heinan. All rights reserved.
//

protocol ItemController {
    var item: Item {get set}
    func updateQuality()
    func updateSellin()
    init(item: Item)
}

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

class AgedBrieController : BaseController {
    override func updateQuality() {
        if item.sellIn < 1 {
            item.quality = item.quality + 1
        }
        item.quality = item.quality + 1
        item.quality = item.quality > 50 ? 50 : item.quality
    }
}

class SulfurasController: BaseController {
    override func updateQuality() {
        item.quality = item.quality + 0
    }
    override func updateSellin() {
        item.sellIn = item.sellIn + 0
    }
}

class ConjuredController: BaseController {
    
    override func updateQuality() {
        if(item.sellIn < 1){
            item.quality = item.quality - 2
        }
        item.quality = item.quality - 2
        item.quality = item.quality < 0 ? 0 : item.quality
    }
}

class BackstagePassesController: BaseController {
    override func updateQuality() {
        if(item.sellIn < 1){
            item.quality = 0
        }
        else if item.sellIn < 6 {
            item.quality = item.quality + 3
        }
        else if item.sellIn < 11  {
            item.quality  = item.quality + 2
        } else {
            item.quality = item.quality + 1
        }
        item.quality = item.quality > 50 ? 50 : item.quality
    }
}

class ControllerFactory {
    public static func getController(item: Item) -> ItemController {
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




public class GildedRose {
    public static func updateQuality(items: Array<Item>) -> [Item] {
        var items = items
        for i in 0 ..< items.count {
            let controller = ControllerFactory.getController(item: items[i])
            controller.updateQuality()
            controller.updateSellin()
            items[i] = controller.item
        }
        
        return items
    }
    
}
