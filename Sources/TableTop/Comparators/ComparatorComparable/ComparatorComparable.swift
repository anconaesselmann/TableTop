//  Created by Axel Ancona Esselmann on 10/2/23.
//

import Foundation

public protocol ComparatorComparable {
    func compare(_ value: Self) -> ComparisonResult
}
