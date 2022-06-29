import 'package:flutter/material.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:task1_login_signup/login_screen.dart';
import 'package:task1_login_signup/shared/text_form_field.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextEditingController controller = TextEditingController();
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    String initialCountry = 'EG';
    PhoneNumber number = PhoneNumber(isoCode: 'EG');
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image(image: AssetImage('assets/images/1.png'),width: double.infinity,fit: BoxFit.fill,),

            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height:20 ,),
                  Text(
                    'Welcome to Fashion Daily',
                    style: TextStyle(color: Colors.black54),
                  ),
                  SizedBox(height:20 ,),
                  Row(
                    children: [
                      Expanded(
                        child: const Text(
                          'Register',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 30,
                          ),
                        ),
                      ),
                      const  Text('Help',style: TextStyle(color: Colors.blue),),
                      SizedBox(width: 10,),
                      CircleAvatar(
                        radius: 10,
                        child: Text('?',style: TextStyle(color: Colors.white),),
                      )
                    ],
                  ),
                  SizedBox(height: 20,),
                  MyTextformField(controller: emailController,
                      PrefixIcon: Icons.email,
                      hitText: ' Example@gmail.com',
                      border: 8.0,
                      validator: 'email most not be empty',
                  ),
                  SizedBox(height: 20,),
                  Text('Phone Number ',style: TextStyle(color: Colors.black54),),
                  SizedBox(height: 5,),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: Colors.black.withOpacity(0.13)),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0xffeeeeee),
                          blurRadius: 10,
                          offset: Offset(0, 4),
                        ),
                      ],
                    ),
                    child: Stack(
                      children: [
                        InternationalPhoneNumberInput(

                          onInputChanged: (PhoneNumber number) {
                            print(number.phoneNumber);
                          },
                          onInputValidated: (bool value) {
                            print(value);
                          },
                          selectorConfig: SelectorConfig(
                            selectorType: PhoneInputSelectorType.BOTTOM_SHEET,
                          ),
                          initialValue: number,
                          ignoreBlank: false,
                          autoValidateMode: AutovalidateMode.disabled,
                          selectorTextStyle: TextStyle(color: Colors.black),
                          textFieldController: controller,
                          formatInput: false,
                          maxLength: 9,
                          keyboardType:
                          TextInputType.numberWithOptions(signed: true, decimal: true),
                          cursorColor: Colors.black,
                          inputDecoration: InputDecoration(
                            contentPadding: EdgeInsets.only(bottom: 15, left: 0),
                            border: InputBorder.none,
                            hintText: 'Phone Number',
                            hintStyle: TextStyle(color: Colors.grey.shade500, fontSize: 16),
                          ),
                          validator: (value){
                            if(value!.isEmpty){
                              return 'phone  must not be empty ';
                            }
                            return null ;
                          },
                          onSaved: (PhoneNumber number) {
                            print('On Saved: $number');
                          },
                        ),
                        Positioned(
                          left: 90,
                          top: 8,
                          bottom: 8,
                          child: Container(
                            height: 40,
                            width: 1,
                            color: Colors.black.withOpacity(0.13),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 25,),
                  MyTextformField(
                      controller: passwordController,
                      PrefixIcon: Icons.lock,
                      hitText: 'password',
                      border: 8.0,
                      validator: 'password most not be empty ',
                      suffixIcon:  Icons.visibility_off,
                  ),
                  SizedBox(height: 25,),
                  Container(
                      width: double.infinity,
                      height: 45,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.blue
                      ),
                      child: MaterialButton(
                        onPressed: (){},
                        child: Text(
                          'Sign In',
                          style: TextStyle(
                              color: Colors.white
                          ),
                        ),
                      )
                  ),
                  SizedBox(height: 20,),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          height: 1,
                          decoration: BoxDecoration(
                              color: Colors.black38
                          ),
                        ),
                      ),
                      SizedBox(width: 5,),
                      Text('OR',),
                      SizedBox(width: 5,),

                      Expanded(
                        child: Container(
                          height: 1,
                          decoration: BoxDecoration(
                              color: Colors.black38
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 15,),
                  GestureDetector(
                    onTap: (){},
                    child: Container(
                      width: double.infinity,
                      height: 45,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.white
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image(image: AssetImage('assets/images/google.png',),height: 20,),
                          SizedBox(width: 5,),
                          Text(
                            'Sign In by google',
                            style: TextStyle(color: Colors.blue),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                          ' have an account?'
                      ),
                      SizedBox(width: 5,),
                      TextButton(
                        child: Text('Sign In here',style: TextStyle(color: Colors.blue),),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder:(context)=> LoginScreen()));
                        },
                      ),
                    ],
                  ),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
