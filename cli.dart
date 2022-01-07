//Sigil Dart
//Written By Andy P.
//Icy Viking Games
//using FFI for Dart
//Copyright(c) 2022

import 'dart:ffi';
import 'package:ffi/ffi.dart';

void main()
{
   final sigil = DynamicLibrary.open('sigil.dll');
   
   //Sigil Flags
   const SL_ALIGN_CENTER = 0;
   const SL_ALIGN_RIGHT = 1;
   const SL_ALIGN_LEFT = 2;
   
   const SL_KEY_ESCAPE = 256;
   const SL_KEY_ENTER = 257;
   const SL_KEY_TAB = 258;
   const SL_KEY_BACKSPACE = 259;
   const SL_KEY_INSERT = 260;
   const SL_KEY_DELETE = 261;
   const SL_KEY_RIGHT = 262;
   const SL_KEY_LEFT = 263;
   const SL_KEY_DOWN = 264;
   const SL_KEY_UP = 265;
   const SL_KEY_PAGE_UP = 266;
   const SL_KEY_PAGE_DOWN = 267;
   const SL_KEY_HOME = 268;
   const SL_KEY_END = 269;
   const SL_KEY_CAPS_LOCK = 280;
   const SL_KEY_SCROLL_LOCK = 281;
   const SL_KEY_NUM_LOCK = 282;
   const SL_KEY_PRINT_SCREEN = 283;
   const SL_KEY_PAUSE = 284;
   const SL_KEY_F1 = 290;
   const SL_KEY_F2 = 291;
   const SL_KEY_F3 = 292;
   const SL_KEY_F4 = 293;
   const SL_KEY_F5 = 294;
   const SL_KEY_F6 = 295;
   const SL_KEY_F7 = 296;
   const SL_KEY_F8 = 297;
   const SL_KEY_F9 = 298;
   const SL_KEY_F10 = 299;
   const SL_KEY_F11 = 300;
   const SL_KEY_F12 = 301;
   const SL_KEY_F13 = 302;
   const SL_KEY_F14 = 303;
   const SL_KEY_F15 = 304;
   const SL_KEY_F16 = 305;
   const SL_KEY_F17 = 306;
   const SL_KEY_F18 = 307;
   const SL_KEY_F19 = 308;
   const SL_KEY_F20 = 309;
   const SL_KEY_F21 = 310;
   const SL_KEY_F22 = 311;
   const SL_KEY_F23 = 312;
   const SL_KEY_F24 = 313;
   const SL_KEY_F25 = 314;
   const SL_KEY_KEYPAD_0 = 320;
   const SL_KEY_KEYPAD_1 = 321;
   const SL_KEY_KEYPAD_2 = 322;
   const SL_KEY_KEYPAD_3 = 323;
   const SL_KEY_KEYPAD_4 = 324;
   const SL_KEY_KEYPAD_5 = 325;
   const SL_KEY_KEYPAD_6 = 326;
   const SL_KEY_KEYPAD_7 = 327;
   const SL_KEY_KEYPAD_8 = 328;
   const SL_KEY_KEYPAD_9 = 329;
   const SL_KEY_KEYPAD_DECIMAL = 330;
   const SL_KEY_KEYPAD_DIVIDE = 331;
   const SL_KEY_KEYPAD_MULTIPLY = 332;
   const SL_KEY_KEYPAD_SUBTRACT = 333;
   const SL_KEY_KEYPAD_ADD = 334;
   const SL_KEY_KEYPAD_ENTER = 335;
   const SL_KEY_KEYPAD_EQUAL = 336;
   const SL_KEY_LEFT_SHIFT = 340;
   const SL_KEY_LEFT_CONTROL = 341;
   const SL_KEY_LEFT_ALT = 342;
   const SL_KEY_LEFT_SUPER = 343;
   const SL_KEY_RIGHT_SHIFT = 344;
   const SL_KEY_RIGHT_CONTROL = 345;
   const SL_KEY_RIGHT_ALT = 346;
   const SL_KEY_RIGHT_SUPER = 347;
   
   const SL_MOUSE_BUTTON_1 = 0;
   const SL_MOUSE_BUTTON_2 = 1;
   const SL_MOUSE_BUTTON_3 = 2;
   const SL_MOUSE_BUTTON_4 = 3;
   const SL_MOUSE_BUTTON_5 = 4;
   const SL_MOUSE_BUTTON_6 = 5;
   const SL_MOUSE_BUTTON_7 = 6;
   const SL_MOUSE_BUTTON_8 = 7;
   const SL_MOUSE_BUTTON_LEFT = SL_MOUSE_BUTTON_1;
   const SL_MOUSE_BUTTON_RIGHT = SL_MOUSE_BUTTON_2;
   const SL_MOUSE_BUTTON_MIDDLE = SL_MOUSE_BUTTON_3;
   
   //Init Functions
   
   void slWindow(int width, int height, Pointer<Utf8> title, int fullscreen) {
	   final _slWindow = sigil.lookupFunction<
	   Void Function(Int32 width, Int32 height, Pointer<Utf8> title, Int32 fullscreen),
	   void Function(int width, int height, Pointer<Utf8> title, int fullscreen)>('slWindow');
	   return _slWindow(width,height,title,fullscreen);
   }
   
   void slShowCursor(int showCursor) {
	   final _slShowCursor = sigil.lookupFunction<
	   Void Function(Int32 showCursor),
	   void Function(int showCursor)>('slShowCursor');
	   return _slShowCursor(showCursor);
   }
   
   void slClose() {
	   final _slClose = sigil.lookupFunction<
	   Void Function(),
	   void Function()>('slClose');
	   return _slClose();
   }
   
   int slShouldClose() {
	   final _slShouldClose = sigil.lookupFunction<
	   Int32 Function(),
	   int Function()>('slShouldClose');
	   return _slShouldClose();
   }
	   
	   //Input Functions
	   
	   int slGetKey(int key) {
		   final _slGetKey = sigil.lookupFunction<
		   Int32 Function(Int32 key),
		   int Function(int key)>('slGetKey');
		   return _slGetKey(key);
	   }
		   
		   int slGetMouseButton(int button) {
			   final _slGetMouseButton = sigil.lookupFunction<
			   Int32 Function(Int32 button),
			   int Function(int button)>('slGetMouseButton');
			   return _slGetMouseButton(button);
		   }
		   
		   int slGetMouseX() {
			   final _slGetMouseX = sigil.lookupFunction<
			   Int32 Function(),
			   int Function()>('slGetMouseX');
			   return _slGetMouseX();
		   }
		   
		   int slGetMouseY() {
			   final _slGetMouseY = sigil.lookupFunction<
			   Int32 Function(),
			   int Function()>('slGetMouseY');
			   return _slGetMouseY();
		   }
		   
		   //Timing Functions
		   double slGetDeltaTime() {
			   final _slGetDeltaTime = sigil.lookupFunction<
			   Double Function(),
			   double Function()>('slGetDeltaTime');
			   return _slGetDeltaTime();
		   }
		   
		   double slGetTime() {
			   final _slGetTime = sigil.lookupFunction<
			   Double Function(),
			   double Function()>('slGetTime');
			   return _slGetTime();
		   }
		   
		   //Render Function
		   void slRender() {
			   final _slRender = sigil.lookupFunction<
			   Void Function(),
			   void Function()>('slRender');
			   return _slRender();
		   }
		   
		   //Color Functions
		   void slSetBackColor(double r, double g,double b) {
			   final _slSetBackColor = sigil.lookupFunction<
			   Void Function(Double r, Double g, Double b),
			   void Function(double r, double g,double b)>('slSetBackColor');
			   return _slSetBackColor(r,g,b);
		   }
			   
			   void slSetForecolor(double r, double g,double b, double a) {
				   final _slSetForeColor = sigil.lookupFunction<
				   Void Function(Double r, Double g, Double b, Double a),
				   void Function(double r, double g,double b,double a)>('slSetForeColor');
				   return _slSetForeColor(r,g,b,a);
			   }
			   
			 //Blending Function
			 void slSetAdditiveBlend(int ab) {
				 final _slSetAdditiveBlend = sigil.lookupFunction<
				 Void Function(Int32 ab),
				 void Function(int ab)>('slSetAdditiveBlend');
				 return _slSetAdditiveBlend(ab);
			 }
			 
			 //Transformation Functions
			 void slPush() {
				 final _slPush = sigil.lookupFunction<
				 Void Function(),
				 void Function()>('slPush');
				 return _slPush();
			 }
			 
			 void slPop() {
				 final _slPop = sigil.lookupFunction<
				 Void Function(),
				 void Function()>('slPop');
				 return _slPop();
			 }
			 
			 void slTranslate(double x,double y) {
				 final _slTranslate = sigil.lookupFunction<
				 Void Function(Double x, Double y),
				 void Function(double x,double y)>('slTranslate');
				 return _slTranslate(x,y);
			 }
			 
			 void slRotate(double deg) {
				 final _slRotate = sigil.lookupFunction<
				 Void Function(Double deg),
				 void Function(double deg)>('slRotate');
				 return _slRotate(deg);
			 }
			 
			 void slScale(double x, double y) {
				 final _slScale = sigil.lookupFunction<
				 Void Function(Double x, Double y),
				 void Function(double x, double y)>('slScale');
				 return _slScale(x,y);
			 }
			 
			 //Texture Load Function
			 int slLoadTexture(Pointer<Utf8> file) {
				 final _slLoadTexture = sigil.lookupFunction<
				 Int32 Function(Pointer<Utf8> file),
				 int Function(Pointer<Utf8> file)>('slLoadTexture');
				 return _slLoadTexture(file);
			 }
			 
			 //Sound Functions
			 int slLoadWAV(Pointer<Utf8> file) {
				 final _slLoadWAV = sigil.lookupFunction<
				 Int32 Function(Pointer<Utf8> file),
				 int Function(Pointer<Utf8> file)>('slLoadWAV');
				 return _slLoadWAV(file);
			 }
			 
			 int slSoundPlay(int sound) {
				 final _slSoundPlay = sigil.lookupFunction<
				 Int32 Function(Int32 sound),
				 int Function(int sound)>('slSoundPlay');
				 return _slSoundPlay(sound);
			 }
			 
			 int slSoundLoop(int sound) {
				 final _slSoundLoop = sigil.lookupFunction<
				 Int32 Function(Int32 sound),
				 int Function(int sound)>('slSoundLoop');
				 return _slSoundLoop(sound);
			 }
			 
			 void slSoundPause(int sound) {
				 final _slSoundPause = sigil.lookupFunction<
				 Void Function(Int32 sound),
				 void Function(int sound)>('slSoundPause');
				 return _slSoundPause(sound);
			 }
			 
			 void slSoundStop(int sound) {
				 final _slSoundStop = sigil.lookupFunction<
				 Void Function(Int32 sound),
				 void Function(int sound)>('slSoundStop');
				 return _slSoundStop(sound);
			 }
			 
			 void slSoundPauseAll() {
				 final _slSoundPauseAll = sigil.lookupFunction<
				 Void Function(),
				 void Function()>('slSoundPauseAll');
				 return _slSoundPauseAll();
			 }
			 
			 void slSoundResumeAll() {
				 final _slSoundResumeAll = sigil.lookupFunction<
				 Void Function(),
				 void Function()>('slSoundResumeAll');
				 return _slSoundResumeAll();
			 }
			 
			 void slSoundStopAll() {
				 final _slSoundStopAll = sigil.lookupFunction<
				 Void Function(),
				 void Function()>('slSoundStopAll');
				 return _slSoundStopAll();
			 }
			 
			 int slSoundPlaying(int sound) {
				 final _slSoundPlaying = sigil.lookupFunction<
				 Int32 Function(Int32 sound),
				 int Function(int sound)>('slSoundPlaying');
				 return _slSoundPlaying(sound);
			 }
			 
			 int slSoundLooping(int sound) {
				 final _slSoundLooping = sigil.lookupFunction<
				 Int32 Function(Int32 sound),
				 int Function(int sound)>('slSoundLooping');
				 return _slSoundLooping(sound);
			 }
			 
			 //Shape Functions
			 void slTriangleFill(double x, double y, double w, double h) {
				 final _slTriangleFill = sigil.lookupFunction<
				 Void Function(Double x, Double y, Double w, Double h),
				 void Function(double x, double y,double w, double h)>('slTriangleFill');
				 return _slTriangleFill(x,y,w,h);
			 }
			 
			 void slTriangleOutline(double x, double y,double w, double h) {
				 final _slTriangleOutline = sigil.lookupFunction<
				 Void Function(Double x, Double y, Double w,Double h),
				 void Function(double x,double y,double w,double h)>('slTriangleOutline');
				 return _slTriangleOutline(x,y,w,h);
			 }
			 
			 void slRectangleFill(double x,double y,double w,double h) {
				 final _slRectangleFill = sigil.lookupFunction<
				 Void Function(Double x, Double y,Double w,Double h),
				 void Function(double x,double y,double w,double h)>('slRectangleFill');
				 return _slRectangleFill(x,y,w,h);
			 }
			 
			 void slRectangleOutline(double x,double y,double w,double h) {
				 final _slRectangleOutline = sigil.lookupFunction<
				 Void Function(Double x,Double y,Double w, Double h),
				 void Function(double x,double y,double w,double h)>('slRectangleOutline');
				 return _slRectangleOutline(x,y,w,h);
			 }
			 
			 void slCircleFill(double x,double y,double rad,int num) {
				 final _slCircleFill = sigil.lookupFunction<
				 Void Function(Double x, Double y, Double rad, Int32 num),
				 void Function(double x,double y,double rad,int num)>('slCircleFill');
				 return _slCircleFill(x,y,rad,num);
			 }
			 
			 void slCircleOutline(double x,double y,double rad,int num) {
				 final _slCircleOutline = sigil.lookupFunction<
				 Void Function(Double x,Double y,Double rad, Int32 num),
				 void Function(double x,double y,double rad,int num)>('slCircleOutline');
				 return _slCircleOutline(x,y,rad,num);
			 }
			 
			 void slSemiCircleFill(double x,double y,double rad,int num,double deg) {
				 final _slSemiCircleFill = sigil.lookupFunction<
				 Void Function(Double x,Double y,Double rad,Int32 num,Double deg),
				 void Function(double x,double y,double rad,int num,double deg)>('slSemiCircleFill');
				 return _slSemiCircleFill(x,y,rad,num,deg);
			 }
			 
			 void slSemiCircleOutline(double x,double y,double rad,int num,double deg) {
				 final _slSemiCircleOutline = sigil.lookupFunction<
				 Void Function(Double x,Double y,Double rad, Int32 num, Double deg),
				 void Function(double x,double y,double rad,int num,double deg)>('slSemiCircleOutline');
				 return _slSemiCircleOutline(x,y,rad,num,deg);
			 }
			 
			 void slPoint(double x,double y) {
				 final _slPoint = sigil.lookupFunction<
				 Void Function(Double x,Double y),
				 void Function(double x,double y)>('slPoint');
				 return _slPoint(x,y);
			 }
			 
			 void slLine(double x1,double y1, double x2,double y2) {
				 final _slLine = sigil.lookupFunction<
				 Void Function(Double x1, Double y1, Double x2, Double y2),
				 void Function(double x1,double y1,double x2,double y2)>('slPoint');
				 return _slLine(x1,y1,x2,y2);
			 }
			 
			 void slSetSpriteTiling(double x,double y) {
				 final _slSetSpriteTiling = sigil.lookupFunction<
				 Void Function(Double x,Double y),
				 void Function(double x,double y)>('slSetSpriteTiling');
				 return _slSetSpriteTiling(x,y);
			 }
			 
			 void slSetSpriteScroll(double x,double y) {
				 final _slSetSpriteScroll = sigil.lookupFunction<
				 Void Function(Double x,Double y),
				 void Function(double x,double y)>('slSetSpriteScroll');
				 return _slSetSpriteScroll(x,y);
			 }
			 
			 void slSprite(int tex,double x,double y,double w,double h) {
				 final _slSprite = sigil.lookupFunction<
				 Void Function(Int32 tex, Double x,Double y,Double w,Double h),
				 void Function(int tex,double x,double y,double w,double h)>('slSprite');
				 return _slSprite(tex,x,y,w,h);
			 }
			 
			 //Text Functions
			 
			 void slSetTextAlign(int align) {
				 final _slSetTextAlign = sigil.lookupFunction<
				 Void Function(Int32 align),
				 void Function(int align)>('slSetTextAlign');
				 return _slSetTextAlign(align);
			 }
			 
			 double slGetTextWidth(Pointer<Utf8> text) {
				 final _slGetTextWidth = sigil.lookupFunction<
				 Double Function(Pointer<Utf8> text),
				 double Function(Pointer<Utf8> text)>('slGetTextWidth');
				 return _slGetTextWidth(text);
			 }
			 
			 double slGetTextHeight(Pointer<Utf8> text) {
				 final _slGetTextHeight = sigil.lookupFunction<
				 Double Function(Pointer<Utf8> text),
				 double Function(Pointer<Utf8> text)>('slGetTextHeight');
				 return _slGetTextHeight(text);
			 }
			 
			 int slLoadFont(Pointer<Utf8> file) {
				 final _slLoadFont = sigil.lookupFunction<
				 Int32 Function(Pointer<Utf8> file),
				 int Function(Pointer<Utf8> text)>('slLoadFont');
				 return _slLoadFont(file);
			 }
			 
			 void slSetFont(int font,int size) {
				 final _slSetFont = sigil.lookupFunction<
				 Void Function(Int32 font, Int32 size),
				 void Function(int font, int size)>('slSetFont');
				 return _slSetFont(font,size);
			 }
			 
			 void slSetFontSize(int size) {
				 final _slSetFontSize = sigil.lookupFunction<
				 Void Function(Int32 size),
				 void Function(int size)>('slSetFontSize');
				 return _slSetFontSize(size);
			 }
			 
			 void slText(double x,double y, Pointer<Utf8> text) {
				 final _slText = sigil.lookupFunction<
				 Void Function(Double x,Double y, Pointer<Utf8> text),
				 void Function(double x,double y, Pointer<Utf8> text)>('slText');
				 return _slText(x,y,text);
			 }
		
		//Quick example
			slWindow(800,600,'Hello Sigil - Click X to close'.toNativeUtf8(),0);
			
		  while(slShouldClose() == 0) {
			  
			  if(slGetKey(SL_KEY_ESCAPE) == 1) {
				  slClose();
			  }
			 
			  slRender();
		  }
		  
		  slClose();
}
