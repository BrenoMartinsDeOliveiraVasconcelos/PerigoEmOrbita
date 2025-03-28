function calculate_angulation(xa, ya, xb, yb){	
	var cosene = (xa*xb + ya*yb)/(sqrt(sqr(xa) + sqr(ya)) * sqrt(sqr(xb) + sqr(yb)))
	
	return arccos(cosene)
}