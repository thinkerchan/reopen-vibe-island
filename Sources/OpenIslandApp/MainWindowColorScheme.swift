import SwiftUI

/// User-selectable color scheme override for the App's main window
/// (Settings / About). Persisted via `UserDefaults` keyed by
/// `appearance.mainWindow.colorScheme` and read back into
/// `AppModel.mainWindowColorScheme` on launch.
///
/// The notch / top-bar overlay is intentionally NOT subject to this
/// preference: it has its own notch-aware visual treatment that should
/// stay uniform regardless of system or user-chosen appearance.
enum MainWindowColorScheme: String, CaseIterable, Identifiable, Sendable {
    case system
    case light
    case dark

    var id: String { rawValue }

    /// Maps to SwiftUI's `preferredColorScheme(_:)` argument. `.system`
    /// returns nil so the macOS appearance setting takes effect.
    var swiftUIScheme: ColorScheme? {
        switch self {
        case .system: nil
        case .light:  .light
        case .dark:   .dark
        }
    }
}
