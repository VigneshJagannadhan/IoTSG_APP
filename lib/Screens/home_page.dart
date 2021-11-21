import 'package:flutter/material.dart';
import '../Widgets/image_card.dart';

const PrimaryColor = Color(0xFF002125);
const SecondaryColor = Color(0xFF004A51);

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: PrimaryColor,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 40.0),
                child: Image.asset('images/logo.png',
                    width: MediaQuery.of(context).size.width / 2),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 3,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.white,
                    image: const DecorationImage(
                      image: AssetImage('images/imageOne.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Icon(Icons.account_circle,
                                  color: Colors.white),
                              TextButton(
                                child: Row(
                                  children: const [
                                    Text(
                                      'View your account',
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.blue),
                                    ),
                                    Icon(
                                      Icons.arrow_forward,
                                      color: Colors.blue,
                                    )
                                  ],
                                ),
                                onPressed: () {},
                              ),
                            ]),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: SizedBox(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                'Vignesh K',
                                style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                              Text(
                                'Consumer ID : 192D4FE5',
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w300,
                                    color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.75,
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.white,
                        ),
                        child: const Align(
                          alignment: Alignment.bottomCenter,
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            child: TextField(
                              decoration: InputDecoration(
                                  icon: Icon(Icons.search),
                                  hintText: 'Search',
                                  border: null),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        child: const Icon(
                          Icons.search,
                          color: Colors.white,
                        ),
                        width: MediaQuery.of(context).size.width * 0.12,
                        height: 50,
                        decoration: BoxDecoration(
                          color: SecondaryColor,
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                    ]),
              ),
              SizedBox(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.7,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5),
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width / 2,
                        child: Column(children: const [
                          Expanded(
                            flex: 3,
                            child: ImageCard(
                              text: 'Readings',
                              imageUrl: 'images/image1.jpg',
                            ),
                          ),
                          SizedBox(height: 10),
                          Expanded(
                            flex: 2,
                            child: ImageCard(
                              text: 'Pay bills',
                              imageUrl: 'images/bill.webp',
                            ),
                          ),
                          SizedBox(height: 10),
                          Expanded(
                            flex: 1,
                            child: ImageCard(
                              text: 'Contact us',
                              imageUrl: 'images/contact.jpg',
                            ),
                          ),
                        ]),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5),
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width / 2,
                        child: Column(children: const [
                          Expanded(
                            flex: 1,
                            child: ImageCard(
                              text: '',
                              imageUrl: 'images/contact.jpg',
                            ),
                          ),
                          SizedBox(height: 10),
                          Expanded(
                            flex: 2,
                            child: ImageCard(
                              text: '',
                              imageUrl: 'images/bill.webp',
                            ),
                          ),
                          SizedBox(height: 10),
                          Expanded(
                            flex: 3,
                            child: ImageCard(
                              text: 'Readings',
                              imageUrl: 'images/image1.jpg',
                            ),
                          ),
                        ]),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
