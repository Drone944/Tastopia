import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tastopia/constants/colors.dart';

Container InputFieldWidget(
  double screenHeight,
  double screenWidth,
  String HinText,
  int InputColor,
  int InpLength,
  bool isPass,
  TextEditingController textcontroller,
)
{
return Container(
              decoration: BoxDecoration(
                color: Color(InputColor).withOpacity(0.3),

                borderRadius: BorderRadius.circular(10)
              ),
              height: screenHeight*0.077,
              width: screenWidth*0.65,
              child: TextFormField(
                controller: textcontroller,
                obscureText: isPass,
                maxLength: InpLength,
                textAlignVertical: TextAlignVertical.center,
                style: GoogleFonts.sora(color: Color(ColorConstants.gray),fontSize: screenHeight*0.018,fontWeight: FontWeight.bold),
                  decoration: InputDecoration(
                    counter: Offstage(),
                    hintText: HinText,
                    border: InputBorder.none,
                    hintStyle: GoogleFonts.sora(color: Color(ColorConstants.gray),fontSize: screenHeight*0.0175,fontWeight: FontWeight.bold),
                    contentPadding: EdgeInsets.only(
                       left: 15, top: screenHeight*0.025),
                    isDense: true
                    ),
                    
                  ),
            );

}