//
// arg 0 = point 1
// arg 1 = bend point 
// arg 2 = point 2
// arg 3 = object dot name
// arg 4 = final dot in line 
// arg 5 = number of dots placed
//

while t < 1 {
    //creating line from 1 - bend
    a = instance_create((1 - t) * argument[0].x + t*(argument[2].x), ((1 - t) * argument[0].y + t*(argument[2].y)), argument[3])
    with a {
    scaling(10)
    }
    //creating line bend to 2
    b = instance_create((1 - t) * argument[2].x + t*(argument[1].x), ((1 - t) * argument[2].y + t*(argument[1].y)), argument[3])
    with b {
    scaling(10)
    }
    c = instance_create((1 - t) * a.x + t*(b.x), ((1 - t) * a.y + t*(b.y)), argument[4])
    t += 1/ (argument[5])
}
