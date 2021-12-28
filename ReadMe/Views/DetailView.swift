//
//  DetailsView.swift
//  ReadMe
//
//  Created by Антон Гузенко on 28.12.2021.
//

import SwiftUI

struct DetailView: View {
    let book: Book
    
    var body: some View {
        VStack {
            Book.Image(title: book.title)
            Spacer()
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(book: .init())
    }
}
