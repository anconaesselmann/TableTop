//  Created by Axel Ancona Esselmann on 10/2/23.
//

import Foundation

extension Int: ComparatorComparable {
    public func compare(_ value: Self) -> ComparisonResult {
        if self == value {
            return .orderedSame
        } else if self < value {
            return .orderedAscending
        } else {
            return .orderedDescending
        }
    }
}

extension String: ComparatorComparable {
    public func compare(_ value: Self) -> ComparisonResult {
        localizedCompare(value)
    }
}

extension Bool: ComparatorComparable {
    public func compare(_ value: Self) -> ComparisonResult {
        if self == value {
            return .orderedSame
        } else if self == true {
            return .orderedAscending
        } else {
            return .orderedDescending
        }
    }
}

extension Date: ComparatorComparable {
    public func compare(_ value: Self) -> ComparisonResult {
        if self == value {
            return .orderedSame
        } else if self < value {
            return .orderedAscending
        } else {
            return .orderedDescending
        }
    }
}

extension Double: ComparatorComparable {
    public func compare(_ value: Self) -> ComparisonResult {
        if self == value {
            return .orderedSame
        } else if self < value {
            return .orderedAscending
        } else {
            return .orderedDescending
        }
    }
}
