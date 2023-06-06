import 'package:test/test.dart';
import 'package:testing_app/models/favorites.dart';

void main() {
  group('Testing App Provider', () {
    var favorites = Favorites();

    test('A new item should be added', () {
      var number = 35;
      favorites.add(number);
      expect(favorites.items.contains(number), true);
    });

    test("An item should be removed", () {
      var number = 40;
      favorites.remove(number);
      expect(favorites.items.contains(number), false);
    });
  });
}
