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
            //let item = items[i]
            switch items[i].name {
            case "Sulfuras, Hand of Ragnaros" :
                continue
            case "Aged Brie":
                if(items[i].sellIn < 1){
                    items[i] = Item.increaseQuality(item: items[i])
                }
                items[i] = Item.increaseQuality(item: items[i])
                items[i].sellIn = items[i].sellIn - 1
                break
            case "Backstage passes to a TAFKAL80ETC concert":
                if(items[i].sellIn < 1){
                    items[i].quality = 0
                }
                else if items[i].sellIn < 6 {
                    items[i] = Item.increaseQuality(item: items[i], by: 3)
                }
                else if items[i].sellIn < 11  {
                    items[i] = Item.increaseQuality(item: items[i], by: 2)
                } else {
                    items[i] = Item.increaseQuality(item: items[i])
                }
                
                items[i].sellIn = items[i].sellIn - 1
                break
            case "Conjured Mana Cake":
                if(items[i].sellIn < 1){
                    items[i] = Item.decreaseQuality(item: items[i], by: 2)
                }
                items[i] = Item.decreaseQuality(item: items[i], by: 2)
                items[i].sellIn = items[i].sellIn - 1
                break
            default:
                if(items[i].sellIn < 1){
                    items[i] = Item.decreaseQuality(item: items[i])
                }
                items[i] = Item.decreaseQuality(item: items[i])
                items[i].sellIn = items[i].sellIn - 1
                break
            }
        }
        
        return items
    }
    
}
