//  Created by Axel Ancona Esselmann on 10/3/23.
//

import Foundation

public extension KeyPathComparator {
    init(
        value keyPath: KeyPath<Compared, String?>,
        order: SortOrder
    ) {
        self.init(keyPath, comparator: OptionalComparator<String>(), order: order)
    }
}

public extension KeyPathComparator {
    init(
        value keyPath: KeyPath<Compared, String>,
        order: SortOrder
    ) {
        self.init(keyPath, comparator: NoneOptionalComparator<String>(), order: order)
    }
}

public extension KeyPathComparator {
    init<ChildValue>(
        child childKeyPath: KeyPath<Compared, ChildValue?>,
        value keyPath: KeyPath<ChildValue, String>,
        order: SortOrder
    ) {
        self.init(childKeyPath, comparator: OptionalChildComparator(keyPath: keyPath), order: order)
    }
}

public extension KeyPathComparator {
    init<ChildValue>(
        child childKeyPath: KeyPath<Compared, ChildValue?>,
        value keyPath: KeyPath<ChildValue, String?>,
        order: SortOrder
    ) {
        self.init(childKeyPath, comparator: OptionalChildComparatorWithOptionalProperty(keyPath: keyPath), order: order)
    }
}

public extension KeyPathComparator {
    init<ChildValue>(
        child childKeyPath: KeyPath<Compared, ChildValue>,
        value keyPath: KeyPath<ChildValue, String>,
        order: SortOrder
    ) {
        self.init(childKeyPath, comparator: NoneOptionalChildComparator(keyPath: keyPath), order: order)
    }
}
