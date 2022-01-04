//
//  Library.swift
//  ReadMe
//
//  Created by Антон Гузенко on 28.12.2021.
//
import Combine
import class UIKit.UIImage

class Library: ObservableObject {
  var sortedBooks: [Book] { booksCache }
    
    /// Add a new book at the start of the library's manualy-sorted books

     func addNewBook(_ book: Book, image: UIImage?){
        booksCache.insert(book, at: 0)
        uiImages[book] = image
        
    }

  /// An in-memory cache of the manually-sorted books.
  @Published private var booksCache: [Book] = [
    .init(title: "Ein Neues Land", author: "Shaun Tan"),
    .init(
        title: "Bosch",
        author: "Laurinda Dixon",
        microReview: "Earthily Delightful"
    ),
    .init(title: "Dare to Lead", author: "Brené Brown"),
    .init(
        title: "Blasting for Optimum Health Recipe Book",
        author: "NutriBullet",
        microReview: "Blastastic!!!"
    ),
    .init(title: "Drinking with the Saints", author: "Michael P. Foley"),
    .init(title: "A Guide to Tea", author: "Adagio Teas"),
    .init(title: "The Life and Complete Work of Francisco Goya", author: "P. Gassier & J Wilson"),
    .init(title: "Lady Cottington's Pressed Fairy Book", author: "Lady Cottington"),
    .init(title: "How to Draw Cats", author: "Janet Rancan"),
    .init(title: "Drawing People", author: "Barbara Bradley"),
    .init(title: "What to Say When You Talk to Yourself", author: "Shad Helmstetter")
  ]
    
  @Published var uiImages: [Book: UIImage] = [:]
}
