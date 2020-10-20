# SimpleLog
Lightweight Log-Unit for Pascal

## Description

SimpleLog is a Class, so you can Log in how many 'Channels' as you want. You have to open the class with a Filename. 
For example:

  uses
  simplelog;

  MyLog: SimpleLog.Logger;  // Defines the Var
  
  begin
    MyLog := SimpleLog.Logger.create(\<Filename\>);  // Opens the Log-Instance and File for write
    .....
  
  end;

This Opens the Instance and try to create a File \<Filename\>. You can also  append the whole path to \<Filename\> like \<Path + Filename\>.
If you want to Log something ... great ... there you can it simple by insert following line to your code:
  
  MyLog.Log(\<Your Message\>);
  
You don't have to add a timestamp, the logger will do it for you, so possible log looks like this:

20-10-20 06:11:32: ---<<<* Start of Log *>>>-----<br>
20-10-20 06:11:32: \<Your Message\><br>
20-10-20 06:11:32: \<Your Message\><br>
....<br>
20-10-20 06:11:32: \<Your Message\><br>
20-10-20 06:11:32: \<Your Message\><br>
20-10-20 06:11:32: ----<<<* End of Log *>>>-----<br>

The Logfile closes, when you exit your program or you can call:

  MyLog.done();
  
### Important:
On every new Run of the Program, the Logfile will be overwritten!

## License:
GPL 3.0

## Requirements:
Unit Classes and SysUtils.

## Compatibility:
Developed under Lazarus with FreePascal.<br>
Not Testet, but should work with other Pascal-Compiler, which supports OOP.

