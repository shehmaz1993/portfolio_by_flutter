import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class LandingPage extends StatelessWidget {


  List<Widget>pageChildren(double width){
    return <Widget>[
        Container(
          width: width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "WebSite \nDevelopers",
                style:TextStyle(fontSize: 40,fontWeight: FontWeight.bold,color: Colors.white) ,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20.0),
                child: Text(
                  "we have taken each and every single project handed over to us as a challlenge,which has helped us to achieve a high project success rate",
                  style: TextStyle(color: Colors.white,fontSize: 16),
                ),
              ),

                 MaterialButton(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  ),
                  child:Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20.0,horizontal: 40.0),
                    child: Text(
                      "Our Packages",
                      style: TextStyle(color: Colors.red),
                    ),
                  ),
                  onPressed: (){},
                ),



            ],
          ),

        ),

      Padding(
        padding: EdgeInsets.only(bottom: 100),
        child: Image.asset("assets/images/hp.jpg",width: width,),
      ),


    ];

  }



  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (context,constraints){
          if(constraints.maxWidth>800){
            return Row(
              mainAxisAlignment:MainAxisAlignment.center,
              children: pageChildren(constraints.biggest.width/2),

            );
            }
            else
              return Column(
                children: pageChildren(constraints.biggest.width),
              );
          }


    );
  }
}

