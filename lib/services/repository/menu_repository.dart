import 'package:tiger_order/models/lang_and_value.dart';
import 'package:tiger_order/models/menu.dart';

class MenuRepository {
  Future<List<Menu>> getMenu(int merchatId, int barnchId) async {
    return Future(() {
      return [
        Menu(
          id: 1,
          groupId: 1,
          name: [
            LangAndValue(lang: "kr", value: "시금치 피자"),
            LangAndValue(lang: "en", value: "Spinach Pizza"),
          ],
          imageUrls: [
            "https://cdn.pixabay.com/photo/2024/04/23/09/32/ai-generated-8714512_1280.jpg",
          ],
          shortDesc: "신선한 시금치와 치즈, 그리고 담백한 도우와의 만남",
          fullDesc: """시금치 피자는 가장 인기 있는 피자중 하나 입니다.
            담백한 도우에, 텃밭에서 정성껏 키운 싱싱한 시금치와 리얼 치즈를 올려 화덕에서 굽습니다.            
            """,
          price: 15000,
          options: [],
        ),
        Menu(
          id: 2,
          groupId: 1,
          name: [
            LangAndValue(lang: "kr", value: "햄&토마토 피자"),
            LangAndValue(lang: "en", value: "Ham & Tomato Pizza"),
          ],
          imageUrls: [
            "https://cdn.pixabay.com/photo/2024/04/23/09/33/ai-generated-8714534_1280.jpg",
          ],
          shortDesc: "맛있는 수제 햄과 토마토, 그리고 담백한 도우와의 만남",
          fullDesc: """호랑이 피자의 best 메뉴.
            담백한 도우에, 수제 햄과 토마토를 토핑으로 올렸습니다.
            아이들이 가장 좋아하는 피자 입니다.
            """,
          price: 14000,
          options: [],
        ),
        Menu(
          id: 3,
          groupId: 1,
          name: [
            LangAndValue(lang: "kr", value: "마르게리타 피자"),
            LangAndValue(lang: "en", value: "Margherita Pizza"),
          ],
          imageUrls: [
            "https://cdn.pixabay.com/photo/2024/04/21/18/44/ai-generated-8711272_1280.jpg",
          ],
          shortDesc: "말이 필요없는 마르게리타 피자",
          fullDesc: """최고 인기 피자.
            말이 필요 없는 최고의 맛.
            아이들이 가장 좋아하는 피자 입니다.
            """,
          price: 18000,
          options: [],
        ),
      ];
    });
  }
}
