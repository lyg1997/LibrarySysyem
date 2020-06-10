package lyg.entity;

public class LendInfo {
    private int id;
    private int book_id;
    private int reader_id;
    private String lend_date;
    private String back_date;
    private Double fine;
    private String state;
    private String bookName;

    public String getBookName() {
        return bookName;
    }

    public void setBookName(String bookName) {
        this.bookName = bookName;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getBook_id() {
        return book_id;
    }

    public void setBook_id(int book_id) {
        this.book_id = book_id;
    }

    public int getReader_id() {
        return reader_id;
    }

    public void setReader_id(int reader_id) {
        this.reader_id = reader_id;
    }

    public String getLend_date() {
        return lend_date;
    }

    public void setLend_date(String lend_date) {
        this.lend_date = lend_date;
    }

    public String getBack_date() {
        return back_date;
    }

    public void setBack_date(String back_date) {
        this.back_date = back_date;
    }

    public Double getFine() {
        return fine;
    }

    public void setFine(Double fine) {
        this.fine = fine;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }
}
