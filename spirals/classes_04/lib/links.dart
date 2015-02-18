part of classes;

// http://stackoverflow.com/questions/176264/whats-the-difference-between-a-uri-and-a-url

class Link {
  String name;
  Uri url;

  Link(this.name, String link) {
    url = Uri.parse(link);
  }
  
  String toString() {
    return '  {\n '
           '    name: ${name}, \n '
           '    url: ${url}\n'
           '  }';
  }
  
  display() => toString();
}

class Links {
  var _list = new List<Link>();

  init() {
    var link1 = new Link('On Dart', 'http://ondart.me/');
    var link2 = new Link('Polymer.dart', 'https://www.dartlang.org/polymer-dart/');
    var link3 = new Link('Books To Read', 'http://www.goodreads.com/');
    this..add(link1)..add(link2)..add(link3);
  }
  
  Iterator<Link> get iterator => _list.iterator;
  int get length => _list.length;
  bool get isEmpty => _list.isEmpty;
  
  bool add(Link newLink) {
    if (newLink == null) {
      throw new Exception('a new link must be present');
    }
    for (Link link in this) {
      if (newLink.name == link.name) return false;
    }
    _list.add(newLink);
    return true;
  }

  Link find(String name) {
    for (Link link in this) {
      if (link.name == name) return link;
    }
    return null;
  }

  bool remove(Link link) => _list.remove(link);  
  clear() => _list.clear();
  
  display([String title='Links']) {
    print('');
    print(title);
    print('[');
    for (Link link in this) {
      print(link.display());
    }
    print(']');
    print('');
  }
}