

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants/colors.dart';
import '../constants/strings.dart';

class AddPraduct extends StatelessWidget {
  const AddPraduct({
    super.key,
    required this.mode,
  });

  final bool mode;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: 132,
          height: 44,
          decoration: BoxDecoration(
            color:   mode ? AppColors.black: AppColors.white,
            border: Border.all(color: Colors.grey),
          ),
          child:  Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(CupertinoIcons.minus, color: mode? AppColors.white : AppColors.black, size: 13,),
              Text("1", style: TextStyle(color:  mode? AppColors.white : AppColors.black, fontSize: 25),),
              Icon(Icons.add, color:  mode? AppColors.white : AppColors.black,size: 18,),
            ],
          ),
        ),

        Text(Strings.sena,style: TextStyle(color:  mode? AppColors.black : AppColors.white, fontSize: 27, fontWeight: FontWeight.w500),),
      ],
    );
  }
}

