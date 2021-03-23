-- title:  test maze
-- author: Stepan Zyznikov
-- desc:   just a test of potential of TIC-80
-- script: lua

a={
 x=100,    --starting position
 y=25,
 r=10,		 --radius of ball
 vx=0, 		 --speed 
 vy=1,
 g=0.3,    --gravity acceleration
 ReCo=0.95 --rebound coufficient
}

function TIC()

 if btn(0) then a.vy=a.vy-1   end
 if btn(1) then a.vy=a.vy+1   end
 if btn(2) then a.vx=a.vx-1   end
 if btn(3) then a.vx=a.vx+1   end
 if btn(4) then a.vx=0 a.vy=0 end
	
 a.vy=a.vy+a.g
 a.x=a.x+a.vx
 a.y=a.y+a.vy
 if  a.x>240-a.r then
     a.x=480-2*a.r-a.x
     a.vx=-a.vx*a.ReCo
 end
 if a.x<a.r then 
    a.x=2*a.r-a.x
    a.vx=-a.vx*a.ReCo
 end
 if  a.y>136-a.r then
     a.y=272-2*a.r-a.y
     a.vy=-a.vy*a.ReCo
 end
 if  a.y<a.r then
     a.y=2*a.r-a.y
     a.vy=-a.vy*a.ReCo
 end
	
 cls(12)
 circ(a.x,a.y,a.r,0)
 circ(a.x,a.y,a.r-1,12)
 --print(a.x,10,10,4)
 --print(a.y,10,20,4)
 --print(a.vx,10,30,4)
 --print(a.vy,10,40,4)
end
