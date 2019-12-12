$title Piecewise Linear Function include file
$ontext
This include file provides some symbol and macro definition for providing
piecewise linear functions in GAMS in a convenient way. Piecewise linear
functions are provided in terms of segments. Each segment has a
(x,y) coordinate point, a (potentially infinite) length, and a slope. The
sign of the length data determines if the segment expands to the left (negative
length) or the right (positive length) of the (x,y) point. These segment
definitions allow more that pure piecewise linear functions. Segments can
overlap and there can be holes in the x coordinate space. There is also no
order requirement of the segment x coordinates.

Each segment has two variables associated: a binary variable that enables the
segment to be used. Clearly only one segment can be active. The other variable
is a positive variable (upper bound of this variable is the |length| of the
segment. This variable shows how far we went into this segment from the starting
point (x,y).

A piecewise linear function is described by a parameter f(seg,hdr). In case f
needs to be an indexed parameter (multiple functions), this include
file needs to be called with an additional argument: the additional index
set(s) of f (first position in f).

This include file declares a macro that compues the f(x) value for a given x in
assigment statements (f_Func). If also contains declarations and definitions
of variables and equations to represent the piecewise linear function in a
model. In some models we want to use a piecewise linear function at different
input with different endogenous x values. While the exogenous function
information does not change, we need to index the variables/equations for the
linearization of the function call in the model. That is why we can supply as
the 8th and 9th argument an index and a dynamic set over these indices, to
connect multiple input and outputs to the same piecewise linear function.

If the piecewise linear function contains segments of infinite length,
the usual bigM trick segX <= L*sigB does not work. In this case we form a
SOS1 constraint with the variables segX and 1-sigB. This has the same effect as
the bigM constraint, but is independent of the length of the segment and hence
also works with infinite length. While the required variables and equations will
be declared, the model will only contain such constructs if segments with
infinite length exist.

The endogenous input parameter of a piecewise linear function can be couple
to a model variable by using the marco (which expands into an expression) f_x.
In a similar fashion the function value f(x) can be connected to a model
variable using f_y.
$offtext

$if not defined PwlSeg__ set PwlSeg__  SOS1 segments / pwls1__,pwls2__ /;

$if x%1==x $error pwlfunc needs prefix as first argument
$if x%2==x $error pwlfunc needs segment set as second argument
$if x%3==x $error pwlfunc needs x coordinate label as third argument
$if x%4==x $error pwlfunc needs y coordinate label as fourth argument
$if x%5==x $error pwlfunc needs length label as fifth argument
$if x%6==x $error pwlfunc needs slope label as sixth argument

$set p %1
$ifthen not x%7==x
$  set PWLExtraIndex %7
$  set xc  %PWLExtraIndex%,
$  set cx ,%PWLExtraIndex%
$  set xd (%PWLExtraIndex%)
$else
$  set xc
$  set cx
$  set xd
$endif
$ifthen not x%8==x
$  set EDPWLExtraIndex %8
$  set yc    %EDPWLExtraIndex%,
$  set cy   ,%EDPWLExtraIndex%
$  set xyc  %xc%%EDPWLExtraIndex%
$  set yd   (%EDPWLExtraIndex%)
$  set xyd (%xc%%EDPWLExtraIndex%)
$else
$  set yc
$  set cy
$  set xyc   %7
$  set yd
$  set xyd   %xd%
$endif
$ifthen not x%9==x
$  if x%8==x $abort dynamic set requires domain
$  set dynEDPWLExtraIndex %9
$  set cond and %dynEDPWLExtraIndex%%yd%
$  set cond2 $%dynEDPWLExtraIndex%%yd%
$else
$  set cond
$  set cond2
$endif

$set seg  %xc%%2
Set %p%_Seg(%seg%); option %p%_Seg<%p%;

* The segements in FPwl may be overlapping and so f might not describe a
* well defined function. So we need to make sure that for a given x we
* return a single f(x). SMin and SMax are a possible choice for this
$macro %p%_Func(arg%cx%) \
  smin(%p%_Seg(%seg%)$(%p%(%seg%,'%5')=0 and abs(arg-%p%(%seg%,'%3'))<1e-6 and &\
                                         arg-1e-6<=%p%(%seg%,'%3')+%p%(%seg%,'%5')  \
                or %p%(%seg%,'%5')>-1e-6 and arg-1e-6>=%p%(%seg%,'%3') and &\
                                         arg-1e-6<=%p%(%seg%,'%3')+%p%(%seg%,'%5')  \
                or %p%(%seg%,'%5')<+1e-6 and arg-1e-6<=%p%(%seg%,'%3') and &\
                                         arg+1e-6>=%p%(%seg%,'%3')+%p%(%seg%,'%5')),\
                   %p%(%seg%,'%4')+ (arg-%p%(%seg%,'%3'))*%p%(%seg%,'%6'))

* Declaration of subset of active segments of the function and variables and
* equations to describe the piecewise linear function linearly.
$setglobal %p%_EquList def%p%Seg,def%p%One,def%p%inf1,def%p%inf2

Positive Variable %p%Seg(%seg%%cy%);
Binary Variable %p%Bin(%seg%%cy%);
Equation def%p%Seg(%seg%%cy%), def%p%One%xyd%;
def%p%Seg(%p%_Seg(%seg%)%cy%)$(abs(%p%(%seg%,'%5'))<>inf %cond%)..
  %p%Seg(%seg%%cy%) =l= abs(%p%(%seg%,'%5'))*%p%Bin(%seg%%cy%);
def%p%One%xyd%%cond2%.. sum(%p%_Seg(%seg%), %p%Bin(%seg%%cy%)) =e= 1;
Equation def%p%inf1(%seg%%cy%), def%p%inf2(%seg%%cy%);
SOS1 Variable %p%SOS1(%seg%%cy%,PwlSeg__);
def%p%inf1(%p%_Seg(%seg%)%cy%)$(abs(%p%(%seg%,'%5'))=inf %cond%)..
  1-%p%Bin(%seg%%cy%) =e= %p%SOS1(%seg%%cy%,'pwls1__');
def%p%inf2(%p%_Seg(%seg%)%cy%)$(abs(%p%(%seg%,'%5'))=inf %cond%)..
    %p%Seg(%seg%%cy%) =e= %p%SOS1(%seg%%cy%,'pwls2__');

* The following macros define the x and y parts which can be connected
* to existing variables in the model
$if     x%xyc%==x $macro %p%_x \
$if not x%xyc%==x $macro %p%_x(%xyc%) \
  sum(%p%_Seg(%seg%), %p%Bin(%seg%%cy%)*%p%(%seg%,'%3') \
                    + %p%Seg(%seg%%cy%)*sign(%p%(%seg%,'%5')))
$if     x%xyc%==x $macro %p%_y \
$if not x%xyc%==x $macro %p%_y(%xyc%) \
  sum(%p%_Seg(%seg%), %p%Bin(%seg%%cy%)*%p%(%seg%,'%4') \
    + %p%Seg(%seg%%cy%)*%p%(%seg%,'%6')*sign(%p%(%seg%,'%5')))
