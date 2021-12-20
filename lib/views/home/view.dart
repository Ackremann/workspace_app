import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  HomeView({Key? key}) : super(key: key);

  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              children: [
                Container(
                  height: 200,
                  decoration: BoxDecoration(color: Colors.deepPurple),
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Column(
                    children: const [
                      ListTile(
                        leading: Icon(
                          Icons.location_on_outlined,
                          color: Colors.white,
                        ),
                        title: Text(
                          'NewYork',
                          style: TextStyle(
                            color: Colors.white,
                            // fontSize: 30,
                          ),
                        ),
                        subtitle: Text(
                          'Current Location',
                          style: TextStyle(
                            color: Colors.white,
                            // fontSize: 30,
                          ),
                        ),
                        trailing: Icon(
                          Icons.bus_alert,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 20),
                      ListTile(
                        title: Text(
                          'Hellow Kalorina',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                          ),
                        ),
                        subtitle: Text(
                          'Let\'s Find Perfect Co-Working Space',
                          style: TextStyle(
                            color: Colors.white,
                            // fontSize: 20,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 50),
                Row(
                  children: const [
                    SizedBox(width: 20),
                    Text(
                      'Space Avilable In City',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Positioned(
              height: 50,
              width: 350,
              top: 170,
              child:
                  SearchInput(textController: controller, hintText: 'hintText'),
            ),
          ],
        ),
      ),
    );
  }
}

class SearchInput extends StatelessWidget {
  final TextEditingController textController;
  final String hintText;
  const SearchInput(
      {required this.textController, required this.hintText, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: TextField(
        controller: textController,
        onChanged: (value) {
          //Do something wi
        },
        decoration: InputDecoration(
          prefixIcon: const Icon(
            Icons.search,
            color: Color(0xff4338CA),
          ),
          filled: true,
          fillColor: Colors.grey.shade200,
          hintText: hintText,
          hintStyle: const TextStyle(color: Colors.grey),
          contentPadding:
              const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(15.0)),
          ),
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white, width: 1.0),
            borderRadius: BorderRadius.all(Radius.circular(15.0)),
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white, width: 2.0),
            borderRadius: BorderRadius.all(Radius.circular(15.0)),
          ),
        ),
      ),
    );
  }
}
