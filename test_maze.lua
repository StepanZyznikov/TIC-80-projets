-- title:  test maze
-- author: Stepan Zyznikov
-- desc:   just a test of potential of TIC-80
-- script: lua

t=0                       -- variables
x=120
y=112
you_could_exit=0

function TIC()
	if (btn(0)       and     -- input
	    time()-t>200 and
			  mget(x/8,y/8-1)~=0)
	then y=y-8 t=time() end
	
	if (btn(1)       and 
					time()-t>200 and 
    	mget(x/8,y/8+1)~=0) 
	then y=y+8 t=time() end
	
	if (btn(2)       and 
					time()-t>200 and 
					mget(x/8-1,y/8)~=0) 
 then x=x-8 t=time() end
	
	if (btn(3)       and 
	    time()-t>200 and
	    mget(x/8+1,y/8)~=0) 
	then x=x+8 t=time() end
	
	if  (btn(4) and you_could_exit==1)
 then exit() end
	
	if x<0    then x=0   end --screen
	if y<0    then y=0   end --limits
	if x>232  then x=232 end
	if y>120  then y=120 end
	
	cls()                    --output
	map(0,0,32,16,0,0,1,1,1)
	spr(260,x,y,0,1,0,0,2,2)
	print(x,8,8 ,0)
	print(y,8,16,0)
	print(t,8,24,0)
	
	if   mget(x/8,y/8)==2
	then print("YOU WIN!",84,84,4)
			print("press Z to exit",84,92,4)
			you_could_exit=1 end
end
