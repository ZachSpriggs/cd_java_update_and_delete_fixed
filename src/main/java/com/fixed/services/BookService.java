package com.fixed.services;

import java.util.*;
import org.springframework.stereotype.Service;
import com.fixed.models.Book;
import com.fixed.repositories.BookRepository;

@Service
public class BookService {
	
	 // adding the book repository as a dependency
	 private final BookRepository bookRepository;
	 
	 public BookService(BookRepository bookRepository) {
	     this.bookRepository = bookRepository;
	 }
	 // returns all the books
	 public List<Book> allBooks() {
	     return bookRepository.findAll();
	 }
	 // creates a book
	 public Book createBook(Book b) {
	     return bookRepository.save(b);
	 }
	 
	 // update a book 
	 public Book updateBook(Long id, String title, String desc, String lang, int pages) {
		Book b = findBook(id);
		b.setId(id);
		b.setTitle(title);
		b.setDescription(desc);
		b.setLanguage(lang);
		b.setNumberOfPages(pages);
		return bookRepository.save(b);
	 }
	 
	 
	 // deletes a book using the CRUD command deleteById
	 public void deleteBook(Long id) {
		bookRepository.deleteById(id);
	 }
	 
	 // retrieves a book
	 public Book findBook(Long id) {
	     Optional<Book> optionalBook = bookRepository.findById(id);
	     if(optionalBook.isPresent()) {
	         return optionalBook.get();
	     } else {
	         return null;
	     }
	 }
}