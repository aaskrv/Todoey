//
//  Item.swift
//  Todoey-iOS13
//
//  Created by Adilet on 5/19/20.
//  Copyright © 2020 Adilet. All rights reserved.
//

import Foundation
import RealmSwift

class Item: Object {
    @objc dynamic var title: String = ""
    @objc dynamic var done: Bool = false
    @objc dynamic var dateCreated : Date?
    var parentCategory = LinkingObjects(fromType: Category.self, property: "items")
}
