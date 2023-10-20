
import 'package:coffe/core/services/data/database/users.dart';
import 'package:coffe/core/services/theme/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:gradient_icon/gradient_icon.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
class ProfileScreen extends StatefulWidget {
  static const id = "/profile";
  const ProfileScreen({super.key});
  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}
class _ProfileScreenState extends State<ProfileScreen> {
  int onPressed = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
          flexibleSpace: Container(
      decoration: const BoxDecoration(
         borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20)),
             
        gradient: LinearGradient(
begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          colors: <Color>[Color(0xffCB8A58),Color(0xff562B1A),Color(0xffCB8A58,)]),
      ),),
        centerTitle: true,
         title: GradientText('profile',style: AppTextStyles.nunitoSansBold20, colors:const [Colors.white,Colors.white]),
         
        
      ),
      body: Column(
        children: [
       const   SizedBox(height: 100,),
        const  Center(
            child: Image(
              image: AssetImage('assets/Ellipse 74.png'),
              height: 150,
              width: 150,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 50),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric( horizontal:40.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GradientText('UserName',style: AppTextStyles.nunitoSansBold18, colors:const [Color(0xffCB8A58),Color(0xff562B1A),Color(0xffCB8A58)]),
                    
                      Text(currentUser!.name,
                          style: AppTextStyles.nunitoSansBold18.copyWith(color: Colors.black)),
                    const   GradientIcon(
          icon: Icons.edit,
          gradient: LinearGradient(
            colors: [Color(0xffCB8A58),Color(0xff562B1A),Color(0xffCB8A58)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          size: 15,
        ),
                    ],
                  ),
                  const SizedBox(height: 40),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GradientText('Email',style: AppTextStyles.nunitoSansBold18, colors:const [Color(0xffCB8A58),Color(0xff562B1A),Color(0xffCB8A58)]),
                     
                     
                      Text(currentUser!.email,
                          style: AppTextStyles.nunitoSansBold18.copyWith(color: Colors.black)),
                    const  GradientIcon(
          icon: Icons.edit,
          gradient: LinearGradient(
            colors: [Color(0xffCB8A58),Color(0xff562B1A),Color(0xffCB8A58)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          size: 15,
        ),
                  
                    ],
                  ),
                   const SizedBox(height: 40),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GradientText('Password',style: AppTextStyles.nunitoSansBold18, colors: const[Color(0xffCB8A58),Color(0xff562B1A),Color(0xffCB8A58,),]),
                     
                      Text('********',
                          style: AppTextStyles.nunitoSansBold18.copyWith(color: Colors.black)),
                   const  GradientIcon(
          icon: Icons.edit,
          gradient: LinearGradient(
            colors: [Color(0xffCB8A58),Color(0xff562B1A),Color(0xffCB8A58)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          size: 15,
        ),
                    ],
                  ), const SizedBox(height: 40),
                    Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GradientText('Phone',style: AppTextStyles.nunitoSansBold18, colors:const [Color(0xffCB8A58),Color(0xff562B1A),Color(0xffCB8A58)]),
                    
                      Text('+20 : 1007970197',
                          style: AppTextStyles.nunitoSansBold18.copyWith(color: Colors.black)),
                    const   GradientIcon(
          icon: Icons.edit,
          gradient: LinearGradient(
            colors: [Color(0xffCB8A58),Color(0xff562B1A),Color(0xffCB8A58)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          size: 15,
        ),
                    ],
                  ),
                  const SizedBox(height: 40),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GradientText('Address',style: AppTextStyles.nunitoSansBold18, colors:const [Color(0xffCB8A58),Color(0xff562B1A),Color(0xffCB8A58)]),
                     
                     
                      Text('Tanta',
                          style: AppTextStyles.nunitoSansBold18.copyWith(color: Colors.black)),
                    const  GradientIcon(
          icon: Icons.edit,
          gradient: LinearGradient(
            colors: [Color(0xffCB8A58),Color(0xff562B1A),Color(0xffCB8A58)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          size: 15,
        ),
                  
                    ],
                  ),
                   const SizedBox(height: 40),
                ],
              ),
            ),
          ),
        ],
      ),

    );
  }
}

class MyCard extends StatelessWidget {
  final String titleChild;
  final String subtitleChild;
  final void Function()? onTap;

  const MyCard(
      {Key? key, this.onTap ,required this.titleChild, required this.subtitleChild})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      color: Colors.white,
      elevation: 2,
      child: SizedBox(
        height: 80,
        child: ListTile(
          onTap: onTap,
          style: ListTileStyle.list,
          title: Padding(
            padding: const EdgeInsets.symmetric(vertical: 3),
            child: Text(
              titleChild,
              style: AppTextStyles.nunitoSansBold18,
            ),
          ),
          subtitle: Text(
            subtitleChild,
            style: AppTextStyles.nunitoSansRegular12,
          ),
          trailing: const Icon(Icons.arrow_forward_ios),
        ),
      ),
    );
  }
}
