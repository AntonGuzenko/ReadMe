//
//  ContentView.swift
//  ReadMe
//
//  Created by Антон Гузенко on 28.12.2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        BookRow(book: .init())
    }
}

struct BookRow: View {
    let book: Book
    
    var body: some View {
        HStack {
            Book.Image(title: book.title)
            VStack(alignment: .leading) {
                Text(book.title)
                    .font(.title2)
                Text(book.author)
                    .font(.title2)
                    .foregroundColor(.secondary)
                
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}



