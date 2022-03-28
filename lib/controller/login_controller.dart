import 'package:get/get.dart';
class LoginController extends GetxController {
  static LoginController get to => Get.find();




  RxBool flagIsName=false.obs;



  isName(String value)
  {
    if(value.trim().isEmpty)
    {
      print("hf");
      flagIsName.value=false;
    }
    else{
      print("This Field Is Required");
      if(GetUtils.isAlphabetOnly(value.trim()))
      {
        print("hf");
        flagIsName.value=true;
      }
      else
      {
        print("This Field Is Required");
        flagIsName.value=false;
      }

    }
  }

  isEmail(String text)
  {
    if(text.isNotEmpty){
      if (!GetUtils.isEmail(text)) {
        return "This Is Not a Valid Email Format";
      } else {
        return null;
      }
    }
    else
    {
      return "This Field Is Required";
    }
  }


  isPassword(String text)
  {
    if(text.isNotEmpty){
      if (text.length<=8) {
        return "Atleast 9 characters";
      } else {
        return null;
      }
    }
    else
    {
      return "This Field Is Required";
    }
  }
  isMobile(String text)
  {
    if(text.isNotEmpty){
      if (GetUtils.isNumericOnly(text.trim()) && text.length!=10) {
        return "This Is Not a Valid mobile number";
      } else {
        return null;
      }
    }
    else
    {
      return "This Field Is Required";
    }
  }


  isUser(String text)
  {
    if(text.isNotEmpty){
      if (text.isNum) {
        if(text.length==10){
          print ("${text}is a number") ;
        }else{
          return "Not a Valid Number" ;
        }
      } else if (text.isEmail) {
        print("${text}is a email");
      } else
      {
        return "Enter a valid Username";
      }
    }else{
      return "This Field is required";
    }
  }

}