import 'package:json_annotation/json_annotation.dart';
part 'response.g.dart';

@JsonSerializable()
class BaseResponse {
  @JsonKey(name: "status")
  int? status;
  @JsonKey(name: "message")
  String? message;
}

@JsonSerializable()
class StudentCred {
  @JsonKey(name: "sid")
  int? studentId;
  @JsonKey(name: "full_name")
  String? fullName;
  @JsonKey(name: "email_address")
  String? emailAddress;
  @JsonKey(name: "password")
  String? password;

  StudentCred(this.studentId, this.fullName, this.emailAddress, this.password);

  //from json
  factory StudentCred.fromJson(Map<String, dynamic> json) =>
      _$StudentCredFromJson(json);
  //to json
  Map<String, dynamic> toJson() => _$StudentCredToJson(this);
}

@JsonSerializable()
class StudentInfo {
  @JsonKey(name: "sid")
  int? studentId;
  @JsonKey(name: "full_name")
  String? fullName;
  @JsonKey(name: "email_address")
  String? emailAddress;
  @JsonKey(name: "phone")
  String? phoneNumber;
  @JsonKey(name: "gender")
  String? gender;

  StudentInfo(this.studentId, this.fullName, this.emailAddress,
      this.phoneNumber, this.gender);

  //from json
  factory StudentInfo.fromJson(Map<String, dynamic> json) =>
      _$StudentInfoFromJson(json);
  //to json
  Map<String, dynamic> toJson() => _$StudentInfoToJson(this);
}

@JsonSerializable()
class Librarian {
  @JsonKey(name: "id")
  int? id;
  @JsonKey(name: "full_name")
  String? fullName;
  @JsonKey(name: "email_address")
  String? emailAddress;
  @JsonKey(name: "password")
  String? password;

  Librarian(this.id, this.fullName, this.emailAddress, this.password);

  //from json
  factory Librarian.fromJson(Map<String, dynamic> json) =>
      _$LibrarianFromJson(json);
  //to json
  Map<String, dynamic> toJson() => _$LibrarianToJson(this);
}

@JsonSerializable()
class BooksIssuedByStudent {
  // /http://localhost/Sumitra/lms/lms/apis/select-issues-books-by-student-name.php?sid=14
  @JsonKey(name: "issue_id")
  int? issueId;
  @JsonKey(name: "student_name")
  String? studentName;
  @JsonKey(name: "book_name")
  String? bookName;
  @JsonKey(name: "book_copy_code")
  String? bookCopyCode;
  @JsonKey(name: "issue_date")
  String? issueDate;
  @JsonKey(name: "return_date")
  String? returnDate;

  BooksIssuedByStudent(this.issueId, this.studentName, this.bookName,
      this.bookCopyCode, this.issueDate, this.returnDate);

  //from json
  factory BooksIssuedByStudent.fromJson(Map<String, dynamic> json) =>
      _$BooksIssuedByStudentFromJson(json);
  //to json
  Map<String, dynamic> toJson() => _$BooksIssuedByStudentToJson(this);

  // factory BooksIssuedByStudent.fromJson(Map<String, dynamic> json) =>
  //     _$BooksIssuedByStudentFromJson(json);
}

@JsonSerializable()
class BookAll {
  @JsonKey(name: "book_id")
  String? bookId;
  @JsonKey(name: "book_name")
  String? bookName;
  @JsonKey(name: "author")
  String? authorName;
  @JsonKey(name: "publication")
  String? publication;
  @JsonKey(name: "no_of_copies")
  String? numOfCopies;

  BookAll(this.bookId, this.bookName, this.authorName, this.publication,
      this.numOfCopies);

  //from json
  factory BookAll.fromJson(Map<String, dynamic> json) =>
      _$BookAllFromJson(json);
  //to json
  Map<String, dynamic> toJson() => _$BookAllToJson(this);
}

@JsonSerializable()
class BookAllCopies {
  @JsonKey(name: "bcid")
  int? bookCopyId;
  @JsonKey(name: "book_id")
  String? bookId;
  @JsonKey(name: "book_name")
  String? bookName;
  @JsonKey(name: "bcid_no")
  String? bookCopyIdKey;
  @JsonKey(name: "created_on")
  String? createdOn;
  @JsonKey(name: "updated_on")
  String? updatedOn;

  BookAllCopies(this.bookCopyId, this.bookId, this.bookName, this.bookCopyIdKey,
      this.createdOn, this.updatedOn);

  //from json
  factory BookAllCopies.fromJson(Map<String, dynamic> json) =>
      _$BookAllCopiesFromJson(json);
  //to json
  Map<String, dynamic> toJson() => _$BookAllCopiesToJson(this);
}
