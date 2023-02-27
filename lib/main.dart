import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyCars(),
  ));
}

class MyCars extends StatefulWidget {
  const MyCars({super.key});

  @override
  State<MyCars> createState() => _MyCarsState();
}

class _MyCarsState extends State<MyCars> {
  TextEditingController _controller = TextEditingController();
  List name = [
    'Nexia',
    'Damas',
    'Cobalt',
    'Lacetti',
    'Captiva',
    'Gentra',
    'Malibu',
    'Trecker',
    'Matiz',
    'Spark'
  ];
  List image = [
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSqJLN_8VRAkzim6T2c44wajwVs50fHqL6uvA&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRA88q9xQnSgrDSyUObUC9H3Jnwo_xiDunTCg&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR49v-UFtg229DiqLQObQqqzFtA_fUyjlmScw&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT79ii8c3LgjRCPumpjH-f5lZ2X2I8J7C_b1g&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTlSenzgg58tePSuJSgZC76I4blKscqyG7TNA&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcREiAWKNBYIoc5-j088lxWP__DNI-ApcAXSaA&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTBd-8TR6swRyrEWcqIFitFMb81xxn7L_YQbg&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTFZgFFtm9Fx1bz1tUIo0AXNrCbt6Ojb2jqbQ&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcShMXVWldRn8BcqAx8AUnN40BrbpqiXbORZzg&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSPiTLoBzolJ_sJO3-NGtZfDZWvJ6j_Sc-BNQ&usqp=CAU',
  ];
  int s = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        SizedBox(
          height: 100,
        ),
        Container(
            height: 100,
            child: TextField(
              decoration: InputDecoration(border: OutlineInputBorder()),
              onSubmitted: (value) {
                for (int i = 0; i < name.length; i++) {
                  if (name[i].toLowerCase() == _controller.text.toLowerCase()) {
                    setState(() {
                      s = i;
                    });
                    break;
                  } else {
                    setState(() {
                      s = -1;
                    });
                  }
                }
              },
              controller: _controller,
            )),
        s != -1
            ? Container(
                child: Image.network(image[s]),
              )
            : Center(
                child: Text('Sorry not found chek your search!!'),
              )
      ],
    ));
  }
}
