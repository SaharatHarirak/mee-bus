//
//  Localizable.swift
//  MeeBus
//
//  Created by CherChamp on 22/2/2563 BE.
//  Copyright © 2563 MeeBus. All rights reserved.
//

import Foundation
class Localizable {
    
    static func localizer(word: String, loc: String) -> String {
        let paths = Bundle.main.path(forResource: loc, ofType: "lproj")
        guard let path = paths else { return "" }
        let bundle = Bundle(path: path)
        let result = NSLocalizedString(word, tableName: nil, bundle: bundle!, value: "", comment: "")
        return result
    }
}
