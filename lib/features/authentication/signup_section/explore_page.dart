import 'package:fineace/constants/app_color.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ExplorePage extends StatelessWidget {
  const ExplorePage({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
        Expanded(
          child: Center(
          child: Container(
          padding: const EdgeInsets.only(bottom: 50.0),
          child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/explore_image.png"),
            const SizedBox(height: 30,),
            Text(
              "Verify Successfully!",
              style: GoogleFonts.urbanist(
                  fontSize: 25,
                  color: AppColor.appColor,
                  fontWeight: FontWeight.bold
              ),
            ),
            const SizedBox(height: 10,),
            Text(
              "Congratulation!, Your account has been \nverified successfully",
              style: GoogleFonts.urbanist(
                  fontSize: 14,
                  color: Colors.black54
              ),
              textAlign: TextAlign.center,
              ),
             ],
            ),
            ),
           ),
          ),
              Container(
                margin: EdgeInsets.only(left: 20, right: 20, bottom: 25),
                //alignment: Alignment.center,
                width: 350,
                height: 48,
                child: ElevatedButton(
                    onPressed: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => ExplorePage())
                      );
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: AppColor.appPrimaryColor,
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0))

                    ),
                    child: Text(
                      "Let's Explore",
                      style: GoogleFonts.lexendDeca(),
                    )
                ),
              ),
         ]
        ),
      )
    );
  }
}
