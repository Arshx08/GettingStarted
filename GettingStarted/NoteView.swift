//
//  NoteView.swift
//  GettingStarted
//
//  Created by Arshdeep Singh on 2024-03-20.
//

import SwiftUI

struct NoteView: View {
    @State var note: Note

    var body: some View {
        HStack(alignment: .center, spacing: 5.0) {
            VStack(alignment: .leading, spacing: 5.0) {
                Text(note.name)
                    .bold()
                if let description = note.description {
                    Text(description)
                }
            }

            if let image = note.image {
                    Spacer()
                    RemoteImage(name: image)
                        .frame(width: 30, height: 30)
                }
        }
    }
}
