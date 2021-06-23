//
//  ChildView.swift
//  NavigationLinkChallenge-M5L8
//
//  Created by Steve Tran on 23/06/2021.
//

import SwiftUI

struct ChildView: View {
    
    @EnvironmentObject var model: LinkModel
    
    var body: some View {
        if model.childViewSelected != nil {
        Text("I am view \(model.childViewSelected!)")
        }   
        Button(action: {
            model.childViewSelected = nil
        }, label: {
            Text("Go Back")
        })
    }
}

struct ChildView_Previews: PreviewProvider {
    static var previews: some View {
        ChildView()
    }
}
