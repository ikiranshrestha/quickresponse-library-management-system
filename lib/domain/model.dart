class SliderObject {
  String title;
  String subTitle;
  String image;

  SliderObject(this.title, this.subTitle, this.image);
}

// class StudetntInfo {
//   late int sid;
//   late String fullName;
//   late String emailAddress;
//   late String phone;
//   late String address;
//   late String gender;

//   StudentInfo(this.sid, this.fullName, this.emailAddress, this.phone, this.address, this.gender);
// }

class StudentInfo {
  int sid;
  String fullName;
  String emailAddress;
  String phone;
  String address;
  String gender;

  StudentInfo(this.sid, this.fullName, this.emailAddress, this.phone,
      this.address, this.gender);
}

class StudentCreds {
  int studentId;
  String fullName;
  String emailAddress;
  String password;

  StudentCreds(this.studentId, this.fullName, this.emailAddress, this.password);
}

class Librarian {
  int librarianId;
  int userName;
  int password;

  Librarian(this.librarianId, this.userName, this.password);
}

class AllBooks {
  int bookId;
  String bookName;
  String author;
  String publication;
  String numOfBooksInLibrary;

  AllBooks(this.bookId, this.bookName, this.author, this.publication,
      this.numOfBooksInLibrary);
}

class AllBookCopies {
  int bookCopyId;
  int bookId;
  String bookName;
  String author;
  int bookCopyIdCode;
  String createdOn;
  String updatedOn;

  AllBookCopies(this.bookCopyId, this.bookId, this.bookName, this.author,
      this.bookCopyIdCode, this.createdOn, this.updatedOn);
}

class BookIssuedByParticularStudent {
  int issueId;
  int studentName;
  int bookName;
  int bookCopyIdCode;
  String issuedOn;
  String returnDate;

  BookIssuedByParticularStudent(this.issueId, this.studentName, this.bookName,
      this.bookCopyIdCode, this.issuedOn, this.returnDate);
}
