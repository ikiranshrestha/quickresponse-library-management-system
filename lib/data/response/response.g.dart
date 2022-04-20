// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BaseResponse _$BaseResponseFromJson(Map<String, dynamic> json) => BaseResponse()
  ..status = json['status'] as int?
  ..message = json['message'] as String?;

Map<String, dynamic> _$BaseResponseToJson(BaseResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
    };

StudentCredResponse _$StudentCredResponseFromJson(Map<String, dynamic> json) =>
    StudentCredResponse(
      json['sid'] as int?,
      json['full_name'] as String?,
      json['email_address'] as String?,
      json['password'] as String?,
    );

Map<String, dynamic> _$StudentCredResponseToJson(
        StudentCredResponse instance) =>
    <String, dynamic>{
      'sid': instance.studentId,
      'full_name': instance.fullName,
      'email_address': instance.emailAddress,
      'password': instance.password,
    };

StudentInfoResponse _$StudentInfoResponseFromJson(Map<String, dynamic> json) =>
    StudentInfoResponse(
      json['sid'] as int?,
      json['full_name'] as String?,
      json['email_address'] as String?,
      json['address'] as String?,
      json['phone'] as String?,
      json['gender'] as String?,
    );

Map<String, dynamic> _$StudentInfoResponseToJson(
        StudentInfoResponse instance) =>
    <String, dynamic>{
      'sid': instance.studentId,
      'full_name': instance.fullName,
      'email_address': instance.emailAddress,
      'phone': instance.address,
      'address': instance.phoneNumber,
      'gender': instance.gender,
    };

LibrarianResponse _$LibrarianResponseFromJson(Map<String, dynamic> json) =>
    LibrarianResponse(
      json['id'] as int?,
      json['user_name'] as String?,
      json['password'] as String?,
    );

Map<String, dynamic> _$LibrarianResponseToJson(LibrarianResponse instance) =>
    <String, dynamic>{
      'id': instance.librarianId,
      'user_name': instance.userName,
      'password': instance.password,
    };

BooksIssuedByStudentResponse _$BooksIssuedByStudentResponseFromJson(
        Map<String, dynamic> json) =>
    BooksIssuedByStudentResponse(
      json['issue_id'] as int?,
      json['student_name'] as String?,
      json['book_name'] as String?,
      json['book_copy_code'] as String?,
      json['issue_date'] as String?,
      json['return_date'] as String?,
    );

Map<String, dynamic> _$BooksIssuedByStudentResponseToJson(
        BooksIssuedByStudentResponse instance) =>
    <String, dynamic>{
      'issue_id': instance.issueId,
      'student_name': instance.studentName,
      'book_name': instance.bookName,
      'book_copy_code': instance.bookCopyIdCode,
      'issue_date': instance.issuedOn,
      'return_date': instance.returnDate,
    };

BookAllResponse _$BookAllResponseFromJson(Map<String, dynamic> json) =>
    BookAllResponse(
      json['book_id'] as int?,
      json['book_name'] as String?,
      json['author'] as String?,
      json['publication'] as String?,
      json['no_of_copies'] as int?,
    );

Map<String, dynamic> _$BookAllResponseToJson(BookAllResponse instance) =>
    <String, dynamic>{
      'book_id': instance.bookId,
      'book_name': instance.bookName,
      'author': instance.authorName,
      'publication': instance.publication,
      'no_of_copies': instance.numOfCopies,
    };

BookAllCopiesResponse _$BookAllCopiesResponseFromJson(
        Map<String, dynamic> json) =>
    BookAllCopiesResponse(
      json['bcid'] as int?,
      json['book_id'] as int?,
      json['book_name'] as String?,
      json['author_name'] as String?,
      json['bcid_no'] as int?,
      json['created_on'] as String?,
      json['updated_on'] as String?,
    );

Map<String, dynamic> _$BookAllCopiesResponseToJson(
        BookAllCopiesResponse instance) =>
    <String, dynamic>{
      'bcid': instance.bookCopyId,
      'book_id': instance.bookId,
      'book_name': instance.bookName,
      'author_name': instance.authorName,
      'bcid_no': instance.bookCopyIdCode,
      'created_on': instance.createdOn,
      'updated_on': instance.updatedOn,
    };
