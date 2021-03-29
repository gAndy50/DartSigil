# DartSigil
Sigil wrapper for Dart

# ABOUT
DartSigil is a wrapper of the Sigil multimedia library for the Dart programming language. It was wrapped using Dart's FFI. This is not yet in a Dart library form, so for now you can copy and paste the functions and write your own programs. You can find out more about Sigil from the links section. 

# License
This software is provided as-is. There is no warranty for this software. You use this software at your own risk. You may not hold the author responsible for anything that may happen with this software. This software is provided in that event that it is helpful. You may use this wrapper in your own projects as you wish. You may not claim you wrote the original wrapper. 

# Example

```dart
import 'dart:ffi';
import 'package:ffi/ffi.dart';

void main(){
	slWindow(800,600,'Hello Sigil - Click X to close'.toNativeUtf8(),0);
			
		  while(slShouldClose() == 0) {
			  
			  if(slGetKey(SL_KEY_ESCAPE) == 1) {
				  slClose();
			  }
			 
			  slRender();
		  }
		  
		  slClose();
}
```

# Links
[Sigil](http://www.libsigil.com/)
