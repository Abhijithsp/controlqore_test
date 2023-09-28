import 'package:get_storage/get_storage.dart';

///Functions for sharedprefrence  functions only
///
/// These services folder can use  functions for fetch location ,Get image from gallery etc,put that in a separate file

class getStorage{
final storage =GetStorage();

void setUserToken(String token) {
  storage.write("token", token);
}

String  getUserToken(){
  return  storage.read('token');
}

void removeUserToken() {
  storage.remove("token");
}
void setLoggedIn(bool  status)
{
  storage.write("Logged_in", status);
}

bool  getLoggedIn()
{
  return storage.read("Logged_in")!= null;
}

void setAgentId(String id) {
  storage.write("agent_id", id);
}

String  getAgentId(){
  return storage.read("agent_id");
}

void setAmBit(String id) {
  storage.write("am_bit", id);
}

String  getAmBit(){
  return storage.read("am_bit");
}
void setUsername(String name) {
  storage.write("username", name);
}

String getUsername(){
  return storage.read("username");
}

void setEmpId(String id) {
  storage.write("employee_id", id);
}

String  getEmpId(){
  return storage.read("employee_id");
}

void setFranchiseId(String id){
  storage.write("franchise_id", id);
}

String  getFranchiseId(){
  return storage.read("franchise_id");
}

void setFranchiseCode(String code){
  storage.write("franchise_code", code);
}

String getFranchiseCode(){
  return storage.read("franchise_code");
}

void setSelectedJobCardId(String id){
  storage.write("jobcard_id", id);
}

String getSelectedJobCardId(){
  return storage.read("jobcard_id");
}

}