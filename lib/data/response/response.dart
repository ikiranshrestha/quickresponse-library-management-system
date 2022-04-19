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
class StudentCredResponse {
  @JsonKey(name: "sid")
  int? studentId;
  @JsonKey(name: "full_name")
  String? fullName;
  @JsonKey(name: "email_address")
  String? emailAddress;
  @JsonKey(name: "password")
  String? password;

  StudentCredResponse(
      this.studentId, this.fullName, this.emailAddress, this.password);

  //from json
  factory StudentCredResponse.fromJson(Map<String, dynamic> json) =>
      _$StudentCredFromJson(json);
  //to json
  Map<String, dynamic> toJson() => _$StudentCredToJson(this);
}

@JsonSerializable()
class StudentInfoResponse {
  @JsonKey(name: "sid")
  int? studentId;
  @JsonKey(name: "full_name")
  String? fullName;
  @JsonKey(name: "email_address")
  String? emailAddress;
  @JsonKey(name: "phone")
  String? address;
  @JsonKey(name: "address")
  String? phoneNumber;
  @JsonKey(name: "gender")
  String? gender;

  StudentInfoResponse(this.studentId, this.fullName, this.emailAddress,
      this.phoneNumber, this.address, this.gender);

  //from json
  factory StudentInfoResponse.fromJson(Map<String, dynamic> json) =>
      _$StudentInfoFromJson(json);
  //to json
  Map<String, dynamic> toJson() => _$StudentInfoToJson(this);
}

@JsonSerializable()
class LibrarianResponse {
  @JsonKey(name: "id")
  int? librarianId;
  @JsonKey(name: "user_name")
  String? userName;
  @JsonKey(name: "password")
  String? password;

  LibrarianResponse(this.librarianId, this.userName, this.password);

  //from json
  factory LibrarianResponse.fromJson(Map<String, dynamic> json) =>
      _$LibrarianFromJson(json);
  //to json
  Map<String, dynamic> toJson() => _$LibrarianToJson(this);
}

@JsonSerializable()
class BooksIssuedByStudentResponse {
  // /http://localhost/Sumitra/lms/lms/apis/select-issues-books-by-student-name.php?sid=14
  @JsonKey(name: "issue_id")
  int? issueId;
  @JsonKey(name: "student_name")
  String? studentName;
  @JsonKey(name: "book_name")
  String? bookName;
  @JsonKey(name: "book_copy_code")
  String? bookCopyIdCode;
  @JsonKey(name: "issue_date")
  String? issuedOn;
  @JsonKey(name: "return_date")
  String? returnDate;

  BooksIssuedByStudentResponse(this.issueId, this.studentName, this.bookName,
      this.bookCopyIdCode, this.issuedOn, this.returnDate);

  //from json
  factory BooksIssuedByStudentResponse.fromJson(Map<String, dynamic> json) =>
      _$BooksIssuedByStudentFromJson(json);
  //to json
  Map<String, dynamic> toJson() => _$BooksIssuedByStudentToJson(this);

  // factory BooksIssuedByStudent.fromJson(Map<String, dynamic> json) =>
  //     _$BooksIssuedByStudentFromJson(json);
}

@JsonSerializable()
class BookAllResponse {
  @JsonKey(name: "book_id")
  int? bookId;
  @JsonKey(name: "book_name")
  String? bookName;
  @JsonKey(name: "author")
  String? authorName;
  @JsonKey(name: "publication")
  String? publication;
  @JsonKey(name: "no_of_copies")
  int? numOfCopies;

  BookAllResponse(this.bookId, this.bookName, this.authorName, this.publication,
      this.numOfCopies);

  //from json
  factory BookAllResponse.fromJson(Map<String, dynamic> json) =>
      _$BookAllFromJson(json);
  //to json
  Map<String, dynamic> toJson() => _$BookAllToJson(this);
}

@JsonSerializable()
class BookAllCopiesResponse {
  @JsonKey(name: "bcid")
  int? bookCopyId;
  @JsonKey(name: "book_id")
  int? bookId;
  @JsonKey(name: "book_name")
  String? bookName;
  @JsonKey(name: "author_name")
  String? authorName;
  @JsonKey(name: "bcid_no")
  int? bookCopyIdCode;
  @JsonKey(name: "created_on")
  String? createdOn;
  @JsonKey(name: "updated_on")
  String? updatedOn;

  BookAllCopiesResponse(this.bookCopyId, this.bookId, this.bookName,
      this.authorName, this.bookCopyIdCode, this.createdOn, this.updatedOn);

  //from json
  factory BookAllCopiesResponse.fromJson(Map<String, dynamic> json) =>
      _$BookAllCopiesFromJson(json);
  //to json
  Map<String, dynamic> toJson() => _$BookAllCopiesToJson(this);
}
