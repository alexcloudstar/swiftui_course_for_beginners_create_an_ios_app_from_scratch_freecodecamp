//
//  TitleDetailView.swift
//  BlossomMovie
//
//  Created by Stefan Alexandru Romila on 23.01.2026.
//

import SwiftUI

struct TitleDetailView: View {
    let title: Title
    
    var body: some View {
        GeometryReader { geometry in
            ScrollView {
                LazyVStack(alignment: .leading) {
                    YoutubePlayer(videoId: "_vV4njk38KQ")
                        .aspectRatio(1.3, contentMode: .fit)
                    
                    Text((title.name ?? title.title) ?? "")
                        .bold()
                        .font(.title2)
                        .padding(5)
                    
                    Text(title.overview ?? "")
                        .padding(5)
                }
            }
        }
    }
}

#Preview {
    TitleDetailView(title: Title.previewTitles[0])
}
