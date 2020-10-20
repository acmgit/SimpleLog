program Random;
  {$DEFINE DBG}   // Insert the Logs
  uses
  {$IFDEF DBG}
  simplelog,
  {$ENDIF}
  math;

  var
    i: Longint;
    {$IFDEF DBG}
    MyLog: SimpleLog.Logger;
    {$ENDIF}

begin
     {$IFDEF DBG}
     MyLog := SimpleLog.Logger.create('./Random.log');
     {$ENDIF}
     randomize;
     for i := 1 to 10 do
     begin
         writeln(randomrange(1,6));
         {$IFDEF DBG}
         MyLog.Log('Number ' + MyLog.Int2String(i) + ' done.');
         {$ENDIF}
     end;

     {$IFDEF DBG}
     MyLog.done;
     {$ENDIF}
end.

