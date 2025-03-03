import 'package:egycal/core/utilis/size_config.dart';
import 'package:flutter/material.dart';

class PageViewitem extends StatelessWidget {
  const PageViewitem({super.key, this.tittle, this.subtittle, this.image});
  final String? tittle;
  final String? subtittle;
  final String? image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
      SizedBox(
        height: SizeConfig.defaultSize!*22,
      ),
      SizedBox(height:SizeConfig.defaultSize!*20,child:  Image.asset(image!)), 
      SizedBox(
        height: SizeConfig.defaultSize!*3,
      ),
      Text(tittle!,
      style: TextStyle(
        fontFamily: 'lnter',
        fontWeight: FontWeight.w500,
        fontSize: 20,
        color: Color(0xFF0D1220)

      ),),
      SizedBox(
        height: SizeConfig.defaultSize!*1,
        
      ),
       Text(subtittle!,
       style: TextStyle(
        fontFamily: 'lnter',
        fontWeight: FontWeight.normal,
        fontSize: 16,
        color: Color(0xFF6E7179),
        
       ),),
       SizedBox(
        height: SizeConfig.defaultSize!*1,
        
      ),
      
       ],
    );
  }
}
