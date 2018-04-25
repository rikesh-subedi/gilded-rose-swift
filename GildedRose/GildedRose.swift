//
//  GildedRose.swift
//  GildedRose
//
//  Created by Tom Heinan on 8/31/15.
//  Copyright © 2015 Tom Heinan. All rights reserved.
//

public class GildedRose {
    
    
    public static func updateQuality(items: Array<Item>) -> [Item] {
        var items = items
        for i in 0 ..< items.count {
            switch items[i].name {
            case "Sulfuras, Hand of Ragnaros" :
                continue
            case "Aged Brie":
                items[i] = Item.increaseQuality(item: items[i])
                break
            case "Backstage passes to a TAFKAL80ETC concert":
                items[i] = Item.specialIncrease(item: items[i])
            case "Conjured Mana Cake":
                items[i] = Item.decreaseQuality(item: items[i], by: 2)
            default:
                items[i] = Item.decreaseQuality(item: items[i], by: 1)
            }
            items[i].sellIn = items[i].sellIn - 1
        }
        
        return items
    }
    
}
