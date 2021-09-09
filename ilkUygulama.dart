import 'package:flutter/material.dart';
import 'package:lib/bilgitesti.dart';
void main(){
  runApp(MaterialApp(
    initialRoute: "/",
    routes: {
      "/":(context)=>DersUygulamasiS1(), //proje DersUygulamasiS1 ekranıyla açılsın
      "/bilgitesti":(context)=>BilgiTesti()// BilgiTesti sayfası ile devam etsin
    },
  ));
}


class DersUygulamasiS1 extends StatefulWidget {
  const DersUygulamasiS1({Key? key}) : super(key: key);

  @override
  _DersUygulamasiS1State createState() => _DersUygulamasiS1State();
}

class _DersUygulamasiS1State extends State<DersUygulamasiS1> {
  String metin =
      "Konu çalışmalarını tamamladıktan sonra, zaman zaman notlarına ve formüllere bakmaya ihtiyaç duyabilirsin. Tekrar yaparken ya da soru çözerken notlara göz atmak ve gerekli ipuçlarını almak, öğrenme aşamasında sana epey yardımcı olacaktır. Kunduz ekibi olarak, alanında uzman eğitmenlerimizin de desteğiyle, her konuda mutlaka görmen gereken ipuçlarını, formülleri, ders notlarını senin için derliyoruz!📚 Bu yazımızda Hormonlar, Hormonal Bezler, Hipotalamus, Hipofiz, Hormonların Taşınması, Kemikten Kana ve Kandan Kemiğe İyon Geçişi, Antagonist Hormon, Kan Şekerinin Düzenlenmesi hakkında bilmen gerekenler ile Endokrin Sistemi konusuna ait soruları çözerken işine yarayacağını düşündüğümüz ipuçları yer alıyor. Umarız bu notlar sana yardımcı olur. İyi okumalar!";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text(
          "BİYOLOJİ",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        actions: [
          // appbarda children yerine kullanılıyor
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              "KONU: HORMONLAR  ",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.blue[900],
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.auto_stories,
              color: Colors.white,
            ),
            title: Text(
              "Test Çöz",
              style: TextStyle(color: Colors.white),
            ),
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.thumb_down,
                color: Colors.white,
              ),
              title: Text("Dislike", style: TextStyle(color: Colors.white))),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.add_circle_outline,
              color: Colors.white,
            ),
            title: Text(
              "ekle",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: const <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.red,
              ),
              child: Text(
                'DERS NOTLARI',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),

             ListTile(
              leading: Icon(Icons.menu_book),
              title: Text('BİYOLOJİ'),
            ),
            ListTile(
              leading: Icon(Icons.science),
              title: Text('KİMYA'),
            ),
            ListTile(
              leading: Icon(Icons.calculate),
              title: Text('MATEMATİK'),
            ),
            ListTile(
              leading: Icon(Icons.title),
              title: Text('TÜRKÇE'),
            ),
          ],
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              metin,
              style: TextStyle(fontSize: 20),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      RaisedButton(
                          color: Colors.blue[700],
                          child: Text(
                            "Sonraki Sayfa",
                            style: TextStyle(color: Colors.white),
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SecondRouter()));
                          }),
                      SizedBox(
                        width: 20,
                      ),
                      RaisedButton(
                          color: Colors.blue[700],
                          child: Text(
                            "Test Çöz",
                            style: TextStyle(color: Colors.white),
                          ),
                          onPressed: () {
                            Navigator.pushNamed(context, "/bilgitesti");
                          }),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class SecondRouter extends StatefulWidget {
  const SecondRouter({Key? key}) : super(key: key);

  @override
  _SecondRouterState createState() => _SecondRouterState();
}

class _SecondRouterState extends State<SecondRouter> {
  String metinA =
      "Bu notlar, Kunduz eğitmenimiz Fehmi Hoca tarafından hazırlandı. Fehmi Hoca, Van Cumhuriyet Anadolu Lisesi ve İzmir 9 Eylül Üniversitesi Biyoloji Öğretmenliği mezunu. Ege Ünivetistesi Zooloji, Yüzüncü Yıl Üniversitesi Fen Bilgisi Eğitimi alanında yüksek lisans yaptı. Halen Yüzüncü Yıl üniversitesinde Moleküler Biyoloji ve Genetik alanında yüksek lisans yapmaktadır.";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red[100],
      appBar: AppBar(
        backgroundColor: Colors.red[900],
        title: Text("BİYOLOJİ"),
        actions: [
          // appbarda children yerine kullanılıyor
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              "KONU: HORMONLAR  ",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              metinA,
              style: TextStyle(fontSize: 20),
            ),
            Padding(
              padding: const EdgeInsets.all(13.0),
              child: Wrap(
                children: [
                  RaisedButton(
                      color: Colors.red[900],
                      child: Text("Sonraki Sayfa",
                        style: TextStyle(
                          color: Colors.white,
                        ),),
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => ThirdRoute()));
                      }),
                  SizedBox(
                    width: 10,
                  ),
                  RaisedButton(
                      color: Colors.red[900],
                      child: Text("Geri Dön",
                        style: TextStyle(color: Colors.white),),
                      onPressed: () {
                        Navigator.pop(context);
                      }),
                  SizedBox(
                    width: 10,
                  ),
                  RaisedButton(
                      color: Colors.red[900],
                      child: Text("Ana Sayfaya Dön",
                        style: TextStyle(
                          color: Colors.white,
                        ),),
                      onPressed: () {
                        Navigator.popUntil(context, (route) => route.isFirst);
                      }),
                ],
              ),
            )
          ],
        ),
      ),

    );
  }
}

class ThirdRoute extends StatefulWidget {
  const ThirdRoute({Key? key}) : super(key: key);

  @override
  _ThirdRouteState createState() => _ThirdRouteState();
}

class _ThirdRouteState extends State<ThirdRoute> {
  String metinB="Endokrin Sistemi konusunda bolca soru çözerek pratik yapabilirsin. Endokrin Sistemi konusu, Biyoloji dersi için ilk ve temel konulardan biri olduğu için iyice pekiştirmen önemli. Hormonlar, Hormonal Bezler, Hormonların Taşınması, Antagonist Hormon, Kan Şekerinin Düzenlenmesi gibi alt başlıklar pek çok bilgi ve kavram içeriyor. Bu da daha çok soru tipini barındırdığı anlamına gelir. Bu konudan direkt soru gelebildiği gibi, farklı konuların da içinde sıkça geçtiğini görüyoruz. Ders Biyoloji olunca, bu kavramlar, her zaman karşımıza çıkabilir! TYT Biyoloji ve AYT Biyoloji testlerinde de sıklıkla sorulması tercih edilen konulardan biri.";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[100],
      appBar: AppBar(
      backgroundColor: Colors.green[900],
      title: Text("BİYOLOJİ"),
      actions: [
        // appbarda children yerine kullanılıyor
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text(
            "KONU: HORMONLAR  ",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
        ),
      ],
    ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              metinB,
              style: TextStyle(fontSize: 20),
            ),
            Padding(
              padding: const EdgeInsets.all(13.0),
              child: Wrap(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  RaisedButton(
                      color: Colors.green[400],
                      child: Text(
                        "Geri Dön",
                        style: TextStyle(color: Colors.white),
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      }),
                  SizedBox(
                    width: 10,
                  ),
                  RaisedButton(
                      color: Colors.green[400],
                      child: Text(
                        "Ana Sayfaya Dön",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      onPressed: () {
                        Navigator.popUntil(context, (route) => route.isFirst);
                      }),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
