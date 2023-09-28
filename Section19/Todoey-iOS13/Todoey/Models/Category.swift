//
//  Category.swift
//  Todoey
//
//  Created by James Bang on 2023-09-25.
//  Copyright © 2023 App Brewery. All rights reserved.
//

import Foundation
import RealmSwift

class Category: Object {
    @objc dynamic var name: String = ""
    let items = List<Item>()
}
