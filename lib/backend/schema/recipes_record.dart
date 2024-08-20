import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RecipesRecord extends FirestoreRecord {
  RecipesRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "plantID" field.
  DocumentReference? _plantID;
  DocumentReference? get plantID => _plantID;
  bool hasPlantID() => _plantID != null;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  // "ingredients" field.
  List<String>? _ingredients;
  List<String> get ingredients => _ingredients ?? const [];
  bool hasIngredients() => _ingredients != null;

  // "prepSteps" field.
  List<String>? _prepSteps;
  List<String> get prepSteps => _prepSteps ?? const [];
  bool hasPrepSteps() => _prepSteps != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  // "prepTime" field.
  String? _prepTime;
  String get prepTime => _prepTime ?? '';
  bool hasPrepTime() => _prepTime != null;

  // "servings" field.
  String? _servings;
  String get servings => _servings ?? '';
  bool hasServings() => _servings != null;

  // "author" field.
  String? _author;
  String get author => _author ?? '';
  bool hasAuthor() => _author != null;

  // "nutritionInfo" field.
  String? _nutritionInfo;
  String get nutritionInfo => _nutritionInfo ?? '';
  bool hasNutritionInfo() => _nutritionInfo != null;

  // "category" field.
  String? _category;
  String get category => _category ?? '';
  bool hasCategory() => _category != null;

  // "videoURL" field.
  String? _videoURL;
  String get videoURL => _videoURL ?? '';
  bool hasVideoURL() => _videoURL != null;

  void _initializeFields() {
    _plantID = snapshotData['plantID'] as DocumentReference?;
    _title = snapshotData['title'] as String?;
    _ingredients = getDataList(snapshotData['ingredients']);
    _prepSteps = getDataList(snapshotData['prepSteps']);
    _image = snapshotData['image'] as String?;
    _prepTime = snapshotData['prepTime'] as String?;
    _servings = snapshotData['servings'] as String?;
    _author = snapshotData['author'] as String?;
    _nutritionInfo = snapshotData['nutritionInfo'] as String?;
    _category = snapshotData['category'] as String?;
    _videoURL = snapshotData['videoURL'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Recipes');

  static Stream<RecipesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => RecipesRecord.fromSnapshot(s));

  static Future<RecipesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => RecipesRecord.fromSnapshot(s));

  static RecipesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      RecipesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static RecipesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      RecipesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'RecipesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is RecipesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createRecipesRecordData({
  DocumentReference? plantID,
  String? title,
  String? image,
  String? prepTime,
  String? servings,
  String? author,
  String? nutritionInfo,
  String? category,
  String? videoURL,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'plantID': plantID,
      'title': title,
      'image': image,
      'prepTime': prepTime,
      'servings': servings,
      'author': author,
      'nutritionInfo': nutritionInfo,
      'category': category,
      'videoURL': videoURL,
    }.withoutNulls,
  );

  return firestoreData;
}

class RecipesRecordDocumentEquality implements Equality<RecipesRecord> {
  const RecipesRecordDocumentEquality();

  @override
  bool equals(RecipesRecord? e1, RecipesRecord? e2) {
    const listEquality = ListEquality();
    return e1?.plantID == e2?.plantID &&
        e1?.title == e2?.title &&
        listEquality.equals(e1?.ingredients, e2?.ingredients) &&
        listEquality.equals(e1?.prepSteps, e2?.prepSteps) &&
        e1?.image == e2?.image &&
        e1?.prepTime == e2?.prepTime &&
        e1?.servings == e2?.servings &&
        e1?.author == e2?.author &&
        e1?.nutritionInfo == e2?.nutritionInfo &&
        e1?.category == e2?.category &&
        e1?.videoURL == e2?.videoURL;
  }

  @override
  int hash(RecipesRecord? e) => const ListEquality().hash([
        e?.plantID,
        e?.title,
        e?.ingredients,
        e?.prepSteps,
        e?.image,
        e?.prepTime,
        e?.servings,
        e?.author,
        e?.nutritionInfo,
        e?.category,
        e?.videoURL
      ]);

  @override
  bool isValidKey(Object? o) => o is RecipesRecord;
}
