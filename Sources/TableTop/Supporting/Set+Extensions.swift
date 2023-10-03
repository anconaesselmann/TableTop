//  Created by Axel Ancona Esselmann on 10/2/23.
//

import Foundation

public extension Set where Element == UUID {
    mutating func toggle(_ element: Element) {
        if contains(element) {
            remove(element)
        } else {
            insert(element)
        }
    }
}
