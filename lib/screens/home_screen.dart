import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';
import 'package:sizer/sizer.dart';
import 'package:google_fonts/google_fonts.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: Drawer(),
      appBar: AppBar(
        elevation: 0.0,
        centerTitle: true,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(
          size: 33,
          color: Colors.black
        ),
        title: Row(
          children: [
            Container(
                height: 4.5.h,
                width: 4.5.h,
                child: Image.asset('assets/images/fp.png')),
            SizedBox(width: 5.w,),
            Text('Feras',
              style: GoogleFonts.sriracha(
                fontSize: 22.sp,
                fontWeight: FontWeight.bold,
                shadows:[
                  Shadow(
                    offset: Offset(-1.5, -1.5),
                    blurRadius: 3.0,
                    color: Color.fromARGB(255, 0, 0, 0),
                  ),
                ] ,
                  color: Color(0xff4EFFFE),
              ),
              ),
            SizedBox(width: 1.w,),
            Text('Pay',
              style: GoogleFonts.sriracha(
                fontSize: 22.sp,
                fontWeight: FontWeight.bold,
                shadows:[
                  Shadow(
                    offset: Offset(-1.5, -1.5),
                    blurRadius: 3.0,
                    color: Color.fromARGB(255, 0, 0, 0),
                  ),
                ] ,
                color: Color(0xff04A8FE),
              ),
            )
          ],
        ),
        actions:  [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 3.w),
            child: IconButton(
              onPressed: (){},
             icon:  Icon(Icons.notifications_outlined,color: Colors.grey,size: 33,
             ),
          ),
          )
        ],

      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 4.h,),
          Center(
            child: Column(
              children: [
                Text('Good Morning',
                style: TextStyle(
                  fontSize: 17.sp,
                  color: Color(0xffDD1AFD),
                ),
                ),
                SizedBox(height: 1.h,),
                Text('Hussnain Akbbar',
                  style: TextStyle(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 5.h,),
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: 9.w),
            child: OutlineGradientButton(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 16.h,
                    width: 38.w,
                    child: Column(
                      children: [
                        SizedBox(height: 1.5.h,),
                       Image.asset('assets/icons/united-states.png'),
                        SizedBox(height: 1.h,),
                        Text('USD Balance',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15.sp
                        ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 10.h,
                    width: 0.3.w,
                    color: Colors.black,
                  ),
                  Container(
                    height: 16.h,
                    width: 35.w,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding:  EdgeInsets.only(left: 10.0.h),
                          child: IconButton(
                              onPressed: (){},
                              icon: Icon(Icons.more_vert,size: 18,color: Colors.grey,)
                          ),
                        ),
                        SizedBox(height: 1.h,),
                        Text('156.31  USD',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 16.sp,
                        ),
                        ),
                      ],
                    ),
                  ),

                ],
              ),
              gradient: LinearGradient(colors: const [Color(0xffDD1AFD), Color(0xffF5BBFE)]),
              strokeWidth: 14,

            ),
          ),
          SizedBox(height: 20.h,),
          InkWell(
            onTap: (){},
            child: OutlineGradientButton(
              child: Text('Add Money', style: TextStyle(color: Colors.white, fontSize: 12.sp,fontWeight: FontWeight.bold)),
              gradient: LinearGradient(colors: [Color(0xffAB00C7), Color(0xffAB00C7)]),
              strokeWidth: 2,
              padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
              radius: Radius.circular(15),
              backgroundColor: Color(0xffDD1AFD),
              elevation: 10,
            ),
          ),
          SizedBox(height: 4.h,),
          InkWell(
            onTap: (){},
            child: OutlineGradientButton(
              child: Text('Get Emergency Support', style: TextStyle(color: Colors.white, fontSize: 12.sp,fontWeight: FontWeight.bold)),
              gradient: LinearGradient(colors: [Color(0xffAB00C7), Color(0xffAB00C7)]),
              strokeWidth: 2,
              padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
              radius: Radius.circular(15),
              backgroundColor: Color(0xffDD1AFD),
              elevation: 10,
            ),
          ),
        ],
      ),
    );
  }
}
