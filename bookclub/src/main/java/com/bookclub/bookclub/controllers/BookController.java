package com.bookclub.bookclub.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bookclub.bookclub.models.Book;
import com.bookclub.bookclub.models.LoginUser;
import com.bookclub.bookclub.models.User;
import com.bookclub.bookclub.services.BookService;
import com.bookclub.bookclub.services.UserService;

import jakarta.servlet.http.HttpSession;
import jakarta.validation.Valid;

@Controller
public class BookController {

    @Autowired
    private UserService users;

    @Autowired
    private BookService books;

    @GetMapping("/")
    public String index(Model model) {
        model.addAttribute("newUser", new User());
        model.addAttribute("newLogin", new LoginUser());
        return "index.jsp";
    }

    @PostMapping("/register")
    public String register(@Valid @ModelAttribute("newUser") User newUser,
            BindingResult result, Model model, HttpSession session) {
        User user = users.register(newUser, result);

        if (result.hasErrors()) {
            model.addAttribute("newLogin", new LoginUser());
            return "index.jsp";
        }
        session.setAttribute("userId", user.getId());
        return "redirect:/home";
    }

    @PostMapping("/login")
    public String login(@Valid @ModelAttribute("newLogin") LoginUser newLogin,
            BindingResult result, Model model, HttpSession session) {
        User user = users.login(newLogin, result);

        if (result.hasErrors()) {
            model.addAttribute("newUser", new User());
            return "index.jsp";
        }
        session.setAttribute("userId", user.getId());
        return "redirect:/home";
    }

    @GetMapping("/home")
    public String home(Model model, HttpSession session) {

        if (session.getAttribute("userId") == null) {
            return "redirect:/";
        }

        model.addAttribute("books", books.all());
        model.addAttribute("user", users.findById((Long) session.getAttribute("userId")));
        return "home.jsp";
    }

    @GetMapping("/addPage")
    public String addPage(@ModelAttribute("book") Book book, Model model, HttpSession session) {

        User user = users.findById((Long) session.getAttribute("userId"));
        model.addAttribute("user", user);

        return "addPage.jsp";
    }

    @PostMapping("/books")
    public String createBook(@Valid @ModelAttribute("book") Book book, BindingResult result) {

        if (result.hasErrors()) {
            return "addPage.jsp";
        }

        books.create(book);

        return "redirect:/home";
    }

    @GetMapping("/books/{id}")
    public String showPage(Model model, @PathVariable("id") Long id, HttpSession session) {
        if (session.getAttribute("userId") == null) {
            return "redirect:/";
        }
        Book book = books.findById(id);
        model.addAttribute("book", book);
        model.addAttribute("user", users.findById((Long) session.getAttribute("userId")));

        return "book.jsp";
    }

    @GetMapping("/logout")
    public String logout(HttpSession session) {
        session.invalidate();
        return "redirect:/";
    }

    @GetMapping("/books/edit/{id}")
    public String editBook(@PathVariable Long id, Model model, HttpSession session) {
        if (session.getAttribute("userId") == null) {
            return "redirect:/";
        }
        User user = users.findById((Long) session.getAttribute("userId"));
        model.addAttribute("user", user);

        Book book = books.findById(id);
        model.addAttribute("book", book);
        return "editBook.jsp";
    }

@PostMapping("/books/update/{id}")
public String updateBook(@Valid @ModelAttribute("book") Book book, BindingResult result, 
                        Model model, HttpSession session, @PathVariable("id") Long id) {
    
    if (session.getAttribute("userId") == null) {
        return "redirect:/";
    }
    
    Book existingBook = books.findById(id);
    if (existingBook == null) {
        return "redirect:/home";
    }
    
    Long userId = (Long) session.getAttribute("userId");
    if (!existingBook.getUser().getId().equals(userId)) {
        return "redirect:/home";
    }
    
    if (result.hasErrors()) {
        model.addAttribute("book", book);
        return "editBook.jsp";
    } else {
        book.setId(id);
        book.setUser(users.findById(userId));
        books.update(book);
        return "redirect:/books/{id}";
    }
}

@RequestMapping(value="/books/delete/{id}")
public String destroy(@PathVariable("id") Long id, HttpSession session) {
    if (session.getAttribute("userId") == null) {
        return "redirect:/";
    }
    
    Book book = books.findById(id);
    if (book == null) {
        return "redirect:/home";
    }
    
    Long userId = (Long) session.getAttribute("userId");
    if (!book.getUser().getId().equals(userId)) {
        return "redirect:/home";
    }
    
    books.delete(id);
    return "redirect:/home";
}
}