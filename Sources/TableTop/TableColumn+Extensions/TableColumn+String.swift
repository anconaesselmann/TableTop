//  Created by Axel Ancona Esselmann on 10/2/23.
//

import SwiftUI

public extension TableColumn where Sort == KeyPathComparator<RowValue>, Label == Text {
    init(
        _ titleKey: LocalizedStringKey,
        value: KeyPath<RowValue, String?>
    )
    where
        Content == Text
    {
        self.init(titleKey, value: value, comparator: OptionalComparator<String>()) { rowValue in
            Text(rowValue[keyPath: value] ?? "")
        }
    }
}

public extension TableColumn where Sort == KeyPathComparator<RowValue>, Label == Text {
    init(
        _ titleKey: LocalizedStringKey,
        value: KeyPath<RowValue, String>
    )
    where
        Content == Text
    {
        self.init(titleKey, value: value, comparator: NoneOptionalComparator<String>()) { rowValue in
            Text(rowValue[keyPath: value])
        }
    }
}
