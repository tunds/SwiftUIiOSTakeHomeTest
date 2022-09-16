//
//  SettingsView.swift
//  iOSTakeHomeProject
//
//  Created by Tunde Adegoroye on 06/08/2022.
//

import SwiftUI

struct SettingsView: View {
    
    @AppStorage(UserDefaultKeys.hapticsEnabled) private var isHapticsEnabled: Bool = true
    
    var body: some View {
            Form {
                haptics
            }
            .navigationTitle("Settings")
            .embedInNavigation()
        
    }
}

private extension SettingsView {
    var haptics: some View {
        Toggle("Enable Haptics", isOn: $isHapticsEnabled)
            .accessibilityIdentifier("hapticsToggle")
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
