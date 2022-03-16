import UIKit

/// Represents an activity for presenting an ActivityView (Share sheet) via the `activitySheet` modifier
public struct ActivityItem {

    internal var items: [Any]
    internal var activities: [UIActivity]
    internal var excludedTypes: [UIActivity.ActivityType]

    /// Creates an instance of an `ActivityItem`.
    /// - Parameters:
    ///   - items: The items to share via a `UIActivityViewController`
    ///   - activities: Custom activities you want to include in the sheet
    ///   - excludedTypes: The list of services that should not be displayed.
    public init(items: Any..., activities: [UIActivity] = [], excludedTypes: [UIActivity.ActivityType] = []) {
        self.init(itemList: items, activities: activities, excludedTypes: excludedTypes)
    }

    /// Creates an instance of an `ActivityItem`.
    /// - Parameters:
    ///   - itemList: The items to share via a `UIActivityViewController`
    ///   - activities: Custom activities you want to include in the sheet
    ///   - excludedTypes: The list of services that should not be displayed.
    public init(itemList: [Any], activities: [UIActivity] = [], excludedTypes: [UIActivity.ActivityType] = []) {
        // Note: The signature of this initializer has to be different from the one above because [Any] will be coerced to Any
        // and the init above will always be called.
        self.items = itemList
        self.activities = activities
        self.excludedTypes = excludedTypes
    }
    
}
