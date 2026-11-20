

class Auto{
  final String  message;
  final bool stutes;
 

  Auto({required this. message, required this.stutes });

  factory Auto.fromjosin(Map<String,dynamic> josin){
    
     return Auto(message: josin ["message"]?? "",stutes: josin["stutes"] ??false);
    
  }
}
class UserMode{
  
  final String name;
  final String email;
  final String phone;
  final String password;

  new({ required this.name, required this.email, required this.phone, required this.password});
  factory UserMode.fromjosin(Map<String,dynamic> josin){
    return UserMode( name:josin ["name"], email:josin ["email"], phone: josin["phone"], password: josin["password"]);
  }
}