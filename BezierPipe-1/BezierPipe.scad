function BEZ03(u) = pow((1-u), 3);
function BEZ13(u) = 3*u*(pow((1-u),2));
function BEZ23(u) = 3*(pow(u,2))*(1-u);
function BEZ33(u) = pow(u,3);


function PointOnBezCubic3D(p0, p1, p2, p3, u) = [
	BEZ03(u)*p0[0]+BEZ13(u)*p1[0]+BEZ23(u)*p2[0]+BEZ33(u)*p3[0],
	BEZ03(u)*p0[1]+BEZ13(u)*p1[1]+BEZ23(u)*p2[1]+BEZ33(u)*p3[1],
	BEZ03(u)*p0[2]+BEZ13(u)*p1[2]+BEZ23(u)*p2[2]+BEZ33(u)*p3[2]];

c=[[0,0,0],[4,5,6],[8,10,12],[10,15,0]];


difference()
{

for(step = [0:1000])
	{
		
	translate(PointOnBezCubic3D(c[0], c[1], c[2],c[3], step/1000))
		color([1,0,1])
		sphere(r=1,$fn=100);
						
		
	}
	
	
for(step = [0:1000])
	{
		
	translate(PointOnBezCubic3D(c[0]-.5, c[1], c[2],c[3]+.5, step/1000))
		color([1,0,0])
		sphere(r=.51,$fn=100);
						
	}
	}



