part of classes;

// http://stackoverflow.com/questions/176264/whats-the-difference-between-a-uri-and-a-url

class Link {
  String name;
  Uri url;

  Link(this.name, String link) {
    url = Uri.parse(link);
  }
}