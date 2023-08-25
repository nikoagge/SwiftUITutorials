//
//  GridBootcamp.swift
//  DiscoveringSwiftUI
//
//  Created by Nikos Aggelidis on 6/7/23.
//

import SwiftUI

struct GridBootcamp: View {
    let columns = [
        GridItem(.flexible(), spacing: 6),
        GridItem(.flexible(), spacing: 6),
        GridItem(.flexible(), spacing: 6)
    ]
    var body: some View {
        ScrollView {
            Rectangle()
                .fill(.pink)
                .frame(height: 400)
            
            LazyVGrid(
                columns: columns,
                alignment: .center,
                spacing: 6,
                pinnedViews: [.sectionHeaders]
            ) {
                    Section(
                        header: Text("Section 1")
                            .foregroundColor(.white)
                            .font(.title)
                            .frame(
                                maxWidth: .infinity,
                                alignment: .leading
                            )
                            .background(.blue)
                            .padding()
                    ) {
                        ForEach(0..<20) { index in
                            Rectangle()
                                .frame(height: 130)
                        }
                    }
                    
                    Section(
                        header: Text("Section 2")
                            .foregroundColor(.white)
                            .font(.title)
                            .frame(
                                maxWidth: .infinity,
                                alignment: .leading
                            )
                            .background(.red)
                            .padding()
                    ) {
                        ForEach(0..<20) { index in
                            Rectangle()
                                .fill(.yellow)
                                .frame(height: 130)
                        }
                    }
                }
        }
    }
}

struct GridBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        GridBootcamp()
    }
}
