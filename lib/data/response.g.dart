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

StudentCred _$StudentCredFromJson(Map<String, dynamic> json) => StudentCred(
      json['sid'] as int?,
      json['full_name'] as String?,
      json['email_address'] as String?,
      json['password'] as String?,
    );

Map<String, dynamic> _$StudentCredToJson(StudentCred instance) =>
    <String, dynamic>{
      'sid': instance.studentId,
      'full_name': instance.fullName,
      'email_address': instance.emailAddress,
      'password': instance.password,
    };

StudentInfo _$StudentInfoFromJson(Map<String, dynamic> json) => StudentInfo(
      json['sid'] as int?,
      json['full_name'] as String?,
      json['email_address'] as String?,
      json['phone'] as String?,
      json['gender'] as String?,
    );

Map<String, dynamic> _$StudentInfoToJson(StudentInfo instance) =>
    <String, dynamic>{
      'sid': instance.studentId,
      'full_name': instance.fullName,
      'email_address': instance.emailAddress,
      'phone': instance.phoneNumber,
      'gender': instance.gender,
    };

Librarian _$LibrarianFromJson(Map<String, dynamic> json) => Librarian(
      json['id'] as int?,
      json['full_name'] as String?,
      json['email_address'] as String?,
      json['password'] as String?,
    );

Map<String, dynamic> _$LibrarianToJson(Librarian instance) => <String, dynamic>{
      'id': instance.id,
      'full_name': instance.fullName,
      'email_address': instance.emailAddress,
      'password': instance.password,
    };

BooksIssuedByStudent _$BooksIssuedByStudentFromJson(
        Map<String, dynamic> json) =>
    BooksIssuedByStudent(
      json['issue_id'] as int?,
      json['student_name'] as String?,
      json['book_name'] as String?,
      json['book_copy_code'] as String?,
      json['issue_date'] as String?,
      json['return_date'] as String?,
    );

Map<String, dynamic> _$BooksIssuedByStudentToJson(
        BooksIssuedByStudent instance) =>
    <String, dynamic>{
      'issue_id': instance.issueId,
      'student_name': instance.studentName,
      'book_name': instance.bookName,
      'book_copy_code': instance.bookCopyCode,
      'issue_date': instance.issueDate,
      'return_date': instance.returnDate,
    };

BookAll _$BookAllFromJson(Map<String, dynamic> json) => BookAll(
      json['book_id'] as String?,
      json['book_name'] as String?,
      json['author'] as String?,
      json['publication'] as String?,
      json['no_of_copies'] as String?,
    );

Map<String, dynamic> _$BookAllToJson(BookAll instance) => <String, dynamic>{
      'book_id': instance.bookId,
      'book_name': instance.bookName,
      'author': instance.authorName,
      'publication': instance.publication,
      'no_of_copies': instance.numOfCopies,
    };

BookAllCopies _$BookAllCopiesFromJson(Map<String, dynamic> json) =>
    BookAllCopies(
      json['bcid'] as int?,
      json['book_id'] as String?,
      json['book_name'] as String?,
      json['bcid_no'] as String?,
      json['created_on'] as String?,
      json['updated_on'] as String?,
    );

Map<String, dynamic> _$BookAllCopiesToJson(BookAllCopies instance) =>
    <String, dynamic>{
      'bcid': instance.bookCopyId,
      'book_id': instance.bookId,
      'book_name': instance.bookName,
      'bcid_no': instance.bookCopyIdKey,
      'created_on': instance.createdOn,
      'updated_on': instance.updatedOn,
    };
