// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RecipesStruct extends FFFirebaseStruct {
  RecipesStruct({
    DocumentReference? plantID,
    String? title,
    List<String>? ingredients,
    List<String>? prepSteps,
    String? image,
    String? prepTime,
    String? servings,
    String? author,
    String? nutritionInfo,
    String? category,
    String? videoURL,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _plantID = plantID,
        _title = title,
        _ingredients = ingredients,
        _prepSteps = prepSteps,
        _image = image,
        _prepTime = prepTime,
        _servings = servings,
        _author = author,
        _nutritionInfo = nutritionInfo,
        _category = category,
        _videoURL = videoURL,
        super(firestoreUtilData);

  // "plantID" field.
  DocumentReference? _plantID;
  DocumentReference? get plantID => _plantID;
  set plantID(DocumentReference? val) => _plantID = val;

  bool hasPlantID() => _plantID != null;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  set title(String? val) => _title = val;

  bool hasTitle() => _title != null;

  // "ingredients" field.
  List<String>? _ingredients;
  List<String> get ingredients => _ingredients ?? const [];
  set ingredients(List<String>? val) => _ingredients = val;

  void updateIngredients(Function(List<String>) updateFn) {
    updateFn(_ingredients ??= []);
  }

  bool hasIngredients() => _ingredients != null;

  // "prepSteps" field.
  List<String>? _prepSteps;
  List<String> get prepSteps => _prepSteps ?? const [];
  set prepSteps(List<String>? val) => _prepSteps = val;

  void updatePrepSteps(Function(List<String>) updateFn) {
    updateFn(_prepSteps ??= []);
  }

  bool hasPrepSteps() => _prepSteps != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  set image(String? val) => _image = val;

  bool hasImage() => _image != null;

  // "prepTime" field.
  String? _prepTime;
  String get prepTime => _prepTime ?? '';
  set prepTime(String? val) => _prepTime = val;

  bool hasPrepTime() => _prepTime != null;

  // "servings" field.
  String? _servings;
  String get servings => _servings ?? '';
  set servings(String? val) => _servings = val;

  bool hasServings() => _servings != null;

  // "author" field.
  String? _author;
  String get author => _author ?? '';
  set author(String? val) => _author = val;

  bool hasAuthor() => _author != null;

  // "nutritionInfo" field.
  String? _nutritionInfo;
  String get nutritionInfo => _nutritionInfo ?? '';
  set nutritionInfo(String? val) => _nutritionInfo = val;

  bool hasNutritionInfo() => _nutritionInfo != null;

  // "category" field.
  String? _category;
  String get category => _category ?? '';
  set category(String? val) => _category = val;

  bool hasCategory() => _category != null;

  // "videoURL" field.
  String? _videoURL;
  String get videoURL => _videoURL ?? '';
  set videoURL(String? val) => _videoURL = val;

  bool hasVideoURL() => _videoURL != null;

  static RecipesStruct fromMap(Map<String, dynamic> data) => RecipesStruct(
        plantID: data['plantID'] as DocumentReference?,
        title: data['title'] as String?,
        ingredients: getDataList(data['ingredients']),
        prepSteps: getDataList(data['prepSteps']),
        image: data['image'] as String?,
        prepTime: data['prepTime'] as String?,
        servings: data['servings'] as String?,
        author: data['author'] as String?,
        nutritionInfo: data['nutritionInfo'] as String?,
        category: data['category'] as String?,
        videoURL: data['videoURL'] as String?,
      );

  static RecipesStruct? maybeFromMap(dynamic data) =>
      data is Map ? RecipesStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'plantID': _plantID,
        'title': _title,
        'ingredients': _ingredients,
        'prepSteps': _prepSteps,
        'image': _image,
        'prepTime': _prepTime,
        'servings': _servings,
        'author': _author,
        'nutritionInfo': _nutritionInfo,
        'category': _category,
        'videoURL': _videoURL,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'plantID': serializeParam(
          _plantID,
          ParamType.DocumentReference,
        ),
        'title': serializeParam(
          _title,
          ParamType.String,
        ),
        'ingredients': serializeParam(
          _ingredients,
          ParamType.String,
          isList: true,
        ),
        'prepSteps': serializeParam(
          _prepSteps,
          ParamType.String,
          isList: true,
        ),
        'image': serializeParam(
          _image,
          ParamType.String,
        ),
        'prepTime': serializeParam(
          _prepTime,
          ParamType.String,
        ),
        'servings': serializeParam(
          _servings,
          ParamType.String,
        ),
        'author': serializeParam(
          _author,
          ParamType.String,
        ),
        'nutritionInfo': serializeParam(
          _nutritionInfo,
          ParamType.String,
        ),
        'category': serializeParam(
          _category,
          ParamType.String,
        ),
        'videoURL': serializeParam(
          _videoURL,
          ParamType.String,
        ),
      }.withoutNulls;

  static RecipesStruct fromSerializableMap(Map<String, dynamic> data) =>
      RecipesStruct(
        plantID: deserializeParam(
          data['plantID'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['plants'],
        ),
        title: deserializeParam(
          data['title'],
          ParamType.String,
          false,
        ),
        ingredients: deserializeParam<String>(
          data['ingredients'],
          ParamType.String,
          true,
        ),
        prepSteps: deserializeParam<String>(
          data['prepSteps'],
          ParamType.String,
          true,
        ),
        image: deserializeParam(
          data['image'],
          ParamType.String,
          false,
        ),
        prepTime: deserializeParam(
          data['prepTime'],
          ParamType.String,
          false,
        ),
        servings: deserializeParam(
          data['servings'],
          ParamType.String,
          false,
        ),
        author: deserializeParam(
          data['author'],
          ParamType.String,
          false,
        ),
        nutritionInfo: deserializeParam(
          data['nutritionInfo'],
          ParamType.String,
          false,
        ),
        category: deserializeParam(
          data['category'],
          ParamType.String,
          false,
        ),
        videoURL: deserializeParam(
          data['videoURL'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'RecipesStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is RecipesStruct &&
        plantID == other.plantID &&
        title == other.title &&
        listEquality.equals(ingredients, other.ingredients) &&
        listEquality.equals(prepSteps, other.prepSteps) &&
        image == other.image &&
        prepTime == other.prepTime &&
        servings == other.servings &&
        author == other.author &&
        nutritionInfo == other.nutritionInfo &&
        category == other.category &&
        videoURL == other.videoURL;
  }

  @override
  int get hashCode => const ListEquality().hash([
        plantID,
        title,
        ingredients,
        prepSteps,
        image,
        prepTime,
        servings,
        author,
        nutritionInfo,
        category,
        videoURL
      ]);
}

RecipesStruct createRecipesStruct({
  DocumentReference? plantID,
  String? title,
  String? image,
  String? prepTime,
  String? servings,
  String? author,
  String? nutritionInfo,
  String? category,
  String? videoURL,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    RecipesStruct(
      plantID: plantID,
      title: title,
      image: image,
      prepTime: prepTime,
      servings: servings,
      author: author,
      nutritionInfo: nutritionInfo,
      category: category,
      videoURL: videoURL,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

RecipesStruct? updateRecipesStruct(
  RecipesStruct? recipes, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    recipes
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addRecipesStructData(
  Map<String, dynamic> firestoreData,
  RecipesStruct? recipes,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (recipes == null) {
    return;
  }
  if (recipes.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && recipes.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final recipesData = getRecipesFirestoreData(recipes, forFieldValue);
  final nestedData = recipesData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = recipes.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getRecipesFirestoreData(
  RecipesStruct? recipes, [
  bool forFieldValue = false,
]) {
  if (recipes == null) {
    return {};
  }
  final firestoreData = mapToFirestore(recipes.toMap());

  // Add any Firestore field values
  recipes.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getRecipesListFirestoreData(
  List<RecipesStruct>? recipess,
) =>
    recipess?.map((e) => getRecipesFirestoreData(e, true)).toList() ?? [];
