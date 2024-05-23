import 'VolumeInfo.dart';
import 'SaleInfo.dart';
import 'AccessInfo.dart';
import 'SearchInfo.dart';
/// kind : "books#volume"
/// id : "1ZJQAAAAMAAJ"
/// etag : "+rd1LtIjuXk"
/// selfLink : "https://www.googleapis.com/books/v1/volumes/1ZJQAAAAMAAJ"
/// volumeInfo : {"title":"Empirical Studies of Programmers","subtitle":"Papers Presented at the First Workshop on Empirical Studies of Programmers, June 5-6, 1986, Washington, D.C.","authors":["Elliot Soloway","S. Sitharama Iyengar"],"publisher":"Intellect (UK)","publishedDate":"1986","description":"This volume studies programmers to gain insights to facilitate improved productivity and quality software. The chapters cover a range of topics including cognitive models of programming; measuring program complexity; the effects of program style and structure on program comprehension, production and maintenance; documentation; the effects of control structures and data structures on program comprehension, production and maintenance; evaluations of program design and construction methodologies; teaching strategies; and assessment of programmer abilities.","industryIdentifiers":[{"type":"OTHER","identifier":"UOM:39015011187609"}],"readingModes":{"text":false,"image":false},"pageCount":288,"printType":"BOOK","categories":["Computers"],"maturityRating":"NOT_MATURE","allowAnonLogging":false,"contentVersion":"0.9.4.0.preview.0","panelizationSummary":{"containsEpubBubbles":false,"containsImageBubbles":false},"imageLinks":{"smallThumbnail":"http://books.google.com/books/content?id=1ZJQAAAAMAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api","thumbnail":"http://books.google.com/books/content?id=1ZJQAAAAMAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api"},"language":"en","previewLink":"http://books.google.com/books?id=1ZJQAAAAMAAJ&q=programer&dq=programer&hl=&cd=21&source=gbs_api","infoLink":"http://books.google.com/books?id=1ZJQAAAAMAAJ&dq=programer&hl=&source=gbs_api","canonicalVolumeLink":"https://books.google.com/books/about/Empirical_Studies_of_Programmers.html?hl=&id=1ZJQAAAAMAAJ"}
/// saleInfo : {"country":"US","saleability":"NOT_FOR_SALE","isEbook":false}
/// accessInfo : {"country":"US","viewability":"NO_PAGES","embeddable":false,"publicDomain":false,"textToSpeechPermission":"ALLOWED","epub":{"isAvailable":false},"pdf":{"isAvailable":false},"webReaderLink":"http://play.google.com/books/reader?id=1ZJQAAAAMAAJ&hl=&source=gbs_api","accessViewStatus":"NONE","quoteSharingAllowed":false}
/// searchInfo : {"textSnippet":"This volume studies programmers to gain insights to facilitate improved productivity and quality software."}

class BooksModel  {
  BooksModel({
      this.kind, 
      this.id, 
      this.etag, 
      this.selfLink, 
      this.volumeInfo, 
      this.saleInfo, 
      this.accessInfo, 
      this.searchInfo,});

  BooksModel.fromJson(dynamic json) {
    kind = json['kind'];
    id = json['id'];
    etag = json['etag'];
    selfLink = json['selfLink'];
    volumeInfo = json['volumeInfo'] != null ? VolumeInfo.fromJson(json['volumeInfo']) : null;
    saleInfo = json['saleInfo'] != null ? SaleInfo.fromJson(json['saleInfo']) : null;
    accessInfo = json['accessInfo'] != null ? AccessInfo.fromJson(json['accessInfo']) : null;
    searchInfo = json['searchInfo'] != null ? SearchInfo.fromJson(json['searchInfo']) : null;
  }
  String? kind;
  String? id;
  String? etag;
  String? selfLink;
  VolumeInfo? volumeInfo;
  SaleInfo? saleInfo;
  AccessInfo? accessInfo;
  SearchInfo? searchInfo;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['kind'] = kind;
    map['id'] = id;
    map['etag'] = etag;
    map['selfLink'] = selfLink;
    if (volumeInfo != null) {
      map['volumeInfo'] = volumeInfo?.toJson();
    }
    if (saleInfo != null) {
      map['saleInfo'] = saleInfo?.toJson();
    }
    if (accessInfo != null) {
      map['accessInfo'] = accessInfo?.toJson();
    }
    if (searchInfo != null) {
      map['searchInfo'] = searchInfo?.toJson();
    }
    return map;
  }
}