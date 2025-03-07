import "package:flutter/material.dart";

class Categogies extends StatefulWidget {
  const Categogies({super.key});

  @override
  State<Categogies> createState() => _CategogiesState();
}

class _CategogiesState extends State<Categogies> {
  List data=[
    {"name":"category1","image":"assets/flash.png"},
    {"name":"category2","image":"assets/flash.png"},
    {"name":"category3","image":"assets/flash.png"},
    {"name":"category4","image":"assets/flash.png"},
    {"name":"category5","image":"assets/flash.png"},
    {"name":"category6","image":"assets/flash.png"},
    {"name":"category7","image":"assets/flash.png"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          // mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(height: 55),
            Row(
              children: [
                Builder(
                  builder: (context) {
                    return GestureDetector(
                      onTap: () {
                        Scaffold.of(context).openDrawer();
                      },
                      child: Container(
                        margin: EdgeInsets.only(left: 11, right: 22),
                        height: 24,
                        width: 24,
                        child: const Icon(
                          Icons.menu,
                          // color: Colors.white,
                          size: 23,
                        ),
                      ),
                    );
                  },
                ),
        
                const Text(
                  "Categories",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    fontFamily: "Poppins",
                  ),
                ),
              ],
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height:data.length*240/2,
              child: GridView.builder(
                physics: NeverScrollableScrollPhysics(),
                itemCount: data.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: (MediaQuery.of(context).size.width-290)/3,
                      crossAxisSpacing: (MediaQuery.of(context).size.width-290)/3,
                      childAspectRatio: 1.2,
                    ),
                 itemBuilder:(context,index){
                  return Container(
                    alignment: index%2==1?Alignment.centerLeft:Alignment.centerRight,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14),
                        boxShadow: [
                          BoxShadow(
                            color: const Color.fromARGB(255, 223, 223, 223),
                            blurRadius: 5,
                            spreadRadius: 2,
                            offset: Offset(0, 5),
                          ),
                          BoxShadow(
                            color: Colors.white,
                          )
                        ],
                      ),
                      height: 150,
                      width: 145,
                      child: Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(bottom: 15,top:19),
                            clipBehavior: Clip.antiAlias,
                            height: 80,
                            width: 80,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                            ),
                            child: Image.asset(data[index]["image"],fit: BoxFit.cover,)),
                          Text(data[index]["name"],
                          style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    fontFamily: "Poppins",
                  ),
                          ),
                        ],
                      ),
                    ),
                  );
                 }
                ),
            ),
           
          ],
        ),
      ),
    );
  }
}
