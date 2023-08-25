//
//  TextBootcamp.swift
//  DiscoveringSwiftUI
//
//  Created by Nikos Aggelidis on 26/6/23.
//

import SwiftUI

struct TextBootcamp: View {
    var body: some View {
        Text("Hello world! This is another SwiftUI tutorial, I find it really exciting! Hope to be continued like this...".lowercased())
//            .font(.body)
//            .fontWeight(.semibold)
//            .bold()
//            .underline()
//            .underline(true, color: .yellow)
//            .italic()
//            .strikethrough()
//            .strikethrough(true, color: .blue)
//            .font(
//                .system(
//                    size: 22,
//                    weight: .semibold,
//                    design: .rounded
//                )
//            )
            .baselineOffset(8.0)
            .kerning(13)
            .multilineTextAlignment(.center)
            .foregroundColor(.red)
            .frame(
                width: 200,
                height: 130,
                alignment: .leading
            )
            .minimumScaleFactor(0.2)
    }
}

struct TextBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TextBootcamp()
    }
}
