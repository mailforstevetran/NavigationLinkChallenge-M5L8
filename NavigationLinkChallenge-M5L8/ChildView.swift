//
//  ChildView.swift
//  NavigationLinkChallenge-M5L8
//
//  Created by Steve Tran on 23/06/2021.
//

import SwiftUI

struct ChildView: View {
    

    @Binding var childViewSelected: Int?
    
    var body: some View {
        if childViewSelected != nil {
        Text("I am view \(childViewSelected!)")
        }
        Button(action: {
            childViewSelected = nil
        }, label: {
            Text("Go Back")
        })
    }
}


