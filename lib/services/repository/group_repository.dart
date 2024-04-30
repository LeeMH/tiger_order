import 'package:tiger_order/models/lang_and_value.dart';
import 'package:tiger_order/models/group.dart';

class GroupRepository {
  Future<List<Group>> getGroups(int merchatId, int barnchId) async {
    return Future(() {
      return [
        Group(
          id: 1,
          name: [
            LangAndValue(lang: 'kr', value: '피자'),
            LangAndValue(lang: 'en', value: 'Pizza'),
          ],
          imageUrl: 'https://cdn.pixabay.com/photo/2017/02/15/10/57/pizza.jpg',
          fontSize: 20,
        ),
        Group(
          id: 2,
          name: [
            LangAndValue(lang: 'kr', value: '스페셜'),
            LangAndValue(lang: 'en', value: 'Special'),
          ],
          imageUrl:
              'https://cdn.pixabay.com/photo/2024/02/15/09/30/grilled-chicken-8575031_640.png',
          fontSize: 20,
        ),
        Group(
          id: 3,
          name: [
            LangAndValue(lang: 'kr', value: '샐러드'),
            LangAndValue(lang: 'en', value: 'Salad'),
          ],
          imageUrl: 'https://cdn.pixabay.com/photo/2015/12/03/16/46/salad.jpg',
          fontSize: 20,
        ),
        Group(
          id: 4,
          name: [
            LangAndValue(lang: 'kr', value: '음료'),
            LangAndValue(lang: 'en', value: 'Bevarage'),
          ],
          imageUrl:
              'https://cdn.pixabay.com/photo/2017/01/11/11/02/cocktail-1971489_640.jpg',
          fontSize: 20,
        ),
        //dup..
        Group(
          id: 4,
          name: [
            LangAndValue(lang: 'kr', value: '음료'),
            LangAndValue(lang: 'en', value: 'Bevarage'),
          ],
          imageUrl:
              'https://cdn.pixabay.com/photo/2017/01/11/11/02/cocktail-1971489_640.jpg',
          fontSize: 20,
        ),
        Group(
          id: 4,
          name: [
            LangAndValue(lang: 'kr', value: '음료'),
            LangAndValue(lang: 'en', value: 'Bevarage'),
          ],
          imageUrl:
              'https://cdn.pixabay.com/photo/2017/01/11/11/02/cocktail-1971489_640.jpg',
          fontSize: 20,
        ),
        Group(
          id: 4,
          name: [
            LangAndValue(lang: 'kr', value: '음료'),
            LangAndValue(lang: 'en', value: 'Bevarage'),
          ],
          imageUrl:
              'https://cdn.pixabay.com/photo/2017/01/11/11/02/cocktail-1971489_640.jpg',
          fontSize: 20,
        ),
        Group(
          id: 4,
          name: [
            LangAndValue(lang: 'kr', value: '음료'),
            LangAndValue(lang: 'en', value: 'Bevarage'),
          ],
          imageUrl:
              'https://cdn.pixabay.com/photo/2017/01/11/11/02/cocktail-1971489_640.jpg',
          fontSize: 20,
        ),
        Group(
          id: 4,
          name: [
            LangAndValue(lang: 'kr', value: '음료'),
            LangAndValue(lang: 'en', value: 'Bevarage'),
          ],
          imageUrl:
              'https://cdn.pixabay.com/photo/2017/01/11/11/02/cocktail-1971489_640.jpg',
          fontSize: 20,
        ),
        Group(
          id: 4,
          name: [
            LangAndValue(lang: 'kr', value: '음료'),
            LangAndValue(lang: 'en', value: 'Bevarage'),
          ],
          imageUrl:
              'https://cdn.pixabay.com/photo/2017/01/11/11/02/cocktail-1971489_640.jpg',
          fontSize: 20,
        ),
        Group(
          id: 4,
          name: [
            LangAndValue(lang: 'kr', value: '음료'),
            LangAndValue(lang: 'en', value: 'Bevarage'),
          ],
          imageUrl:
              'https://cdn.pixabay.com/photo/2017/01/11/11/02/cocktail-1971489_640.jpg',
          fontSize: 20,
        ),
        Group(
          id: 4,
          name: [
            LangAndValue(lang: 'kr', value: '음료'),
            LangAndValue(lang: 'en', value: 'Bevarage'),
          ],
          imageUrl:
              'https://cdn.pixabay.com/photo/2017/01/11/11/02/cocktail-1971489_640.jpg',
          fontSize: 20,
        ),
        Group(
          id: 4,
          name: [
            LangAndValue(lang: 'kr', value: '음료'),
            LangAndValue(lang: 'en', value: 'Bevarage'),
          ],
          imageUrl:
              'https://cdn.pixabay.com/photo/2017/01/11/11/02/cocktail-1971489_640.jpg',
          fontSize: 20,
        ),
        Group(
          id: 4,
          name: [
            LangAndValue(lang: 'kr', value: '음료'),
            LangAndValue(lang: 'en', value: 'Bevarage'),
          ],
          imageUrl:
              'https://cdn.pixabay.com/photo/2017/01/11/11/02/cocktail-1971489_640.jpg',
          fontSize: 20,
        ),
      ];
    });
  }
}
