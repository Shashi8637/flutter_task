import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextStyle view = GoogleFonts.lora(
    fontWeight:FontWeight.w400 ,
    fontSize:12.sp ,
    color: Color(0xFF6D747A),
  );



  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: 16.sp,),
          Container(
            height:300.h,
            width:360.w ,
            color: Color(0xFFEEF3FD),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 40.sp,),
                Row(
                  children: [
                    SizedBox(width: 12.w,),
                    SvgPicture.asset("assets/Logo/Menu.svg"),
                    SizedBox(width: 245.w,),
                    Icon(Icons.chat_bubble_outline,size: 24.sp,color: Colors.grey,),
                    SizedBox(width: 13.w,),
                    Icon(Icons.notifications_outlined,size: 24.sp,color: Colors.grey,)
                  ],
                ),
                SizedBox(height: 24.sp,),
                Container(
                  margin: EdgeInsets.only(left: 16.w),
                  child: Text("Hello, Priya!",style: GoogleFonts.lora(
                      fontWeight:FontWeight.bold ,
                      fontSize:20.sp ,
                      color: Colors.black
                  ),),
                ),
                Container(
                  margin: EdgeInsets.only(left: 16.w),
                  child: Text("What do you wanna learn today?",style: GoogleFonts.inter(
                      fontSize:12.sp ,
                      color: Colors.grey
                  ),),
                ),
                SizedBox(height: 32.sp,),
                Row(
                  children: [
                    SizedBox(width: 13.w,),
                    Tile(image: "assets/icons/Icon1.png", text: "Programs"),
                    SizedBox(width: 8.w,),
                    Tile(image: "assets/icons/Icon2.png", text: "Get help"),
                  ],
                ),
                SizedBox(height: 8.sp,),
                Row(
                  children: [
                    SizedBox(width: 13.w,),
                    Tile(image: "assets/icons/Icon3.png", text: "Learn"),
                    SizedBox(width: 8.w,),
                    Tile(image: "assets/icons/Icon4.png", text: "DD Tracker"),
                  ],
                ),

              ],
            ),
          ),
          SizedBox(height: 24.sp,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TitleTile(headTile: "Programs for you",),
              SizedBox(width: 119.w,),
              Row(
                children: [
                  Text("View all",style:view ,),
                  SizedBox(width: 2.w,),
                  Icon(Icons.arrow_forward,size: 24.sp,color: Color(0xFF6D747A),)
                ],
              ),

            ],
          ),
          SizedBox(height: 24.sp,),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ProgramTile(text: "Lifestyle", Longtext: "A complete guide for your\nnew born baby", Lessontext:"16 lessons", image: "assets/images/TileImage.svg"),
                  ProgramTile(text: "Lifestyle", Longtext: "A complete guide for your\nnew born baby", Lessontext:"16 lessons", image: "assets/images/TileImage.svg"),
                  ProgramTile(text: "Lifestyle", Longtext: "A complete guide for your\nnew born baby", Lessontext:"16 lessons", image: "assets/images/TileImage.svg"),
                  ProgramTile(text: "Lifestyle", Longtext: "A complete guide for your\nnew born baby", Lessontext:"16 lessons", image: "assets/images/TileImage.svg")
                ],
              )),
          SizedBox(height: 32.sp,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TitleTile(headTile: "Events and experiences", ),
              SizedBox(width: 67.w,),
              Row(
                children: [
                  Text("View all",style:view ,),
                  SizedBox(width: 2.w,),
                  Icon(Icons.arrow_forward,size: 24.sp,color: Color(0xFF6D747A),)
                ],
              ),
            ],
          ),
          SizedBox(height: 24.sp,),
          SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  EventTile(text: "Babycare", Longtext: "Understanding of human\nbehaviour", Lessontext:"13 Feb, Sunday", image: "assets/images/yoga.png"),
                  EventTile(text: "Babycare", Longtext: "Understanding of human\nbehaviour", Lessontext:"13 Feb, Sunday", image: "assets/images/yoga.png"),
                  EventTile(text: "Babycare", Longtext: "Understanding of human\nbehaviour", Lessontext:"13 Feb, Sunday", image: "assets/images/yoga.png"),
                  EventTile(text: "Babycare", Longtext: "Understanding of human\nbehaviour", Lessontext:"13 Feb, Sunday", image: "assets/images/yoga.png")
                ],
              )),
          SizedBox(height: 32.sp,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TitleTile(headTile: "Lessons for you", ),
              SizedBox(width: 133.w,),
              Row(
                children: [
                  Text("View all",style:view ,),
                  SizedBox(width: 2.w,),
                  Icon(Icons.arrow_forward,size: 24.sp,color: Color(0xFF6D747A),)
                ],
              ),


            ],
          ),
          SizedBox(height: 24.sp,),
          SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  LessionTile(text: "Babycare", Longtext: "Understanding of human\nbehaviour", Lessontext:"3 min", image: "assets/images/yoga.png"),
                  LessionTile(text: "Babycare", Longtext: "Understanding of human\nbehaviour", Lessontext:"3 min", image: "assets/images/yoga.png"),
                  LessionTile(text: "Babycare", Longtext: "Understanding of human\nbehaviour", Lessontext:"3 min", image: "assets/images/yoga.png"),
                  LessionTile(text: "Babycare", Longtext: "Understanding of human\nbehaviour", Lessontext:"3 min", image: "assets/images/yoga.png")
                ],
              )),
        ],
      ),
    );
  }
}





