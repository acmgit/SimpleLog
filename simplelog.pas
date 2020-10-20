unit SimpleLog;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils;

  type Logger = Class
      private
      var
            Filehandle: text;

      public
            constructor create(Filename: string);
            destructor done;
            function Int2String(value :integer = 0): string;
            procedure Log(Report: string);

      end; // type

implementation

        constructor Logger.create(Filename: string);
        begin
             Assign(FileHandle, Filename);             //Set Filename and Filehandle
             try
                rewrite(FileHandle);                   // Open the file new for writing
                Log('---<<<* Start of Log *>>>-----');

             finally                                   // Ups, something going wrong

             end; // try

        end; // constructor()

        destructor Logger.done;
        begin
             try
                Log('----<<<* End of Log *>>>-----');
                Close(Filehandle);

             finally

             end;

        end; // destructor

        function Logger.Int2String(value :integer = 0): string;
        var
             text: string = '';

        begin
             Str(value, text);
             Result := text;

        end; // Int2String()

        procedure Logger.Log(Report: string);
        var
             message: string;
        begin
                  try
                     message := DateTimeToStr(Now) + ': ' + Report;
                     Writeln(Filehandle,message);
                     flush(Filehandle);

                  finally                       // Ups, there is something wrong ..

                  end; // try

        end; // Log(

end.

