//
//  Albumss.swift
//  UI-436
//
//  Created by nyannyan0328 on 2022/01/25.
//

import SwiftUI

struct Albums: Identifiable {
    var id = UUID().uuidString
    var name : String
    var author : String
    var cover : String
    
}

var albumns : [Albums] = [

Albums(name: "A", author: "B", cover: "p1"),
Albums(name: "C", author: "D", cover: "p2"),
Albums(name: "E", author: "F", cover: "p3"),
Albums(name: "G", author: "H", cover: "p4"),
Albums(name: "D", author: "F", cover: "p5"),
Albums(name: "G", author: "Q", cover: "p6"),
Albums(name: "V", author: "A", cover: "p7"),
Albums(name: "C", author: "B", cover: "p8"),
Albums(name: "X", author: "G", cover: "p9"),
Albums(name: "S", author: "J", cover: "p10"),
Albums(name: "Q", author: "T", cover: "p11"),
Albums(name: "L", author: "R", cover: "p12"),
Albums(name: "O", author: "W", cover: "p13"),





]
