class ClassificationModel {
  String id;
  String type;
  String subType;
  String name;
  String language;
  Category1 category1;
  Category2 category2;
  String question;
  String quizAudioText;
  String audio;
  String qaAudioUrl;
  List<String> knowledgeId;
  List<int> ageLevel;
  String title;
  String subject;
  int duration;
  double fileSize;
  dynamic coverPageImageData;
  dynamic imageData;
  dynamic urlParams;
  dynamic answer;
  dynamic game;
  dynamic url;
  dynamic coverPageImgBase64;
  dynamic imageBase64;
  dynamic answerBase64;
  String audioBase64;
  dynamic musicBase64;
  dynamic wordAudioBase64;
  String qaAudioUrlBase64;
  dynamic rhymeBgImageBase64;
  dynamic rhymeAudioUrlBase64;
  List<dynamic> rhymeImagesBase64;
  List<dynamic> elements;
  List<dynamic> pages;

  ClassificationModel({
    required this.id,
    required this.type,
    required this.subType,
    required this.name,
    required this.language,
    required this.category1,
    required this.category2,
    required this.question,
    required this.quizAudioText,
    required this.audio,
    required this.qaAudioUrl,
    required this.knowledgeId,
    required this.ageLevel,
    required this.title,
    required this.subject,
    required this.duration,
    required this.fileSize,
    this.coverPageImageData,
    this.imageData,
    this.urlParams,
    this.answer,
    this.game,
    this.url,
    this.coverPageImgBase64,
    this.imageBase64,
    this.answerBase64,
    required this.audioBase64,
    this.musicBase64,
    this.wordAudioBase64,
    required this.qaAudioUrlBase64,
    this.rhymeBgImageBase64,
    this.rhymeAudioUrlBase64,
    required this.rhymeImagesBase64,
    required this.elements,
    required this.pages,
  });

  factory ClassificationModel.fromJson(Map<String, dynamic> json) =>
      ClassificationModel(
        id: json["_id"],
        type: json["type"],
        subType: json["sub_type"],
        name: json["name"],
        language: json["language"],
        category1: Category1.fromJson(json["category1"]),
        category2: Category2.fromJson(json["category2"]),
        question: json["question"],
        quizAudioText: json["quiz_audio_text"],
        audio: json["audio"],
        qaAudioUrl: json["qa_audio_url"],
        knowledgeId: List<String>.from(json["knowledge_id"].map((x) => x)),
        ageLevel: List<int>.from(json["age_level"].map((x) => x)),
        title: json["title"],
        subject: json["subject"],
        duration: json["duration"],
        fileSize: json["file_size"]?.toDouble(),
        coverPageImageData: json["cover_page_image_data"],
        imageData: json["image_data"],
        urlParams: json["url_params"],
        answer: json["answer"],
        game: json["game"],
        url: json["url"],
        coverPageImgBase64: json["cover_page_img_base64"],
        imageBase64: json["image_base64"],
        answerBase64: json["answer_base64"],
        audioBase64: json["audio_base64"],
        musicBase64: json["music_base64"],
        wordAudioBase64: json["word_audio_base64"],
        qaAudioUrlBase64: json["qa_audio_url_base64"],
        rhymeBgImageBase64: json["rhyme_bg_image_base64"],
        rhymeAudioUrlBase64: json["rhyme_audio_url_base64"],
        rhymeImagesBase64:
            List<dynamic>.from(json["rhyme_images_base64"].map((x) => x)),
        elements: List<dynamic>.from(json["elements"].map((x) => x)),
        pages: List<dynamic>.from(json["pages"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "type": type,
        "sub_type": subType,
        "name": name,
        "language": language,
        "category1": category1.toJson(),
        "category2": category2.toJson(),
        "question": question,
        "quiz_audio_text": quizAudioText,
        "audio": audio,
        "qa_audio_url": qaAudioUrl,
        "knowledge_id": List<dynamic>.from(knowledgeId.map((x) => x)),
        "age_level": List<dynamic>.from(ageLevel.map((x) => x)),
        "title": title,
        "subject": subject,
        "duration": duration,
        "file_size": fileSize,
        "cover_page_image_data": coverPageImageData,
        "image_data": imageData,
        "url_params": urlParams,
        "answer": answer,
        "game": game,
        "url": url,
        "cover_page_img_base64": coverPageImgBase64,
        "image_base64": imageBase64,
        "answer_base64": answerBase64,
        "audio_base64": audioBase64,
        "music_base64": musicBase64,
        "word_audio_base64": wordAudioBase64,
        "qa_audio_url_base64": qaAudioUrlBase64,
        "rhyme_bg_image_base64": rhymeBgImageBase64,
        "rhyme_audio_url_base64": rhymeAudioUrlBase64,
        "rhyme_images_base64":
            List<dynamic>.from(rhymeImagesBase64.map((x) => x)),
        "elements": List<dynamic>.from(elements.map((x) => x)),
        "pages": List<dynamic>.from(pages.map((x) => x)),
      };
}

class Category1 {
  String climate;
  List<String> winter;

  Category1({
    required this.climate,
    required this.winter,
  });

  factory Category1.fromJson(Map<String, dynamic> json) => Category1(
        climate: "winter",
        winter: List<String>.from(json["Winter"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "climate": climate,
        "Winter": List<dynamic>.from(winter.map((x) => x)),
      };
}

class Category2 {
  List<String> summer;

  Category2({
    required this.summer,
  });

  factory Category2.fromJson(Map<String, dynamic> json) => Category2(
        summer: List<String>.from(json["Summer"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "Summer": List<dynamic>.from(summer.map((x) => x)),
      };
}
