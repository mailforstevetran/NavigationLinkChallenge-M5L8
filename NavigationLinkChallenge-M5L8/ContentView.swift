//
//  ContentView.swift
//  NavigationLinkChallenge-M5L8
//
//  Created by Steve Tran on 23/06/2021.
//

import SwiftUI

struct ContentView: View {
    
    // @EnvironmentObject var model: LinkModel
    @State var selectedChild = 5
    
    // Steve new code
    @State var childViewSelected: Int?
    var body: some View {
        
        NavigationView {
            VStack {
                Picker("Child View", selection: $selectedChild) {
                    ForEach(0..<10) { index in
                        Text(String(index)).tag(index)
                    }
                    
                }
                NavigationLink(destination: ChildView(childViewSelected: $childViewSelected),
                               tag: selectedChild,
                               selection: $childViewSelected) {
                                    Text("Go to view \(selectedChild)")
                                }
          
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
