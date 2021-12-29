//
//  ContentView.swift
//  ReadMe
//
//  Created by Антон Гузенко on 28.12.2021.
//

import SwiftUI

struct ContentView: View {
    @State var library = Library()
    
    var body: some View {
        NavigationView {
            List(library.sortedBooks) { book in
                BookRow(
                    book: book,
                    image: $library.uiImages[book]
                )
            }
            .navigationBarTitle("My Library")
        }
    }
}

struct BookRow: View {
    let book: Book
    @Binding var image : UIImage?
    
    var body: some View {
    NavigationLink(
        destination: DetailView(book: book, image: $image)
    ) {
        HStack {
            Book.Image(
                uiImage: image,
                title: book.title,
                size: 80,
                cornerRadius: 12
            )
            
            TitleAndAuthorStack(
                book: book,
                titleFont: .title2,
                authorFont: .title3
                )
                .lineLimit(1)
            Spacer()
            
            BookmarkButton(book: book)
                .buttonStyle(BorderedButtonStyle())
        }
        .padding(.vertical, 8)
    }
}
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewedInAllColorScemes
    }
}





