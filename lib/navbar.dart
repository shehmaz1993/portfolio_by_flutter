
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class NavBar extends StatelessWidget {

  @override
  Widget build(BuildContext context){
    return LayoutBuilder(
      builder:(context,constraint) {
        if (constraint.maxWidth > 1200) {
          return DextopNavbar();
        }
        else if (constraint.maxWidth > 800 && constraint.maxWidth <= 1200) {
          return DextopNavbar();
        }
        else {
          return MobileDextop();
        }
      },
    );

  }
}
class DextopNavbar extends  StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 40),
      child: Container(
        // constraints: BoxConstraints(maxWidth: 1200) ,
         child:Row(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children: [
             Text(
               "Antik Portal Studio",
               style: TextStyle(color: Colors.white,fontSize: 30,fontWeight:FontWeight.bold),

             ),
             Row(

               children: [
                 Text(
                   "Home",

                   style: TextStyle(color: Colors.white),
                 ),
                 SizedBox( width: 30,),
                 Text(
                   "About Us",
                   style: TextStyle(color: Colors.white),
                 ),
                 SizedBox( width: 30,),
                 Text(
                   "Portfolio",
                   style: TextStyle(color: Colors.white),
                 ),
                 SizedBox( width: 30,),
                 MaterialButton(
                   color: Colors.pink,
                   shape: RoundedRectangleBorder(
                     borderRadius: BorderRadius.all(Radius.circular(20.0)),
                   ),
                   child: Text(
                     "Get Started",
                     style: TextStyle(color: Colors.white),
                   ),
                   onPressed: (){},
                 )
               ],
             )
           ],
         )
      ),
    );

  }
}
class MobileDextop extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
         return Padding(
          padding:  const EdgeInsets.symmetric(vertical: 20,horizontal: 40),
           child: Container(
             child:Column(

             children:<Widget> [
             Text(
             "Antik Portal Studio",
             style: TextStyle(color: Colors.white,fontSize: 30,fontWeight:FontWeight.bold),

           ),
             Padding(
               padding: const EdgeInsets.all(12.0),
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                       children: [
                              Text(
                                 "Home",
                                style: TextStyle(color: Colors.white),
                              ),
                         SizedBox( width: 30,),
                         Text(
                           "About Us",
                           style: TextStyle(color: Colors.white),
                         ),
                         SizedBox( width: 30,),
                         Text(
                           "Portfolio",
                           style: TextStyle(color: Colors.white),
                         ),
                         SizedBox( width: 30,),
                         MaterialButton(
                           color: Colors.pink,
                           shape: RoundedRectangleBorder(
                             borderRadius: BorderRadius.all(Radius.circular(20.0)),
                           ),
                           child: Text(
                             "Get Started",
                             style: TextStyle(color: Colors.white),
                           ),
                           onPressed: (){},
                         )

                       ],
                          ),
             ) ,
           ]
           )
    ),
         );
  }

}

