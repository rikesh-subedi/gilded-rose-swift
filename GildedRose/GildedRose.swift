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
            let controller = ControllerFactory.getController(item: items[i])
            controller.updateQuality()
            controller.updateSellin()
            items[i] = controller.item
        }
        
        return items
    }
    
}
