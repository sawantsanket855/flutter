import "package:flutter/material.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  State createState() => _MyAppState();
}

class _MyAppState extends State {
  int count = 1;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            title: const Text(
              "Shoes",
              style: TextStyle(
                color: Colors.blue,
              ),
            ),
            actions: const [
              Icon(
                Icons.shopping_cart,
                color: Colors.blue,
              )
            ]),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 400,
              // width:500,
              color: Colors.blue,
              child: Image.network(
                "https://app.vectary.com/website_assets/636cc9840038712edca597df/636cc9840038713d9aa59ac2_UV_hero.jpg",
                fit: BoxFit.cover,
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 15),
              margin: const EdgeInsets.all(15),
              child: const Text(
                "Nike Air Force 1\"07",
                style: TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 15),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      backgroundColor: WidgetStateProperty.all(Colors.blue),
                    ),
                    child: const Text(
                      "SHOES",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    backgroundColor: WidgetStateProperty.all(Colors.blue),
                  ),
                  child: const Text(
                    "FOOTWEAR",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.all(15),
              child: SizedBox(
                child: Text(
                    "With iconic style and legendary confort,the Af-1 was made to be worm on repeat. This iteration puts a fresh spin on the hoopsclassic with crisp leather, eraechoing '80s construction and reflective-design Swoosh logos."),
              ),
            ),
            Row(
              children: [
                const SizedBox(width: 15),
                const Text(
                  "Quantity",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(width: 15),
                GestureDetector(
                    onTap: () {
                      if (count >= 2) {
                        count--;
                        setState(() {});
                      }
                    },
                    child: const Icon(Icons.remove)),
                const SizedBox(width: 15),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  decoration: BoxDecoration(
                      border: Border.all(width: 1, color: Colors.grey)),
                  child: Text("$count",
                      style: const TextStyle(fontWeight: FontWeight.bold)),
                ),
                const SizedBox(width: 15),
                GestureDetector(
                    onTap: () {
                      count++;
                      setState(() {});
                    },
                    child: const Icon(Icons.add)),
              ],
            ),
            const SizedBox(height: 20),
            
            Padding(
              padding: const EdgeInsets.only(left:20),
              child: SizedBox(
                height: 50,
                width: 370,
                child: ElevatedButton(
                  onPressed: () {},
                  style: const ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(Colors.blue),
                  ),
                  child: const Text(
                    "PURCHASE",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
