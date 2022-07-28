library flutter_numpad;
import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class Numpadd extends StatefulWidget {
  final Color foregroundColor;
  final Color backgroundColor;
  final Color buttonBackgroundColor;
  final Color buttonTextColor;
  final double buttonTextFontSize;
  final double borderRaduis;
  final double elevation;
  final double actionButtonsElevation;
  final String titleText;
  final String subTitleText;
  final String secondActionButtonText;
  final String actionButtonText;  
  final int textInputLenght;
  final TextEditingController hanTextController;
  final bool showActionButton;
  final Function(String) onSecodActionButtonPressed;
  final Function()? actionButtonPressed;




  final Widget? titleActionwidget;

  const  Numpadd({Key? key, this.elevation=5, this.textInputLenght=10, this.borderRaduis=20.0,   required  this.hanTextController,this.buttonTextColor=const Color(0XFF1817a9),   this.foregroundColor=const Color(0XFF1817a9) ,   this.backgroundColor = Colors.white, this.buttonTextFontSize=30, this.titleText = r"$",  this.subTitleText="Customer to Pay", this.actionButtonText="Clear", this.secondActionButtonText="Okay", this.titleActionwidget, required this.onSecodActionButtonPressed, this.actionButtonPressed, this.buttonBackgroundColor=const Color(0xFFf8c21a), this.actionButtonsElevation=0, this.showActionButton=true,    }) : super(key: key);

  @override
  State<Numpadd> createState() => _NumpaddState();
}

