package com.bookclub.bookclub.services;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bookclub.bookclub.models.Book;
import com.bookclub.bookclub.repositories.BookRepository;

@Service
public class BookService {
    
    @Autowired
    private BookRepository repository;

    public Book findById(Long id){
        Optional<Book> result = repository.findById(id);
        if(result.isPresent()){
            return result.get();
        }
        return null;
    }

    public Book create(Book book){
        return repository.save(book);
    }

    public List<Book> all(){
        return repository.findAll();
    }

    public Book update(Book book) {
        return repository.save(book);
    }

    public void delete(Long id) {
        repository.deleteById(id);
    }
}