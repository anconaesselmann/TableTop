//  Created by Axel Ancona Esselmann on 10/2/23.
//

import Foundation

extension String: RowStringConvertable {
    public var rowStringValue: String {
        self
    }
}

extension Int: RowStringConvertable {
    public var rowStringValue: String {
        String(self)
    }
}

extension Bool: RowStringConvertable {
    public var rowStringValue: String {
        String(self ? "true" : "false")
    }
}
