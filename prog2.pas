uses 
    GraphABC;
const
    iter = 2;
    x_max = 500;
    y_max = 500;
    tr_num = 4;
    tr:array[1..tr_num,1..6] of real = ((1/4,0,0,1/4,0,1/8),(1/4,0,0,1/4,3/4,1/8),(1/2,0,0,1/2,1/4,0),(1/2,0,0,1/2,1/4,1/2));
type
    Mass = array[0..y_max,0..x_max] of byte;
procedure SetZero(var m:Mass);
var x,y:integer;
    Color: Word;
 
begin
for y:=0 to y_max do
    for x:=0 to x_max do
        m[y,x]:=0;
end;
var
    i,j,k,l,x,y,dr,dm,c1,c2,c3,c4:integer;
    S,T:Mass;
begin
  c1:=250;
  c2:=250;
  c3:= x_max;
  c4:= y_max;
  for i:=y_max div 4 to 3*y_max div 4 do
    for j:=x_max div 4 to 4*x_max div 4 do
        T[i,j]:=1;
    
    
    for j:=0 to 10000 do begin
      l:= random(1,4);       
                    
      x:=Round(tr[l,1]*c1+tr[l,2]*c2+tr[l,5]*c3);
      y:=Round(tr[l,3]*c1+tr[l,4]*c2+tr[l,6]*c4);
      c1 := x;
      c2 := y;
      
    end;
    for j:=0 to 10000 do begin
      l := random(1,4);                  
      x:=Round(tr[l,1]*c1+tr[l,2]*c2+tr[l,5]*c3);
      y:=Round(tr[l,3]*c1+tr[l,4]*c2+tr[l,6]*c4);
      c1 := x;
      c2 := y;
      PutPixel(x,y,clTeal);
    end;
          
readln
end.