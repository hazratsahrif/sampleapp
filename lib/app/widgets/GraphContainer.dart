import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sampleapp/app/constant/colors.dart';

class GraphContainor extends StatelessWidget {
  const GraphContainor({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Container(
          padding: EdgeInsets.all(9),

          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              boxShadow: [BoxShadow(
                  color: Colors.black,
                  blurRadius: 5,
                  spreadRadius: 1
              ),
              ],

              color: MyColor.dark_blue,
              borderRadius: BorderRadius.circular(12),
              shape: BoxShape.rectangle
          ),

          child: Column(
              children: [
                Text("Tata Motors Limoted", style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white
                ),
                ),
                Flex(
                  direction: Axis.horizontal,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Flexible(

                      child: Text("-28.89", style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white
                      ),
                      ),
                    ),
                    Image.asset('assets/grapgh.png',
                      height: 74,
                      fit: BoxFit.cover,


                    ),
                    Flexible(

                      child: Text("+29.89", style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white
                      ),
                      ),
                    ),
                  ],
                ),


              ]

          )
      ),
    );
  }
}