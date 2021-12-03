// ignore_for_file: unnecessary_const

import 'package:flutter/material.dart';
class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({ Key? key }) : super(key: key);

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
        child: Scaffold(
          body: Container(
            color: Colors.black,
            child: Stack(
             fit: StackFit.expand,
              children:  [
                
                Positioned(
                  top: 0,
                  child: Container(
                    color: Colors.red,
                    width: size.width*1,
                  //  height: size.height*0.35,
                    child: const Image(
                      image: AssetImage('images/hotel1.jpg'),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: const BorderRadius.only(
                        topLeft: const Radius.circular(40.0),
                         topRight: const Radius.circular(40.0),
                      )
                    ),
                   // color: Colors.blue,
                    width: size.width*1,
                    height: size.height*0.65,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 40.0, left: 40.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children:[
                              const Text('Events',style: TextStyle(
                               color: Colors.blue
                             ),
                             ),
                             
                            const SizedBox(height: 5.0,),
                             
                             const Text('National Health',
                             style: TextStyle(
                               fontSize: 22,
                             ),
                             ),
                             const SizedBox(height: 5.0,), 
                             const Text('Movement',
                             style: TextStyle(
                               fontSize: 22,
                             ),
                             ),
                             const SizedBox(height: 25.0,),
                             Row(
                               crossAxisAlignment: CrossAxisAlignment.center,
                               children:  [
                                 const Text('By the Commonwealth Club'),
                                 SizedBox(width: size.width*0.1,),
                                 Container(
                                   decoration: const BoxDecoration(
                                     color: Color(0xFFDEE5F2),
                                     borderRadius:const BorderRadius.all(Radius.circular(8.0),),
                                   ),
                                   width: size.width*0.25,
                                   height: size.height*0.07,
                                   child: const Center(child: const Text('Follow',style: TextStyle(
                                     color: Colors.blue
                                   ),
                                   )
                                   ,),
                                 ),
                               ],
                             ),
                            const SizedBox(height: 15.0,),
                            const Text('24 people are going',style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                            ),
                            const SizedBox(height: 10.0,),
                            Row(
                              children: [
                                imageclip(size: size),
                                const SizedBox(width: 10.0,),
                                imageclip(size: size),
                                const SizedBox(width: 10.0,),
                                imageclip(size: size),
                                const SizedBox(width: 10.0,),
                                Container(
                                  width: size.width*0.15,
                                  height: size.height*0.06,
                                  decoration: const BoxDecoration(
                                    borderRadius: const BorderRadius.all(Radius.circular(8.0),),
                                    color: Color(0xFF586EF5),
                                  ),
                                  child: const Center(child: Text('+ 3',style: TextStyle(
                                    color: Colors.white
                                  ),),),
                                ),
                              ],
                            ),
                            const SizedBox(height: 10.0,),
                            Row(
                              children: const [
                                 Icon(Icons.calendar_today),
                                 SizedBox(width: 10.0,),
                                 Text('Thursday, 6 Feb 2020',style: TextStyle(
                                   fontSize: 17.0,
                                   fontWeight: FontWeight.bold
                                 ),
                                 ),

                              ],
                            ),
                           
                            ],
                          ),
                        ),
                        const SizedBox(height: 13.0,),
                         Container(
                              width: size.width*1,
                              height: size.height*0.15,
                              decoration:const BoxDecoration(
                                color: Color(0xFFEDF0F5),
                                borderRadius: BorderRadius.all(Radius.circular(16.0),),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(left: 40.0),
                                child: Row(
                                  children:[
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: const [
                                        Text(r'US$29',style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold
                                        ),
                                        ),
                                        const SizedBox(height: 5.0,),
                                        Text('Ticket per Person',style: TextStyle(
                                          color: Color(0xFFCFCFDB),
                                        ),),
                                      ],
                                    ),
                                    const SizedBox(width: 100.0,),
                                    Row(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [

                                        Container(
                                          width: size.width*0.25,
                                          height: size.height*0.07,
                                          decoration: const BoxDecoration(
                                          color: Color(0xFF586EF5),
                                          borderRadius:const BorderRadius.all(Radius.circular(8.0),
                                          ),
                                     ),
                                     child: const Center(child: Text('Purchase',style: TextStyle(
                                       color: Colors.white
                                     ),
                                     ),
                                     ),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                            
                      ],     
                    ),
                ),
                ),
                
              ],
            ),
          ),
        ),
      );
  }
}

class imageclip extends StatelessWidget {
  const imageclip({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width*0.15,
        height: size.height*0.06,
        decoration: const BoxDecoration(
         // borderRadius: BorderRadius.all(Radius.circular(20.0))
        ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8.0),
        child: Image.asset('images/hotel1.jpg',
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}