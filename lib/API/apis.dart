import 'dart:convert';
import 'package:http/http.dart' as http;
import 'dart:math';

class Quote {
  final String author, quote;
  Quote(this.author, this.quote);
}

var randomQuote = Random().nextInt(1644);

getQuoteData() async {
  try {
    final response = await http.get(Uri.https('type.fit', 'api/quotes'));
    final jsonData = jsonDecode(response.body);
    List<Quote> quotes = [];

    for (var q in jsonData) {
      Quote quote = Quote(q['author'].toString(), q['text'].toString());
      quotes.add(quote);
    }

    return '${quotes[randomQuote].quote} \n - ${(quotes[randomQuote].author == 'null') ? 'Unknown' : quotes[randomQuote].author}';
  } catch (e) {
    return 'Error loading quote..';
  }
}

var randomImage = Random().nextInt(20) + 1;