class _NumpaddState extends State<Numpadd> {
  


  
  @override
  Widget build(BuildContext context) {
  
    
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (BuildContext context, Widget? child) {  
        
      return  AlertDialog(
        backgroundColor: widget.backgroundColor,
              elevation: widget.elevation,     
              shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(widget.borderRaduis))),
              titlePadding: EdgeInsets.zero,
              contentPadding: EdgeInsets.symmetric(horizontal: 5.w),
              title: Container(
                width: double.infinity,            
                alignment: Alignment.centerRight,
                child: widget.titleActionwidget ?? Container()
              ),
              content: StatefulBuilder(builder: (context, setmodelState) {
                
                void handleKeyPressed(
                  String text,
                ) {
                  
                  if (text.isEmpty) {
                    if (widget.hanTextController.text.isNotEmpty) {
                      widget.hanTextController.text = widget.hanTextController.text
                          .toString()
                          .substring(
                              0, widget.hanTextController.text.toString().length - 1);
                      setmodelState(() {});
                    }
                  } else {
                  
                    if (widget.hanTextController.text.toString().length < widget.textInputLenght) {

                      if(text=="." && widget.hanTextController.text.contains(".")){

                      }
                      else{
                        if(widget.hanTextController.text.contains(".")){
                      if ( widget.hanTextController.text.substring(widget.hanTextController.text.toString().lastIndexOf(".")).length<= 2){
                         widget.hanTextController.text += text;
                      setmodelState(() {});

                      }

                        }
                        else{
                      widget.hanTextController.text += text;
                      setmodelState(() {});
                        }
                      }
                    }
                  }
                }
    
                Column KeyBoard() {
                  return Column(
                    children: [
                      Container(
                          padding: EdgeInsets.symmetric(horizontal: 20.w),
                          margin: EdgeInsets.only(top: 5.h),
                          child: Column(children: <Widget>[
                            Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: <Widget>[
                                  ElevatedButton(
                                    onPressed: () {
                                      handleKeyPressed("1");
                                    },
                                    style: ButtonStyle(
                                        alignment: Alignment.center,
                                        shape: MaterialStateProperty.all<
                                                OutlinedBorder>(
                                            RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(10))),
                                        foregroundColor:
                                            MaterialStateProperty.all<Color>(
                                                widget.foregroundColor),
                                        backgroundColor:
                                            MaterialStateProperty.all<Color>(
                                                widget.buttonBackgroundColor),
                                        overlayColor:
                                            MaterialStateProperty.all<Color>(
                                                Colors.grey.shade100)),
                                    child: Text('1',
                                        style: TextStyle(
                                            fontSize: widget.buttonTextFontSize,
                                            color: widget.buttonTextColor,
                                            fontWeight: FontWeight.w400)),
                                  ),
                                  ElevatedButton(
                                    onPressed: () {
                                      handleKeyPressed("2");
                                    },
                                    style: ButtonStyle(
                                        alignment: Alignment.center,
                                        shape: MaterialStateProperty.all<
                                                OutlinedBorder>(
                                            RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(10))),
                                        foregroundColor:
                                            MaterialStateProperty.all<Color>(
                                                widget.foregroundColor),
                                        backgroundColor:
                                            MaterialStateProperty.all<Color>(
                                                widget.buttonBackgroundColor),
                                        overlayColor:
                                            MaterialStateProperty.all<Color>(
                                                Colors.grey.shade100)),
                                    child: Text('2',
                                        style: TextStyle(
                                            fontSize: widget.buttonTextFontSize,
                                            color: widget.buttonTextColor,
                                            fontWeight: FontWeight.w400)),
                                  ),
                                  ElevatedButton(
                                    onPressed: () {
                                      handleKeyPressed(
                                        "3",
                                      );
                                    },
                                    style: ButtonStyle(
                                        alignment: Alignment.center,
                                        shape: MaterialStateProperty.all<
                                                OutlinedBorder>(
                                            RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(10))),
                                        foregroundColor:
                                            MaterialStateProperty.all<Color>(
                                                widget.foregroundColor),
                                        backgroundColor:
                                            MaterialStateProperty.all<Color>(
                                                widget.buttonBackgroundColor),
                                        overlayColor:
                                            MaterialStateProperty.all<Color>(
                                                Colors.grey.shade100)),
                                    child: Text('3',
                                        style: TextStyle(
                                            fontSize: widget.buttonTextFontSize,
                                            color: widget.buttonTextColor,
                                            fontWeight: FontWeight.w400)),
                                  )
                                ]),
                            Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: <Widget>[
                                  ElevatedButton(
                                    onPressed: () {
                                      handleKeyPressed(
                                        "4",
                                      );
                                    },
                                    style: ButtonStyle(
                                        alignment: Alignment.center,
                                        shape: MaterialStateProperty.all<
                                                OutlinedBorder>(
                                            RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(10))),
                                        foregroundColor:
                                            MaterialStateProperty.all<Color>(
                                                widget.foregroundColor),
                                        backgroundColor:
                                            MaterialStateProperty.all<Color>(
                                                widget.buttonBackgroundColor),
                                        overlayColor:
                                            MaterialStateProperty.all<Color>(
                                                Colors.grey.shade100)),
                                    child: Text('4',
                                        style: TextStyle(
                                            fontSize: widget.buttonTextFontSize,
                                            color: widget.buttonTextColor,
                                            fontWeight: FontWeight.w400)),
                                  ),
                                  ElevatedButton(
                                    onPressed: () {
                                      handleKeyPressed(
                                        "5",
                                      );
                                    },
                                    style: ButtonStyle(
                                        alignment: Alignment.center,
                                        shape: MaterialStateProperty.all<
                                                OutlinedBorder>(
                                            RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(10))),
                                        foregroundColor:
                                            MaterialStateProperty.all<Color>(
                                                widget.foregroundColor),
                                        backgroundColor:
                                            MaterialStateProperty.all<Color>(
                                                widget.buttonBackgroundColor),
                                        overlayColor:
                                            MaterialStateProperty.all<Color>(
                                                Colors.grey.shade100)),
                                    child: Text('5',
                                        style: TextStyle(
                                            fontSize: widget.buttonTextFontSize,
                                            color: widget.buttonTextColor,
                                            fontWeight: FontWeight.w400)),
                                  ),
                                  ElevatedButton(
                                    onPressed: () {
                                      handleKeyPressed(
                                        "6",
                                      );
                                    },
                                    style: ButtonStyle(
                                        alignment: Alignment.center,
                                        shape: MaterialStateProperty.all<
                                                OutlinedBorder>(
                                            RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(10))),
                                        foregroundColor:
                                            MaterialStateProperty.all<Color>(
                                                widget.foregroundColor),
                                        backgroundColor:
                                            MaterialStateProperty.all<Color>(
                                                widget.buttonBackgroundColor),
                                        overlayColor:
                                            MaterialStateProperty.all<Color>(
                                                Colors.grey.shade100)),
                                    child: Text('6',
                                        style: TextStyle(
                                            fontSize: widget.buttonTextFontSize,
                                            color: widget.buttonTextColor,
                                            fontWeight: FontWeight.w400)),
                                  )
                                ]),
                            Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: <Widget>[
                                  ElevatedButton(
                                    onPressed: () {
                                      handleKeyPressed(
                                        "7",
                                      );
                                    },
                                    style: ButtonStyle(
                                        alignment: Alignment.center,
                                        shape: MaterialStateProperty.all<
                                                OutlinedBorder>(
                                            RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(10))),
                                        foregroundColor:
                                            MaterialStateProperty.all<Color>(
                                                 widget.foregroundColor),
                                        backgroundColor:
                                            MaterialStateProperty.all<Color>(
                                                widget.buttonBackgroundColor),
                                        overlayColor:
                                            MaterialStateProperty.all<Color>(
                                                Colors.grey.shade100)),
                                    child: Text('7',
                                        style: TextStyle(
                                            fontSize: widget.buttonTextFontSize,
                                            color: widget.buttonTextColor,
                                            fontWeight: FontWeight.w400)),
                                  ),
                                  ElevatedButton(
                                    onPressed: () {
                                      handleKeyPressed(
                                        "8",
                                      );
                                    },
                                    style: ButtonStyle(
                                        alignment: Alignment.center,
                                        shape: MaterialStateProperty.all<
                                                OutlinedBorder>(
                                            RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(10))),
                                        foregroundColor:
                                            MaterialStateProperty.all<Color>(
                                                 widget.foregroundColor),
                                        backgroundColor:
                                            MaterialStateProperty.all<Color>(
                                                widget.buttonBackgroundColor),
                                        overlayColor:
                                            MaterialStateProperty.all<Color>(
                                                Colors.grey.shade100)),
                                    child: Text('8',
                                        style: TextStyle(
                                            fontSize: widget.buttonTextFontSize,
                                            color: widget.buttonTextColor,
                                            fontWeight: FontWeight.w400)),
                                  ),
                                  ElevatedButton(
                                    onPressed: () {
                                      handleKeyPressed(
                                        "9",
                                      );
                                    },
                                    style: ButtonStyle(
                                        alignment: Alignment.center,
                                        shape: MaterialStateProperty.all<
                                                OutlinedBorder>(
                                            RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(10))),
                                        foregroundColor:
                                            MaterialStateProperty.all<Color>(
                                                 widget.foregroundColor),
                                        backgroundColor:
                                            MaterialStateProperty.all<Color>(
                                                widget.buttonBackgroundColor),
                                        overlayColor:
                                            MaterialStateProperty.all<Color>(
                                                Colors.grey.shade100)),
                                    child: Text('9',
                                        style: TextStyle(
                                          fontWeight: FontWeight.normal,
                                          fontSize: widget.buttonTextFontSize,
                                          color: widget.buttonTextColor,
                                        )),
                                  )
                                ]),
                          ])),
                      Container(
                        margin: EdgeInsets.only(bottom: 5.0.h),
                        padding: EdgeInsets.symmetric(horizontal: 20.w),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              ElevatedButton(
                                onPressed: () {
                                  handleKeyPressed(
                                    ".",
                                  );
                                },
                                style: ButtonStyle(
                                  
                                    alignment: Alignment.center,
                                    shape:
                                        MaterialStateProperty.all<OutlinedBorder>(
                                            RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(10))),
                                    foregroundColor:
                                        MaterialStateProperty.all<Color>(
                                            widget.foregroundColor),
                                    backgroundColor:
                                        MaterialStateProperty.all<Color>(
                                            widget.buttonBackgroundColor),
                                    overlayColor:
                                        MaterialStateProperty.all<Color>(
                                            Colors.grey.shade100)),
                                child: Text('.',
                                    style: TextStyle(
                                      
                                      fontWeight: FontWeight.bold,
                                      fontSize: widget.buttonTextFontSize+5,
                                      color: widget.buttonTextColor,
                                    )),
                              ),
                              ElevatedButton(
                                onPressed: () {
                                  handleKeyPressed(
                                    "0",
                                  );
                                },
                                style: ButtonStyle(
                                    alignment: Alignment.center,
                                    shape:
                                        MaterialStateProperty.all<OutlinedBorder>(
                                            RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(10))),
                                    foregroundColor:
                                        MaterialStateProperty.all<Color>(
                                            widget.foregroundColor),
                                    backgroundColor:
                                        MaterialStateProperty.all<Color>(
                                            widget.buttonBackgroundColor),
                                    overlayColor:
                                        MaterialStateProperty.all<Color>(
                                            Colors.grey.shade100)),
                                child: Text('0',
                                    style: TextStyle(
                                      fontWeight: FontWeight.normal,
                                      fontSize: widget.buttonTextFontSize,
                                      color: widget.buttonTextColor,
                                    )),
                              ),
                              ElevatedButton(
                                onPressed: () {
                                  HapticFeedback.lightImpact();
                                  handleKeyPressed(
                                    "",
                                  );
                                },
                                style: ButtonStyle(
                                    alignment: Alignment.center,
                                    shape:
                                        MaterialStateProperty.all<OutlinedBorder>(
                                            RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(10))),
                                    foregroundColor:
                                        MaterialStateProperty.all<Color>(
                                            widget.foregroundColor),
                                    backgroundColor:
                                        MaterialStateProperty.all<Color>(
                                            widget.buttonBackgroundColor),
                                    overlayColor:
                                        MaterialStateProperty.all<Color>(
                                            Colors.grey.shade100)),
                                child: Icon(
                                  Icons.backspace,
                                  color: widget.buttonTextColor,
                                  size: 25.w,
                                ),
                              ),
                            ]),
                      ),
                      SizedBox(
                        height: 20.h,
                      )
                    ],
                  );
                }
    
                return SingleChildScrollView(
                  child: Wrap(
                    children: [
                      Container(
                       margin: EdgeInsets.only(top: 25.h),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10.w),
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 5.w),
                          width: double.infinity,
                          height: 40.h,
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                 widget.titleText,
                                  style: TextStyle(
                                      fontSize: 40.sp, color: widget.buttonTextColor),
                                ),
                                Expanded(
                                    child: AutoSizeText(
                                  widget.hanTextController.text,
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                      color: widget.buttonTextColor,
                                      fontSize: 50.sp,
                                      fontWeight: FontWeight.bold),
                                )),
                              ]),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 15.w),
                        width: double.infinity,
                        child: Text(
                          widget.subTitleText,
                          textAlign: TextAlign.left,
                          style: TextStyle(fontSize: 14.sp),
                        ),
                      ),
                      SizedBox(
                        height: 30.h,
                      ),
                      KeyBoard(),
                      Container(
                        child: Row(
                          children: [
                           widget.showActionButton ? Expanded(
                              child: ElevatedButton(
                                onPressed:widget.actionButtonPressed ?? () {
                                  widget.hanTextController.clear();
                                  setState(() {
                                    
                                  });
                                },
                                child: Text(
                                  widget.actionButtonText,
                                  style: TextStyle(fontSize: 15.sp),
                                ),
                                style: ButtonStyle(
                                    fixedSize: MaterialStateProperty.all<Size>(
                                        Size.fromHeight(50.h)),
                                     elevation: MaterialStateProperty.all<double>(
                                      widget.actionButtonsElevation
                                    ),
                                    backgroundColor:
                                        MaterialStateProperty.all<Color>(
                                            Colors.red),
                                    shape: MaterialStateProperty.all<
                                            RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(10.r),
                                            ),
                                            side:const BorderSide(
                                                color:Colors.transparent)))),
                              ),
                            ) : Container(),
                           widget.showActionButton ?  SizedBox(
                              width: 20.w,
                            ) : Container(),
                            Expanded(
                              child: ElevatedButton(
                                onPressed:   () => widget.onSecodActionButtonPressed(widget.hanTextController.text),
                                
                                child: Text(
                                  widget.secondActionButtonText,
                                  style: TextStyle(fontSize: 15.sp),
                                ),
                                style: ButtonStyle(
                                    fixedSize: MaterialStateProperty.all<Size>(
                                        Size.fromHeight(50.h)),
                                    
                                    elevation: MaterialStateProperty.all<double>(
                                      widget.actionButtonsElevation
                                    ),
                                    backgroundColor:
                                        MaterialStateProperty.all<Color>(
                                            widget.foregroundColor),
                                    shape: MaterialStateProperty.all<
                                            RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(10.r),
                                            ),
                                            side:const BorderSide(
                                                color:Colors.transparent)))),
                              ),
                            ),
                          ],
                        ),
                        height: 35.h,
                        width: double.infinity,
                        padding: EdgeInsets.symmetric(horizontal: 20.w),
                        margin: EdgeInsets.only(bottom: 30.h),
                        decoration: BoxDecoration(
                        color: widget.backgroundColor,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10.r),
                              topRight: Radius.circular(10.r),
                            )),
                      )
                    ],
                  ),
                );
              }));
      }
    );
  }
}
