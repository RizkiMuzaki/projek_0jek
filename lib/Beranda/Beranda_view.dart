import 'package:flutter/material.dart';
import 'package:projek_0jek/beranda/beranda_appbar.dart';
import 'package:projek_0jek/beranda/beranda_model.dart';
import 'package:projek_0jek/constant.dart';

class BerandaPage extends StatefulWidget {
  const BerandaPage({super.key});

  @override
  State<BerandaPage> createState() => _BerandaPageState();
}

class _BerandaPageState extends State<BerandaPage> {
  List<GojekService> _gojekServiceList = [];
  List<Food> _goFoodFeaturedList = [];
  List<Promo> _promoList = [];

  @override
  void initState() {
    super.initState();

    _gojekServiceList.add(GojekService(
        image: Icons.directions_bike,
        color: GojekPalette.menuRide,
        title: "GO-RIDE"));
    _gojekServiceList.add(GojekService(
        image: Icons.local_car_wash,
        color: GojekPalette.menuCar,
        title: "GO-CAR"));
    _gojekServiceList.add(GojekService(
        image: Icons.directions_car,
        color: GojekPalette.menuBluebird,
        title: "GO-BLUEBIRD"));
    _gojekServiceList.add(GojekService(
        image: Icons.restaurant,
        color: GojekPalette.menuFood,
        title: "GO-FOOD"));
    _gojekServiceList.add(GojekService(
        image: Icons.next_week,
        color: GojekPalette.menuSend,
        title: "GO-SEND"));
    _gojekServiceList.add(GojekService(
        image: Icons.local_offer,
        color: GojekPalette.menuDeals,
        title: "GO-DEALS"));
    _gojekServiceList.add(GojekService(
        image: Icons.phonelink_ring,
        color: GojekPalette.menuPulsa,
        title: "GO-PULSA"));
    _gojekServiceList.add(GojekService(
        image: Icons.apps, color: GojekPalette.menuOther, title: "LAINNYA"));
    _gojekServiceList.add(GojekService(
        image: Icons.shopping_basket,
        color: GojekPalette.menuShop,
        title: "GO-SHOP"));
    _gojekServiceList.add(GojekService(
        image: Icons.shopping_cart,
        color: GojekPalette.menuMart,
        title: "GO-MART"));
    _gojekServiceList.add(GojekService(
        image: Icons.local_play, color: GojekPalette.menuTix, title: "GO-TIX"));

    _goFoodFeaturedList
        .add(Food(title: "Steak Andakar", image: "assets/images/food_1.jpg"));
    _goFoodFeaturedList
        .add(Food(title: "Mie Ayam Tumini", image: "assets/images/food_2.jpg"));
    _goFoodFeaturedList
        .add(Food(title: "Tengkleng Hohah", image: "assets/images/food_3.jpg"));
    _goFoodFeaturedList
        .add(Food(title: "Warung Steak", image: "assets/images/food_4.jpg"));
    _goFoodFeaturedList.add(
        Food(title: "Kindai Warung Banjar", image: "assets/images/food_5.jpg"));

    _promoList.add(Promo(
        image: "assets/images/promo_1.jpg",
        title: "Bayar PLN dan BPJS, dapat cashback 10%",
        content:
            "Nikmatin cashback 10% untuk pembayaran PLN, BPJS, Google Voucher dan tagihan lain di GO-BILS.",
        button: "MAU!"));
    _promoList.add(Promo(
        image: "assets/images/promo_2.jpg",
        title: "#CeritaGojek",
        content:
            "Berulang kali terpuruk tak menghalanginya untuk bangkit dan jadi kebanggan kami, Simak selengkapnya disini.",
        button: "SELENGKAPNYA"));
    _promoList.add(Promo(
        image: "assets/images/promo_3.jpg",
        title: "GOJEK Ultah Ke 8",
        content:
            "8 Tahun berdiri ada satu alasan kami tetap tumbuh dan berinovasi. Satu yang buat kami untuk terus berinovasi",
        button: "CARI TAU!"));
    _promoList.add(Promo(
        image: "assets/images/promo_4.jpg",
        title: "Gratis Pulsa 100rb*",
        content:
            "Aktifkan 10 Voucher GO-PULSAmu sekarang biar ngabarin yang terdekat gak pakai terhambat.",
        button: "LAKSANAKAN"));
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: GojekAppBar(),
        backgroundColor: GojekPalette.grey,
        body: Container(
          child: ListView(
            physics: ClampingScrollPhysics(),
            children: [
              Container(
                padding: EdgeInsets.only(left: 16.0, right: 16.0, top: 16.0),
                color: Colors.white,
                child: Column(
                  children: [Widget_buildGopayMenu(), _buildGojekservicaMenu()],
                ),
              ),
              Container(
                color: Colors.white,
                margin: EdgeInsets.only(top: 16.0),
                child: _buildGoFoodFeatured(),
              ),
              Container(
                color: Colors.white,
                margin: EdgeInsets.only(top: 16.0),
                child: _buildPromo(),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget_buildGopayMenu() {
    return Container(
      height: 120.0,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Color(0xff3164bd), Color(0xff3164bd)]),
          borderRadius: BorderRadius.all(Radius.circular(3.0))),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(12.0),
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Color(0xff3164bd), Color(0xff3164bd)]),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(3.0),
                    topRight: Radius.circular(3.0))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "GOPAY",
                  style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.white,
                      fontFamily: "NeoSansBold"),
                ),
                Text(
                  "Rp.115.000",
                  style: TextStyle(
                      fontSize: 14.0,
                      color: Colors.white,
                      fontFamily: "NeoSanaBold"),
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 32.0, right: 32.0, top: 12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/icons/icon_transfer.png",
                      width: 32.0,
                      height: 32.0,
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10.0),
                    ),
                    Text(
                      "transfer",
                      style: TextStyle(color: Colors.white, fontSize: 12),
                    )
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/icons/icon_scan.png",
                      width: 32.0,
                      height: 32.0,
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10.0),
                    ),
                    Text(
                      "Scan QR",
                      style: TextStyle(color: Colors.white, fontSize: 12),
                    )
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/icons/icon_saldo.png",
                      width: 32.0,
                      height: 32.0,
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10.0),
                    ),
                    Text(
                      "Isi Saldo",
                      style: TextStyle(color: Colors.white, fontSize: 12),
                    )
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/icons/icon_menu.png",
                      width: 32.0,
                      height: 32.0,
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10.0),
                    ),
                    Text(
                      "Lainnya",
                      style: TextStyle(color: Colors.white, fontSize: 12),
                    )
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _buildGojekservicaMenu() {
    return SizedBox(
      width: double.infinity,
      height: 220.0,
      child: Container(
        margin: EdgeInsets.only(top: 8.0, bottom: 8.0),
        child: GridView.builder(
          physics: ClampingScrollPhysics(),
          itemCount: 8,
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
          itemBuilder: (context, position) {
            return _rowGojekService(_gojekServiceList[position]);
          },
        ),
      ),
    );
  }

  Widget _rowGojekService(GojekService gojekService) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
              border: Border.all(color: GojekPalette.grey200, width: 1.0),
              borderRadius: BorderRadius.all(Radius.circular(20.0))),
          padding: EdgeInsets.all(12.0),
          child: Icon(
            gojekService.image,
            color: gojekService.color,
            size: 32.0,
          ),
        ),
        Padding(padding: EdgeInsets.only(top: 6.0)),
        Text(
          gojekService.title,
          style: TextStyle(fontSize: 10.0),
        )
      ],
    );
  }

  Widget _buildGoFoodFeatured() {
    return Container(
      padding: EdgeInsets.fromLTRB(16.0, 16.0, 0, 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            "GO-FOOD",
            style: TextStyle(fontFamily: "NeoSansBold"),
          ),
          Padding(padding: EdgeInsets.only(top: 8.0)),
          Text(
            "Pilihan Terlaris",
            style: TextStyle(fontFamily: "NeoSansBold"),
          ),
          SizedBox(
            height: 172.0,
            child: ListView.builder(
              itemCount: _goFoodFeaturedList.length,
              padding: EdgeInsets.only(top: 12.0),
              physics: ClampingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return _rowGoFoodFeatured(_goFoodFeaturedList[index]);
              },
            ),
          )
        ],
      ),
    );
  }

  Widget _rowGoFoodFeatured(Food food) {
    return Container(
      margin: EdgeInsets.only(right: 16.0),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Image.asset(
              food.image,
              width: 132.0,
              height: 132.0,
            ),
          ),
          Padding(padding: EdgeInsets.only(top: 8.0)),
          Text(food.title)
        ],
      ),
    );
  }

  Widget _buildPromo() {
    return Container(
      margin: EdgeInsets.all(16.0),
      child: Column(
        children: _promoList.map((data) {
          return _rowPromo(data);
        }).toList(),
      ),
    );
  }

  Widget _rowPromo(Promo promo) {
    return Container(
      height: 320.0,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 16.0),
            width: double.infinity,
            height: 1.0,
            color: GojekPalette.grey200,
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Image.asset(
              promo.image,
              height: 172.0,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Text(
            promo.title,
            style: TextStyle(fontFamily: "NeoSansBold", fontSize: 16.0),
          ),
          Padding(
            padding: EdgeInsets.only(top: 16.0),
          ),
          Text(
            promo.content,
            maxLines: 2,
            softWrap: true,
            style: TextStyle(
              color: Colors.grey,
              fontSize: 14.0,
            ),
          ),
          Padding(padding: EdgeInsets.only(top: 6.0)),
          Container(
              alignment: Alignment.centerRight,
              child: MaterialButton(
                onPressed: () {},
                color: GojekPalette.green,
                child: Text(
                  promo.button,
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: "NeoSansBold",
                      fontSize: 12.0),
                ),
              )),
        ],
      ),
    );
  }
}
