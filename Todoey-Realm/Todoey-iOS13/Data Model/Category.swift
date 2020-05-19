//
//  Category.swift
//  Todoey-iOS13
//
//  Created by Adilet on 5/19/20.
//  Copyright © 2020 Adilet. All rights reserved.
//

import Foundation
import RealmSwift

class Category: Object {
    @objc dynamic var name: String = ""
    @objc dynamic var color: String = ""
    let items = List<Item>()
}
