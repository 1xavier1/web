package service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import util.DB;

import model.Book;

public class BookService {
	public void add(Book c) {
		Connection conn = DB.createConn();
		String sql = "insert into book values (null, ?, ?, ?, ?, ?, ?)";
		PreparedStatement ps = DB.prepare(conn, sql);
		try {
			ps.setString(1, c.getisbn());
			ps.setString(2, c.gettitle());
			ps.setString(3, c.getpublishdata());
			ps.setString(4, c.getpublisher());
			ps.setString(5, c.getprice());
			ps.setString(6, c.getautherid());
			ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		DB.close(ps);
		DB.close(conn);
	}
		public List<Book> list(String name) throws SQLException {
		String sql;
		Connection conn = DB.createConn();
		if( name !="")
		sql = "SELECT book.isbn AS isbn,book.title AS title,author.name AS name FROM book JOIN author  ON author.author=book.autherid where name LIKE '%"+name+"%'";
		else
		sql = "	SELECT book.isbn AS isbn,book.title AS title,author.name AS name FROM book JOIN author  ON author.author=book.autherid ";	
		PreparedStatement ps = DB.prepare(conn, sql);
		List<Book> books = new ArrayList<Book>();
		try {
			ResultSet rs = ps.executeQuery();
			Book c = null;
			while(rs.next()) {
				c = new Book();
				c.setisbn(rs.getString("isbn"));
				c.setname(rs.getString("name"));
				c.settitle(rs.getString("title"));
				books.add(c);
			}
		} catch (SQLException e) {
			e.printStackTrace();
			throw(e);
		}
		DB.close(ps);
		DB.close(conn);
		return books;
	}
	
	public void delete(Book c) {
		deleteById(c.getisbn());
	}
	
	public void deleteById(String isbn) {
		Connection conn = DB.createConn();
		String sql = "delete from _book where isbn = ?";
		PreparedStatement ps = DB.prepare(conn, sql);
		try {
			ps.setString(1, isbn);
			ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		DB.close(ps);
		DB.close(conn);
	}
}
