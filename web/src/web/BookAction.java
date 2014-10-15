package web;

import java.util.List;

import model.Book;
import service.BookService;

import com.opensymphony.xwork2.ActionSupport;

public class BookAction extends ActionSupport {
	private List<Book> books;
	private List<Book> aus;
	private BookService BookService = new BookService(); 
	private Book Book;
	private String isbn;
	private String au;//ËÑË÷´«Öµ
	public String list() throws Exception {
		books = BookService.list("");
		return SUCCESS;
	}
	public String slist() throws Exception {
		books = BookService.list(au);
		return SUCCESS;
	}
	public String getAu() {
		return au;
	}
	public void setAuthor(String au) {
		this.au = au;
	}
	
	
	public String delete() {
		BookService.deleteById(isbn);
		return SUCCESS;
	}
	public String addInput() {
		
		return INPUT;
	}

	public List<Book> getbooks() {
		return books;
	}
	public void setbooks(List<Book> books) {
		this.books = books;
	}
	public List<Book> getaus() {
		return aus;
	}
	public void setaus(List<Book> aus) {
		this.aus = aus;
	}
	public BookService getBookService() {
		return BookService;
	}
	public void setBookService(BookService BookService) {
		this.BookService = BookService;
	}
	public Book getBook() {
		return Book;
	}
	public void setBook(Book Book) {
		this.Book = Book;
	}
	public String getId() {
		return isbn;
	}
	public void setId(String isbn) {
		this.isbn = isbn;
	}
}
