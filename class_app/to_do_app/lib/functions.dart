
import "package:flutter/material.dart";


bool isError = false;
List<Map> myList=[];
DateTime dateTime1=DateTime(2023);
TextEditingController titleController =TextEditingController();
TextEditingController descriptionController =TextEditingController();
TextEditingController dateController =TextEditingController();


//get image
Widget getImage(String text){
  Map count={};
  List words=text.split(" ");
  for(int i=0;i<words.length;i++){
    if(words[i]=='birthday'){return Image.asset("assets/birthday.jpeg");}
    if(words[i]=='flutter'){count['flutter']=1;}
    if(words[i]=='dart'){count['dart']=1;}
    if(words[i]=='c'){count['c']=1;}
    if(words[i]=='cpp'){count['cpp']=1;}
    if(words[i]=='python'){count['python']=1;}
    if(words[i]=='java'){count['java']=1;}
  }

if(count.keys.length==1){
  if(count['flutter']!=null){ return Image.asset("assets/flutter.jpeg");}
  else if (count['dart']!=null){ return Image.asset("assets/dart.jpeg");}
  else if(count['c']!=null){ return Image.asset("assets/c.jpeg");}
  else if(count['cpp']!=null){ return Image.asset("assets/cpp.jpeg");}
  else if(count['python']!=null){ return Image.asset("assets/python.jpeg");}
  else{return Image.asset("assets/java.jpeg");}
}
else if(count.keys.length>1){
  return Image.asset("assets/coding.jpeg");
}
else{return  const Icon(
                       Icons.image_rounded,
                       color: Color.fromARGB(255, 199, 199, 199),
                       );}

}



//give color to cards

 Color giveColor(int index){
    if(index%4==0){
      return const Color.fromRGBO(250,232,232,1);
    }else if(index%4==1){
      return const Color.fromRGBO(232,237,250,1);
    }else if(index%4==2){
      return const Color.fromRGBO(250,249,232,1);
    }else{
      return const Color.fromRGBO(250,232,250,1);
    }
  }



  //submit data


  

  
 