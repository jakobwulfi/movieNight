//
//  Row.swift
//  movieNight
//
//  Created by ksd on 23/08/2024.
//

import SwiftUI

struct Row: View {
    let movie: Movie
    
    var body: some View {
        HStack(spacing: 24.0) {
            Image(movie.poster)
                .resizable()
                .frame(width: 70.0, height: 110.0)
                .shadow(color: .gray, radius: 10.0, x: 4.0, y: 4.0)
            VStack(alignment: .leading, spacing: 4.0) {
                HStack{
                    Text(movie.title)
                        .font(.headline)
                    Spacer()
                }
                Text(movie.director)
                    .font(.subheadline)
                Group{
                    Text(movie.genre)
                    Text(movie.runtime)
                }
                    .font(.caption)
                    .foregroundColor(.secondary)
            }
        }
        
    }
}


#Preview {
    Row(movie: TestData.movies[2])
        .padding()
}
