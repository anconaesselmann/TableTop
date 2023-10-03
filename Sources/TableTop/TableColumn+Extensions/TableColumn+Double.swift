//  Created by Axel Ancona Esselmann on 10/3/23.
//

import SwiftUI

public extension TableColumn where Sort == KeyPathComparator<RowValue>, Label == Text {
    init(
        _ titleKey: LocalizedStringKey,
        value: KeyPath<RowValue, Double>,
        formatter: NumberFormatter = DefaultFormatters.decimal
    )
    where
        Content == Text
    {
        self.init(titleKey, value: value, comparator: NoneOptionalComparator<Double>()) { rowValue in
            Text(formatter.string(from: rowValue[keyPath: value].rowDoubleValue as NSNumber) ?? "")
        }
    }
}

public extension TableColumn where Sort == KeyPathComparator<RowValue>, Label == Text {
    init(
        _ titleKey: LocalizedStringKey,
        value: KeyPath<RowValue, Double?>,
        formatter: NumberFormatter = DefaultFormatters.decimal
    )
    where
        Content == Text
    {
        self.init(titleKey, value: value, comparator: OptionalComparator<Double>()) { rowValue in
            Text({
                if let value = rowValue[keyPath: value]?.rowDoubleValue {
                    return formatter.string(from: value as NSNumber) ?? ""
                } else {
                    return ""
                }
            }())
        }
    }
}
