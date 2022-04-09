class Question {
  final int ?id, answer;
  final String ?question;
  final List<String> ?options;

  Question({this.id, this.question, this.answer, this.options});
}

const List sample_data = [
  {
    "id": 1,
    "question":
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ?",
    "options": ['Lorem', 'Ipsum', 'Dolor', 'Amet'],
    "answer_index": 1,
  },
  {
    "id": 2,
    "question": "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ?",
    "options": ['Lorem', 'Ipsum', 'Dolor', 'Amet'],
    "answer_index": 2,
  },
  {
    "id": 3,
    "question": "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ?",
    "options": ['Lorem', 'Ipsum', 'Dolor', 'Amet'],
    "answer_index": 2,
  },
  {
    "id": 4,
    "question": "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ?",
    "options": ['Lorem', 'Ipsum', 'Dolor', 'Amet'],
    "answer_index": 2,
  },
];
