### Schedule

```scala
val up   = cast(int16_t)(_)   
def rowsF(m: Matrix2, p:Point2) = m(p-(0,1)) + 2*m(p) + m(p+(0,1))
def colsF(m: Matrix2, p:Point2) = m(p-(1,1)) + 2*m(p) + m(p+(1,0))
val down = cast(int8_t)(_ + 8 >> 4)

val rows = Conv(rowsF, Shape2(3,1))
val cols = Conv(colsF, Shape2(1,3))

val mySpec = Compose(up, rows, cols, down)

// We want to compute the output in a single fused stage. However, we will compute it 
// in tiles of 1x128 (1 rows, 128 columns) or more generally 1xW, where W is the 
// number of output elements that can fit into a single HVX vector 
for ((B,A) <- mySpec(output,input).slices(Tiling2(1,128)) {
    mySpec(B,A).eval(fourVecs)
}

def fourVecs(B: View(Shape2(1,128))     // B is ref to a 1-vector slice of output
             A: View(Shape2(3,130))) =  // A is ref to a 3-row slice of input
{
    B = mySpec(A).decompose(Move -> Matrix(??) -> stage2)
}

```