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
  int studentId;
  String fullName;
  String emailAddress;
  String phoneNumber;
  String address;
  String gender;

  StudentInfo(this.studentId, this.fullName, this.emailAddress,
      this.phoneNumber, this.address, this.gender);
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
  String userName;
  String password;

  Librarian(this.librarianId, this.userName, this.password);
}

class AllBooks {
  int bookId;
  String bookName;
  String authorName;
  String publication;
  int numOfCopies;

  AllBooks(this.bookId, this.bookName, this.authorName, this.publication,
      this.numOfCopies);
}

class BookAllCopies {
  int bookCopyId;
  int bookId;
  String bookName;
  String authorName;
  int bookCopyIdCode;
  String createdOn;
  String updatedOn;

  BookAllCopies(this.bookCopyId, this.bookId, this.bookName, this.authorName,
      this.bookCopyIdCode, this.createdOn, this.updatedOn);
}

class BookIssuedByParticularStudent {
  int issueId;
  String studentName;
  String bookName;
  String bookCopyIdCode;
  String issuedOn;
  String returnDate;

  BookIssuedByParticularStudent(this.issueId, this.studentName, this.bookName,
      this.bookCopyIdCode, this.issuedOn, this.returnDate);
}
