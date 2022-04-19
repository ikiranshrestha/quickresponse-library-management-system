//to convert the response into non-nullable object (model)

import 'package:lms/app/extension.dart';
import 'package:lms/data/response/response.dart';
import 'package:lms/domain/model.dart';

const empty = "";
const zero = 0;
const doubleZero = 0.0;

extension StudentCredsMapper on StudentCredResponse? {
  StudentCreds toDomain() {
    return StudentCreds(
        this?.studentId?.orZero() ?? zero,
        this?.fullName?.orEmpty() ?? empty,
        this?.emailAddress?.orEmpty() ?? empty,
        this?.password?.orEmpty() ?? empty);
  }
}

extension StudentInfoMapper on StudentInfoResponse? {
  StudentInfo toDomain() {
    return StudentInfo(
        this?.studentId?.orZero() ?? zero,
        this?.fullName?.orEmpty() ?? empty,
        this?.emailAddress?.orEmpty() ?? empty,
        this?.phoneNumber?.orEmpty() ?? empty,
        this?.address?.orEmpty() ?? empty,
        this?.gender?.orEmpty() ?? empty);
  }
}

extension LibrarianMapper on LibrarianResponse? {
  Librarian toDomain() {
    return Librarian(this?.librarianId?.orZero() ?? zero,
        this?.userName?.orEmpty() ?? empty, this?.password?.orEmpty() ?? empty);
  }
}

extension BooksIssuedByStudentMapper on BooksIssuedByStudentResponse? {
  BookIssuedByParticularStudent toDomain() {
    return BookIssuedByParticularStudent(
        this?.issueId?.orZero() ?? 0,
        this?.studentName?.orEmpty() ?? empty,
        this?.bookName?.orEmpty() ?? empty,
        this?.bookCopyIdCode?.orEmpty() ?? empty,
        this?.issuedOn?.orEmpty() ?? empty,
        this?.returnDate?.orEmpty() ?? empty);
  }
}

extension BookAllMapper on BookAllResponse? {
  AllBooks toDomain() {
    return AllBooks(
        this?.bookId?.orZero() ?? zero,
        this?.bookName?.orEmpty() ?? empty,
        this?.authorName?.orEmpty() ?? empty,
        this?.publication?.orEmpty() ?? empty,
        this?.numOfCopies?.orZero() ?? zero);
  }
}

extension BookAllCopiesMapper on BookAllCopiesResponse? {
  BookAllCopies toDomain() {
    return BookAllCopies(
        this?.bookCopyId?.orZero() ?? zero,
        this?.bookId?.orZero() ?? zero,
        this?.bookName?.orEmpty() ?? empty,
        this?.authorName?.orEmpty() ?? empty,
        this?.bookCopyIdCode?.orZero() ?? zero,
        this?.createdOn?.orEmpty() ?? empty,
        this?.updatedOn?.orEmpty() ?? empty);
  }
}
