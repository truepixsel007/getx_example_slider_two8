
import 'package:get/get.dart';

class ExampleTwoController extends GetxController{

  // obs mean observe
  // Rx and obs getx se aa rahe hai
  // RxDouble ki jaga final bhi use kr sakte hai
  RxDouble opacity = .4.obs ;

  // change value 
  setOpacity(double value){
    opacity.value = value;
  }

}