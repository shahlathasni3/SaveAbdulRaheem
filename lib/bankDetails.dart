import 'package:flutter/material.dart';

class bankDetails extends StatelessWidget {
  const bankDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 85,),
                child: Text(
                   'App വഴി പണമയക്കുന്നതിന് തടസ്സം നേരിടുന്നവർക്ക്\n താഴെ കൊടുത്ത അക്കൗണ്ടുകളിലേക്ക് ട്രാൻസ്ഫർ\n ചെയ്യാവുന്നതാണ്',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'Poppins',
                ),),
              ),
              SizedBox(height: 25,),
              Container(
                height: 167,
                width: 351,
                decoration: BoxDecoration(
                  color: Color(0xFFC46F4E),
                  borderRadius: BorderRadius.circular(35)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                        'Scan QR Code',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 15,
                      color: Colors.white,
                      fontFamily: 'Poppins',
                    ),),
                    Container(
                      height: 111,
                      width: 111,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white
                      ),
                      child: Image.asset('assets/top/Qr.png',scale: .5,),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 25,),
              Container(
                height: 90,
                width: 351,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color(0xFFC46F4E),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 10,width: 10,),
                    Container(
                      height: 37,
                      width: 138,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset('assets/pay/GooglePay.png',scale: 1,),
                          Image.asset('assets/pay/PhonePay.png',  scale: 1,),
                        ],
                      ),
                    ),
                    SizedBox(height: 10,width: 10,),
                    Text('Mobile Number : +91 95674 83832', style: TextStyle(fontWeight: FontWeight.w600,color: Colors.white,fontSize: 15,fontFamily: 'Poppins',),)
                  ],
                ),
              ),
              SizedBox(height: 25,),
              Container(
                 height: 167,
                 width: 351,
                 decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(20),
                 color: Color(0xFFC46F4E),
                 ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 10,),
                    Container(
                      height: 37,
                      width: 138,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(50)
                      ),
                      child: Image.asset('assets/bank/ICICI.png',scale: 1,),
                    ),
                    SizedBox(height: 8,),
                    Text('MP ABDUL RAHIM LEGAL ASSISTANCE COMMITTEE',style: TextStyle(fontSize: 12,fontWeight: FontWeight.w700,color: Colors.white,fontFamily: 'Poppons',),),
                    SizedBox(height: 8,),
                    Text('Ac No : 074905001625',style: TextStyle(fontSize: 12,fontWeight: FontWeight.w700,color: Colors.white,fontFamily: 'Poppons',),),
                    SizedBox(height: 8,),
                    Text('IFSC : ICIC0000749',style: TextStyle(fontSize: 12,fontWeight: FontWeight.w700,color: Colors.white,fontFamily: 'Poppons',),),
                    SizedBox(height: 8,),
                    Text('BRANCH : ICICI MALAPPURAM',style: TextStyle(fontSize: 12,fontWeight: FontWeight.w700,color: Colors.white,fontFamily: 'Poppons',),),
                  ],
                ),
              ),
              SizedBox(height: 25,),
              Container(
                height: 193,
                width: 351,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color(0xFFC46F4E),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 20,),
                    Container(
                      height: 37,
                      width: 148,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(50)
                      ),
                      child: Image.asset('assets/bank/federal.png',scale: 1,fit: BoxFit.cover,),
                    ),
                    SizedBox(height: 8,),
                    Text('MP ABDUL RAHIM LEGAL ASSISTANCE COMMITTEE',style: TextStyle(fontSize: 12,fontWeight: FontWeight.w700,color: Colors.white,fontFamily: 'Poppons',),),
                    SizedBox(height: 8,),
                    Text('Ac No : 11100200018153',style: TextStyle(fontSize: 12,fontWeight: FontWeight.w700,color: Colors.white,fontFamily: 'Poppons',),),
                    SizedBox(height: 8,),
                    Text('IFSC : FDRL0001110',style: TextStyle(fontSize: 12,fontWeight: FontWeight.w700,color: Colors.white,fontFamily: 'Poppons',),),
                    SizedBox(height: 8,),
                    Text('BANK : FEDERAL BANK',style: TextStyle(fontSize: 12,fontWeight: FontWeight.w700,color: Colors.white,fontFamily: 'Poppons',),),
                    SizedBox(height: 8,),
                    Text('BRANCH : CHERUVANNOOR',style: TextStyle(fontSize: 12,fontWeight: FontWeight.w700,color: Colors.white,fontFamily: 'Poppons',),),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
