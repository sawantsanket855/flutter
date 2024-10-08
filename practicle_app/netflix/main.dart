import "package:flutter/material.dart";

void main(){
  runApp(const MyApp());
}

class MyApp extends StatefulWidget{
  const MyApp({super.key});
  @override
  State createState()=>_MyAppState();
}







class _MyAppState extends State{
  Widget rowImages(){
    return SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child:Row(children: [
            Column(children: [
          const SizedBox(height: 20,),
          SizedBox(
            height: 300,
            width:300,
            child:Image.network("https://th.bing.com/th/id/R.805fbe5d1f82c05ccd982fb37ec243d5?rik=jzE1UR2ah%2b8zpA&riu=http%3a%2f%2fimages2.fanpop.com%2fimages%2fphotos%2f8400000%2fMovie-Posters-movies-8405245-1224-1773.jpg&ehk=k87cjy7XpNwrPb49EzeBjqw44Wxff4qiNh8iim3NcRI%3d&risl=&pid=ImgRaw&r=0",
            fit:BoxFit.fill),
          ),
          const Text("movie 1"),]
          ),
          const SizedBox(width:20),
    Column(children: [
          const SizedBox(height: 20,),
          SizedBox(
            height: 300,
            width:300,
            child:Image.network("https://cdn.wallpapersafari.com/86/95/Idsx01.jpg",
            fit:BoxFit.fill),
          ),
          const Text("movie 2"),]
          ),
          const SizedBox(width:20),
    Column(children: [
          const SizedBox(height: 20,),
          SizedBox(
            height: 300,
            width:300,
            child:Image.network("https://wallpapercave.com/wp/wp7490940.jpg",
            fit:BoxFit.fill),
          ),
          const Text("movie 3"),]
          ),
          const SizedBox(width:20),
    Column(children: [
          const SizedBox(height: 20,),
          SizedBox(
            height: 300,
            width:250,
            child:Image.network("https://mir-s3-cdn-cf.behance.net/project_modules/1400/e5865358516595.59ffa0a2671f5.jpg",
            fit:BoxFit.fill),
          ),
          const Text("movie 4"),]
          ),
    
          ],),
        );
  }
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home:Scaffold(
        appBar: AppBar(title:const Text("NetFlix"),
        centerTitle: true,
        backgroundColor:Colors.blue,
        ),
        body:ListView.builder(
          shrinkWrap:true,
          itemCount: 5,
          itemBuilder:(BuildContext context,int index){
            return rowImages();},
            scrollDirection: Axis.vertical,
          
          


      ),
      ),
    );
  }
}