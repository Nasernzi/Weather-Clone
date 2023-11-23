//
//  changethetoolbarcolor.swift
//  cloneweather
//
//  Created by SEYED NASER NAZARIMEHRABANI on 22/11/23.
//


import SwiftUI

struct NavigationBarModifier: ViewModifier {
    var backgroundColor: UIColor
    var titleColor: UIColor

    init(backgroundColor: UIColor, titleColor: UIColor) {
        self.backgroundColor = backgroundColor
        self.titleColor = titleColor

        let coloredAppearance = UINavigationBarAppearance()
        coloredAppearance.configureWithOpaqueBackground()
        coloredAppearance.backgroundColor = backgroundColor
        coloredAppearance.titleTextAttributes = [.foregroundColor: titleColor]
        coloredAppearance.largeTitleTextAttributes = [.foregroundColor: titleColor]

        UINavigationBar.appearance().standardAppearance = coloredAppearance
        UINavigationBar.appearance().scrollEdgeAppearance = coloredAppearance
        UINavigationBar.appearance().compactAppearance = coloredAppearance
    }

    func body(content: Content) -> some View {
        content
    }
}
