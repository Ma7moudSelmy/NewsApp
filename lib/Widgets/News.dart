import 'package:flutter/material.dart';

class News extends StatelessWidget {
  const News({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset("assets/download.jpeg"),
        ),
        Text(
          "بيان عاجل للزراعة بعد رصد حالات مصابة بالحمى القلاعية في بعض الدول",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),

        Padding(
          padding: const EdgeInsets.all(50),
          child: Image.asset("assets/download (1).jpeg"),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 30,),
          child: Text(
            "عاجل هي صحيفة إلكترونية سعودية، تأسست في عام 2007، حاصلة على ترخيص من وزارة الثقافة والإعلام السعودية، وحلت صحيفة عاجل الإلكترونية في المركز الثاني بين المواقع الإخبارية السعودية من حيث عدد الزيارة بحسب إحصاء الموقع العالمي أليكسا المتخصص في إحصائيات وترتيب مواقع الإنترنت.",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(60),
          child: Image.asset("assets/2025_6_9_15_36_19_32.jpg"),
        ),
        Padding(
          padding: const EdgeInsets.only(left:30 ),
          child: Text(
            "مواقع التواصل الاجتماعي قد تداولت خلال الأيام الماضية صورًا ومقاطع توثق وجود 3 أطفال بلا مأوى، يفترشون مدخل عمارة سكنية، في مشهد مؤلم أثار تعاطف المواطنين واستياءهممحافظ بورسعيد يوجه بالتحرك العاجل لإنقاذ 3 أطفال بلا مأوى",
            style: TextStyle(
              fontWeight: FontWeight.bold
            ),
          ),
        ),
        Text("Ma7moudSelmy"
        ,style: TextStyle(fontSize: 20
       , color: Colors.orange
        ,fontWeight: FontWeight.bold),)
      ],
    );
  }
}
class News1 extends StatelessWidget {
  const News1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const BouncingScrollPhysics(),
      itemCount: 10,
      itemBuilder: (context, index) {
      return News(
      );
    }
    );
  }
}
