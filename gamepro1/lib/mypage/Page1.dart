// import 'package:division/division.dart';
import 'package:flutter/material.dart';
// import 'package:gamepro1/style/style.dart';

class Page1 extends StatefulWidget {
  @override
  _Page1State createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: Container(
            // color: Colors.amber,
            child: IconButton(
              icon: Icon(Icons.format_align_left, color: Colors.black45),
              onPressed: () {},
            ),
          ),
          title: Container(
              // color: Colors.red,
              height: 37,
              child: TextFormField(
                // keyboardType: TextInputType.number,
                maxLength: 100,
                textAlign: TextAlign.left,
                autofocus: false,

                initialValue: '',
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    hintText: 'Cari Top UP, Diamonds, Skin...',
                    hintStyle: TextStyle(fontSize: 15),
                    counterText: "",
                    contentPadding: EdgeInsets.fromLTRB(20.0, 5.0, 20.0, 12.0),
                    // contentPadding: EdgeInsets.fromLTRB(left, top, right, bottom),

                    border: new OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                      borderSide: const BorderSide(color: Colors.black45),
                    ),
                    focusedBorder: const OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Colors.black45,
                      ),
                    ),
                    enabledBorder: new OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                        borderSide: const BorderSide(color: Colors.black45))),
              )),
          actions: <Widget>[
            Container(
                // color: Colors.yellow,
                child: IconButton(
                    icon: Icon(
                      Icons.shopping_cart_sharp,
                      color: Colors.black45,
                    ),
                    onPressed: () {}))
          ],
        ),
        body: GestureDetector(
          onTap: () {
            // call this method here to hide soft keyboard
            FocusScope.of(context).requestFocus(new FocusNode());
          },
          child: ListView(
            children: <Widget>[


              Container(
                color: Colors.black,
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height/4,
                child: ListView.builder(
                scrollDirection: Axis.horizontal,
                
                itemCount: 3,
                itemBuilder: (contex,index){
                  return Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                    color: Colors.blue,
                    margin: EdgeInsets.only(bottom: 5, top: 5),
                    child: Card(
                      // margin: EdgeInsets.all(10),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0)
                      ),
                     
                      child: Container(
                        
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS54mR67CKxDd4yaCerGhZsyETOsmTiZak31Q&usqp=CAU"),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.circular(10)
                        ),
                      ),),
                  );
                }),
              ),


              Container(
                  color: Colors.black26,
                  // height: 100,
                  height: MediaQuery.of(context).size.height/6,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    
                    children: <Widget>[

                      Container(
                        width: MediaQuery.of(context).size.width * 0.2,
                        // height: 100,
                        color: Colors.red,
                        
                        child: Column(
                          children: <Widget>[
                            Card(
                              
                               shape: RoundedRectangleBorder(
                               borderRadius: BorderRadius.circular(15.0),),
                              child: Container(
                                padding: EdgeInsets.all(7),
                                
                                child: InkWell(
                                  onTap: (){
                                    print(MediaQuery.of(context).size.width);
                                  },
                                  child: Image(
                                    image: NetworkImage(
                                        "https://demo-app.liaonlinepalembang.com/images/icon/voucher.png"),
                                        width: MediaQuery.of(context).size.width*0.1,
                                  ),
                                ),
                              ),
                            ),
                            Text("Voucher")
                          ],
                        ),
                      ),

                      Container(
                        width: MediaQuery.of(context).size.width * 0.2,
                        // height: 100,
                        color: Colors.red,
                        child: Column(
                          children: <Widget>[
                            Card(
                               shape: RoundedRectangleBorder(
                               borderRadius: BorderRadius.circular(15.0),),
                              child: Container(
                                padding: EdgeInsets.all(7),
                                child: Image(
                                  image: NetworkImage(
                                      "https://demo-app.liaonlinepalembang.com/images/icon/topup.png"),
                                      width: MediaQuery.of(context).size.width*0.1,
                                ),
                              ),
                            ),
                            Text("Voucher")
                          ],
                        ),
                      ),

                      Container(
                        width: MediaQuery.of(context).size.width * 0.2,
                        // height: 100,
                        color: Colors.red,
                        child: Column(
                          children: <Widget>[
                            Card(
                               shape: RoundedRectangleBorder(
                               borderRadius: BorderRadius.circular(15.0),),
                              child: Container(
                                padding: EdgeInsets.all(7),
                                child: Image(
                                  image: NetworkImage(
                                      "https://demo-app.liaonlinepalembang.com/images/icon/pc.png"),
                                      width: MediaQuery.of(context).size.width*0.1,
                                ),
                              ),
                            ),
                            Text("Top Up")
                          ],
                        ),
                      ),

                      Container(
                        width: MediaQuery.of(context).size.width * 0.2,
                        // height: 100,
                        color: Colors.red,
                        child: Column(
                          children: <Widget>[
                            Card(
                               shape: RoundedRectangleBorder(
                               borderRadius: BorderRadius.circular(15.0),),
                              child: Container(
                                padding: EdgeInsets.all(7),
                                child: Image(
                                  image: NetworkImage(
                                      "https://demo-app.liaonlinepalembang.com/images/icon/flash.png"),
                                      width: MediaQuery.of(context).size.width*0.1,
                                ),
                              ),
                            ),
                            Text("PC Game")
                          ],
                        ),
                      ),

                      Container(
                        width: MediaQuery.of(context).size.width * 0.2,
                        // height: 100,
                        color: Colors.red,
                        child: Column(
                          children: <Widget>[
                            Card(
                              //  margin: EdgeInsets.only(top:8),
                               shape: RoundedRectangleBorder(
                            
                               borderRadius: BorderRadius.circular(15.0),),
                              child: Container(
                                padding: EdgeInsets.all(13),
                                
                                // child: Image(
                                //   image: NetworkImage(
                                //       "https://demo-app.liaonlinepalembang.com/images/icon/voucher.png"),
                                //       width: MediaQuery.of(context).size.width*0.1,
                                // ),

                                child: Icon(Icons.arrow_forward_ios_outlined),
                              ),
                            ),
                            Container(
                              // margin: EdgeInsets.only(top: 3),
                              child: Text("Tampilkan Semua",textAlign:TextAlign.center,),)
                          ],
                        ),
                      ),

                     
                    ],
                  )
                  ),
              Container(
                
                
                child: Column(
                  children:<Widget> [
                    Row(
                      children:<Widget> [
                        Container(
                          width: MediaQuery.of(context).size.width/2,
                          height: MediaQuery.of(context).size.height/3,
                          color: Colors.blue,
                          child: Card(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children:<Widget> [

                                Container(
                                  width: MediaQuery.of(context).size.width,
                                  height:MediaQuery.of(context).size.width*0.4,
                                  // margin: EdgeInsets.only(right: 20,left: 20  ),
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTMTtWKA8wyq7E2rVCvQ4H88JNQFypJ8my3-A&usqp=CAU"),
                                      fit: BoxFit.cover
                                    )
                                  ),
                                ),

                                Container(
                                  child: Column(
                                    children:<Widget> [
                                      Text("FREE FIRE M Top Up UC"),
                                      Text("Rp570.000")
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),


                         Container(
                          width: MediaQuery.of(context).size.width/2,
                          height: MediaQuery.of(context).size.height/3,
                          color: Colors.blue,
                          child: Card(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children:<Widget> [

                                Container(
                                  width: MediaQuery.of(context).size.width,
                                  height:MediaQuery.of(context).size.width*0.4,
                                  // margin: EdgeInsets.only(right: 20,left: 20  ),
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTMTtWKA8wyq7E2rVCvQ4H88JNQFypJ8my3-A&usqp=CAU"),
                                      fit: BoxFit.cover
                                    )
                                  ),
                                ),

                                Container(
                                  child: Column(
                                    children:<Widget> [
                                      Text("FREE FIRE M Top Up UC"),
                                      Text("Rp570.000")
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        //  Container(
                        //   width: MediaQuery.of(context).size.width/2,
                        //   height: MediaQuery.of(context).size.height/4,
                        //   color: Colors.black,
                        // )
                      ],
                    ),





                    // row kedua 

                     Row(
                      children:<Widget> [
                        Container(
                          width: MediaQuery.of(context).size.width/2,
                          height: MediaQuery.of(context).size.height/3,
                          color: Colors.blue,
                          child: Card(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children:<Widget> [

                                Container(
                                  width: MediaQuery.of(context).size.width,
                                  height:MediaQuery.of(context).size.width*0.4,
                                  // margin: EdgeInsets.only(right: 20,left: 20  ),
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTMTtWKA8wyq7E2rVCvQ4H88JNQFypJ8my3-A&usqp=CAU"),
                                      fit: BoxFit.cover
                                    )
                                  ),
                                ),

                                Container(
                                  child: Column(
                                    children:<Widget> [
                                      Text("FREE FIRE M Top Up UC"),
                                      Text("Rp570.000")
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),


                         Container(
                          width: MediaQuery.of(context).size.width/2,
                          height: MediaQuery.of(context).size.height/3,
                          color: Colors.blue,
                          child: Card(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children:<Widget> [

                                Container(
                                  width: MediaQuery.of(context).size.width,
                                  height:MediaQuery.of(context).size.width*0.4,
                                  // margin: EdgeInsets.only(right: 20,left: 20  ),
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTMTtWKA8wyq7E2rVCvQ4H88JNQFypJ8my3-A&usqp=CAU"),
                                      fit: BoxFit.cover
                                    )
                                  ),
                                ),

                                Container(
                                  child: Column(
                                    children:<Widget> [
                                      Text("FREE FIRE M Top Up UC"),
                                      Text("Rp570.000")
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        //  Container(
                        //   width: MediaQuery.of(context).size.width/2,
                        //   height: MediaQuery.of(context).size.height/4,
                        //   color: Colors.black,
                        // )
                      ],
                    )


                  




                  ],
                ),
                
              )
            ],
          ),
        ));
  }
}