class Tile extends StatelessWidget {
  String image ="";
  String text ="";
    Tile({required this.image ,required this.text,super.key});
    TextStyle tile = GoogleFonts.inter(
      color: Color(0xFF598BED),
      fontSize: 14.sp,
      fontWeight: FontWeight.w600

    );

  @override
  Widget build(BuildContext context) {
    return Container(

      padding: EdgeInsets.only(left: 20.w),
      height: 48.sp,
      width:160.w ,
      decoration: BoxDecoration(
        border: Border.all(color: Color(0xFF598BED)),
        borderRadius: BorderRadius.circular(8.0)
      ),
      child: Row(
        children: [
          Image(image:AssetImage(image),height: 20.sp,width: 20.sp,),
          SizedBox(width: 12.w,),
          Text(text,style: tile,)
        ],
      ),
    );
  }
}
class TitleTile extends StatelessWidget {
  String headTile = "";
  
  TitleTile({required this.headTile,super.key});
  TextStyle head = GoogleFonts.lora(
    fontWeight:FontWeight.w600 ,
    fontSize:18.sp ,
    color: Color(0xFF000000),
  );

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(width: 16.w,),
        Text(headTile,style: head,),
        

      ],
    );
  }
}
class ProgramTile extends StatelessWidget {
  String text = "";
  String Longtext = "";
  String Lessontext = "";
  String image = "";
    ProgramTile({required this.text,required this.Longtext,required this.Lessontext,required this.image,super.key});
    TextStyle lifestyle = GoogleFonts.inter(
      fontWeight:FontWeight.bold ,
      fontSize: 12.sp,
      color: Color(0xFF598BED),

    ); TextStyle longtext = GoogleFonts.inter(
      fontWeight:FontWeight.bold ,
      fontSize: 16.sp,
      color: Color(0xFF000000),

    );TextStyle lesson = GoogleFonts.inter(
      fontWeight:FontWeight.w400 ,
      fontSize: 12.sp,
      color: Color(0xFF6D747A),

    );

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 16.w),
      decoration: BoxDecoration(
        boxShadow:  [
          BoxShadow(
            color: Colors.white60.withOpacity(0.90),
            blurRadius: 4,
            offset: const Offset(0,4),
          ),
        ],
        border: Border.all(color: Color(0xFFEBEDF0)),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [
          Container(
            child: SvgPicture.asset(image,width:242.w ,height:140.sp ),
          ),
          Container(
            padding: EdgeInsets.only(left: 12.sp),

            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 16.sp,),
                Text(text,style:lifestyle ,),
                SizedBox(height: 8.sp,),
                Text(Longtext,style:longtext ,),
                SizedBox(height: 15.sp,),
                Text(Lessontext,style:lesson ,),
                SizedBox(height: 21.sp,)
              ],
            ),
          )

        ],
      ),
    );
  }
}
class EventTile extends StatelessWidget {
  String text = "";
  String Longtext = "";
  String Lessontext = "";
  String image = "";
    EventTile({required this.text,required this.Longtext,required this.Lessontext,required this.image,super.key});
    TextStyle lifestyle = GoogleFonts.inter(
      fontWeight:FontWeight.bold ,
      fontSize: 12.sp,
      color: Color(0xFF598BED),

    ); TextStyle longtext = GoogleFonts.inter(
      fontWeight:FontWeight.bold ,
      fontSize: 16.sp,
      color: Color(0xFF000000),

    );TextStyle lesson = GoogleFonts.inter(
      fontWeight:FontWeight.w400 ,
      fontSize: 12.sp,
      color: Color(0xFF6D747A),

    );

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 285.sp,
      width: 242.w,
      margin: EdgeInsets.only(left: 16.w),
      decoration: BoxDecoration(
        boxShadow:  [
          BoxShadow(
            color: Colors.white60.withOpacity(0.90),
            blurRadius: 4,
            offset: const Offset(0,4),
          ),
        ],
        border: Border.all(color: Color(0xFFEBEDF0)),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [
          Container(
            height: 140.sp,
              width: 242.w,
              child: Image(image: AssetImage(image),fit: BoxFit.cover,)),
          Container(
            padding: EdgeInsets.only(left: 12.sp),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 16.sp,),
                Text(text,style:lifestyle ,),
                SizedBox(height: 8.sp,),
                Text(Longtext,style:longtext ,),
                SizedBox(height: 15.sp,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(Lessontext,style:lesson ,),
                    Container(
                      height: 26.sp,
                      width: 62.w,
                      margin: EdgeInsets.only(right: 12.w),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        border: Border.all(color: Color(0xFF598BED),
                        ),
                        borderRadius: BorderRadius.circular(16.0.r),
                        
                      ),
                      child: Text("Book",style: GoogleFonts.inter(
                       fontSize: 12.sp,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF598BED)

                      ),),
                    )
                  ],
                ),
                SizedBox(height: 21.sp,)
              ],
            ),
          )

        ],
      ),
    );
  }
}
class LessionTile extends StatelessWidget {
  String text = "";
  String Longtext = "";
  String Lessontext = "";
  String image = "";
    LessionTile({required this.text,required this.Longtext,required this.Lessontext,required this.image,super.key});
    TextStyle lifestyle = GoogleFonts.inter(
      fontWeight:FontWeight.bold ,
      fontSize: 12.sp,
      color: Color(0xFF598BED),

    ); TextStyle longtext = GoogleFonts.inter(
      fontWeight:FontWeight.bold ,
      fontSize: 16.sp,
      color: Color(0xFF000000),

    );TextStyle lesson = GoogleFonts.inter(
      fontWeight:FontWeight.w400 ,
      fontSize: 12.sp,
      color: Color(0xFF6D747A),

    );

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 280.sp,
      width: 242.sp,
      margin: EdgeInsets.only(left: 16.w),
      decoration: BoxDecoration(
        boxShadow:  [
          BoxShadow(
            color: Colors.white60.withOpacity(0.90),
            blurRadius: 4,
            offset: const Offset(0,4),
          ),
        ],
        border: Border.all(color: Color(0xFFEBEDF0)),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [
          Container(
              height: 140.sp,
              width: 242.w,
              child: Image(image: AssetImage(image),fit: BoxFit.cover,)),
          Container(
            padding: EdgeInsets.only(left: 12.sp),

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 16.sp,),
                Text(text,style:lifestyle ,),
                SizedBox(height: 8.sp,),
                Text(Longtext,style:longtext ,),
                SizedBox(height: 15.sp,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(Lessontext,style:lesson ,),
                    Container(
                      margin: EdgeInsets.only(right:12.w ),
                        child: Icon(Icons.lock_outline,size: 20.sp,color: Color(0xFF6D747A),))
                  ],
                ),
                SizedBox(height: 21.sp,)
              ],
            ),
          )

        ],
      ),
    );
  }
}



