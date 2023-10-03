//  Created by Axel Ancona Esselmann on 10/2/23.
//

import Foundation

public struct NoneOptionalChildComparator<Child, T>: SortComparator
    where T: ComparatorComparable
{
    public var order: SortOrder = .forward

    public let keyPath: KeyPath<Child, T>

    public init(order: SortOrder = .forward, keyPath: KeyPath<Child, T>) {
        self.order = order
        self.keyPath = keyPath
    }

    public func compare(_ lhs: Child, _ rhs: Child) -> ComparisonResult {
        let result: ComparisonResult = lhs[keyPath: keyPath].compare(rhs[keyPath: keyPath])
        return order == .forward ? result : result.reversed
    }
}
