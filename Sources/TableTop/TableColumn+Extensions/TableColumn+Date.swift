//  Created by Axel Ancona Esselmann on 10/3/23.
//

import SwiftUI

public extension TableColumn where Sort == KeyPathComparator<RowValue>, Label == Text {
    init(
        _ titleKey: LocalizedStringKey,
        value: KeyPath<RowValue, Date>,
        formatter: DateFormatter = DefaultFormatters.date
    )
    where
        Content == Text
    {
        self.init(titleKey, value: value, comparator: NoneOptionalComparator<Date>()) { rowValue in
            Text(formatter.string(from: rowValue[keyPath: value].rowDateValue))
        }
    }
}

public extension TableColumn where Sort == KeyPathComparator<RowValue>, Label == Text {
    init(
        _ titleKey: LocalizedStringKey,
        value: KeyPath<RowValue, Date?>,
        formatter: DateFormatter = DefaultFormatters.date
    )
    where
        Content == Text
    {
        self.init(titleKey, value: value, comparator: OptionalComparator<Date>()) { rowValue in
            Text({
                if let value = rowValue[keyPath: value]?.rowDateValue {
                    return formatter.string(from: value)
                } else {
                    return ""
                }
            }())
        }
    }
}
