import 'package:exam_6_shokirov_diyorbek/constants/colors.dart';
import 'package:exam_6_shokirov_diyorbek/constants/strings.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import '../constants/icons.dart';
import '../custom_widgets/bottom_nav_bar.dart';
import '../custom_widgets/custom_add_row.dart';



class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Color color = AppColors.black;
  var box = Hive.box("mode");
 bool mode = false;
 


  @override
  Widget build(BuildContext context) {

    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(

      backgroundColor: mode ? AppColors.white : AppColors.black,
      appBar: AppBar(
        backgroundColor: mode ? AppColors.white : AppColors.black,
        leading: BackButton(color: mode? AppColors.black : AppColors.white ),
      ),
      endDrawer: Drawer(

        backgroundColor: mode ? AppColors.white : AppColors.black,
        child: Center(
          child: CupertinoButton(
            onPressed: (){
              box.put("mode", !mode);
              setState(() {
                mode = !mode;
              });
            },
            child: mode ?const Icon(Icons.sunny) : const Icon(Icons.mode_night),

          ),
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

           mode ? const Image(image: AppIcons.dessert):  const Image(image: AssetImage('assets/images/dessert.png')),

            mode? Text(Strings.vegan, style: TextStyle(fontSize: 52, color: AppColors.black ),):Text(Strings.vegan, style: TextStyle(fontSize: 52, color: AppColors.white ),),

            const SizedBox(height: 10,),

            mode? Text(Strings.protain, style: TextStyle(fontSize: 52, color: AppColors.black ),): Text(Strings.protain, style: TextStyle(fontSize: 52, color: AppColors.white ),),

            const SizedBox(height: 10,),

            mode ? Text(Strings.gram, style: TextStyle(fontSize: 14, color: AppColors.black ),): Text(Strings.gram, style: TextStyle(fontSize: 14, color: AppColors.white  ),),

           const SizedBox(height: 20,),

            AddPraduct(mode: mode),

            const SizedBox(height: 15,),

             Text(Strings.abut,style: TextStyle(color:  mode? AppColors.black : AppColors.white, fontSize: 16, fontWeight: FontWeight.w500),),

            const SizedBox(height: 20,),

            Text(Strings.avegan,style: TextStyle(color: mode? AppColors.black : AppColors.white, fontSize: 14, fontWeight: FontWeight.w500),),

          ],
        ),
      ),

      bottomNavigationBar: CustomBottomNavBar(height: height, width: width, mode: mode),
    );
  }
}
