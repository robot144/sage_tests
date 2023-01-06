︠fce1b123-c727-4d73-ab8d-e1e0f3ff724bi︠
%md
# Shortest path and line integrals

Let $(x(t),y(t))$ be a path from $a=(x_0,y_0)$ to $b=(x_T,y_T)$, ie $(x(0),y(0))=(x_0,y_0)$ and $(x(T),y(T))=(x_T,y_T)$, then we want to find the fastest path, or the minimum for $T$.

First consider a constant velocity and rewrite $T=\int 1/|v|ds$, where the line integral follows a path from $a$ to $b$. It is convenient to start with a path with a parameter running from $0$ to $Q$ with coordinates along the path $x(q),y(q)$. The line integral can now be written as:

$T=\int_0^Q 1/v |ds/dq| dq$.
︡0971f59a-ae33-477a-ae77-c4c26cd124dd︡{"done":true,"md":"# Shortest path and line integrals\n\nLet $(x(t),y(t))$ be a path from $a=(x_0,y_0)$ to $b=(x_T,y_T)$, ie $(x(0),y(0))=(x_0,y_0)$ and $(x(T),y(T))=(x_T,y_T)$, then we want to find the fastest path, or the minimum for $T$.\n\nFirst consider a constant velocity and rewrite $T=\\int 1/|v|ds$, where the line integral follows a path from $a$ to $b$. It is convenient to start with a path with a parameter running from $0$ to $Q$ with coordinates along the path $x(q),y(q)$. The line integral can now be written as:\n\n$T=\\int_0^Q 1/v |ds/dq| dq$."}
︠f5f9f247-aebd-4a68-905f-f45710c0cb49i︠
%md
## Computation of the gradient
︡cb18c867-e77d-4eef-9ec7-a6e1a193fb61︡{"done":true,"md":"## Computation of the gradient"}
︠672b98cd-e023-4062-8268-44ffda7fe85ei︠
%md
With the aim to compute the gradient of $T$ with respect to pertubations of the path, let's perturb the path with a small change $\epsilon(\delta x(q), \delta y(q)$. A nice trick is to start with the derivative w.r.t. $\epsilon$.


$dT/d\epsilon = \int_0^{\pi} \frac{dx/dq d\delta x/dq + dy/dq d\delta y/dq}{\sqrt{(dx/dq)^2+(dy/dq)^2}} dq$

Next apply integration by parts:

$dT/d\epsilon = \int_0^{\pi} d\delta x/dq \frac{dx/dq}{\sqrt{(dx/dq)^2+(dy/dq)^2}} dq + \int_0^{\pi} d\delta y/dq \frac{dy/dq }{\sqrt{(dx/dq)^2+(dy/dq)^2}} dq$

$dT/d\epsilon = - \int_0^{\pi} \delta x \frac{d}{dq} \left( \frac{dx/dq}{\sqrt{(dx/dq)^2+(dy/dq)^2}} \right) dq - \int_0^{\pi} \delta y \frac{d}{dq} \left( \frac{dy/dq}{\sqrt{(dx/dq)^2+(dy/dq)^2}} \right) dq$
$= - \int_0^{\pi} \frac{d e_r}{dq}\cdot \delta r {dq}$

with $e_r = \left( \frac{dx/dq}{|dr/dq|}, \frac{dy/dq}{|dr/dq|} \right) = \left( \frac{dx/dq}{|r'|}, \frac{dy/dq}{|r'|} \right)$

$d e_r/dq = \frac{d}{dq} \left( \frac{dx/dq}{|dr/dq|}, \frac{dy/dq}{|dr/dq|} \right)$
$= \left( \frac{d^2x/dq^2 }{|r'|} -  \frac{dx/dq ( dx/dq d^2x/dq^2 +dy/dq d^2y/dq^2) }{|r'|^3} , \frac{d^2y/dq^2 }{|r'|} -  \frac{dy/dq ( dx/dq d^2x/dq^2 +dy/dq d^2y/dq^2) }{|r'|^3} \right)$

$<d e_r/dq, e_r> = \left( \frac{d^2x/dq^2 }{|r'|} -  \frac{dx/dq ( dx/dq d^2x/dq^2 +dy/dq d^2y/dq^2) }{|r'|^3} \right) \frac{dx/dq}{|r'|} + \left( \frac{d^2y/dq^2 }{|r'|} -  \frac{dy/dq ( dx/dq d^2x/dq^2 +dy/dq d^2y/dq^2) }{|r'|^3} \right) \frac{dx/dq}{|r'|}$

$= \left( \frac{d^2x/dq^2 dx/dq}{|r'|^2} -  \frac{(dx/dq)^2 ( dx/dq d^2x/dq^2 +dy/dq d^2y/dq^2) }{|r'|^4} \right) + \left( \frac{d^2y/dq^2 dy/dq}{|r'|^2} -  \frac{(dy/dq)^2 ( dx/dq d^2x/dq^2 +dy/dq d^2y/dq^2) }{|r'|^4} \right)$

$= \left( \frac{d^2x/dq^2 dx/dq + d^2y/dq^2 dy/dq}{|r'|^2}  -  \frac{ ( dx/dq d^2x/dq^2 +dy/dq d^2y/dq^2) }{|r'|^2}  \right) =0$

In the direction perpendicular to this we have:

with $e_t = \left( -\frac{dy/dq}{|r'|}, \frac{dx/dq}{|r'|} \right)$

$<d e_r/dq, e_t> = - \left( \frac{d^2x/dq^2 }{|r'|} -  \frac{dx/dq ( dx/dq d^2x/dq^2 +dy/dq d^2y/dq^2) }{|r'|^3} \right) \frac{dy/dq}{|r'|} + \left( \frac{d^2y/dq^2 }{|r'|} -  \frac{dy/dq ( dx/dq d^2x/dq^2 +dy/dq d^2y/dq^2) }{|r'|^3} \right) \frac{dx/dq}{|r'|}$

$= - \left( \frac{d^2x/dq^2 dy/dq}{|r'|^2} -  \frac{dx/dq ( dx/dq dy/dq d^2x/dq^2 +dy/dq d^2y/dq^2) }{|r'|^4} \right)  + \left( \frac{d^2y/dq^2 dx/dq}{|r'|^2} -  \frac{dy/dq dx/dq( dx/dq d^2x/dq^2 +dy/dq d^2y/dq^2) }{|r'|^4} \right) $

$= \left(  \frac{-d^2x/dq^2 dy/dq + d^2y/dq^2 dx/dq}{|r'|^2}  \right) $

Finaly, we have:

$dT/d\epsilon = \int_0^{\pi} <d e_r/dq, (\delta x, \delta y) >  dq$

which makes $d e_r/dq$ the gradient here.
︡f24c8194-66e4-4603-94cd-52114d7fab1f︡{"done":true,"md":"With the aim to compute the gradient of $T$ with respect to pertubations of the path, let's perturb the path with a small change $\\epsilon(\\delta x(q), \\delta y(q)$. A nice trick is to start with the derivative w.r.t. $\\epsilon$.\n\n\n$dT/d\\epsilon = \\int_0^{\\pi} \\frac{dx/dq d\\delta x/dq + dy/dq d\\delta y/dq}{\\sqrt{(dx/dq)^2+(dy/dq)^2}} dq$\n\nNext apply integration by parts:\n\n$dT/d\\epsilon = \\int_0^{\\pi} d\\delta x/dq \\frac{dx/dq}{\\sqrt{(dx/dq)^2+(dy/dq)^2}} dq + \\int_0^{\\pi} d\\delta y/dq \\frac{dy/dq }{\\sqrt{(dx/dq)^2+(dy/dq)^2}} dq$\n\n$dT/d\\epsilon = - \\int_0^{\\pi} \\delta x \\frac{d}{dq} \\left( \\frac{dx/dq}{\\sqrt{(dx/dq)^2+(dy/dq)^2}} \\right) dq - \\int_0^{\\pi} \\delta y \\frac{d}{dq} \\left( \\frac{dy/dq}{\\sqrt{(dx/dq)^2+(dy/dq)^2}} \\right) dq$\n$= - \\int_0^{\\pi} \\frac{d e_r}{dq}\\cdot \\delta r {dq}$\n\nwith $e_r = \\left( \\frac{dx/dq}{|dr/dq|}, \\frac{dy/dq}{|dr/dq|} \\right) = \\left( \\frac{dx/dq}{|r'|}, \\frac{dy/dq}{|r'|} \\right)$\n\n$d e_r/dq = \\frac{d}{dq} \\left( \\frac{dx/dq}{|dr/dq|}, \\frac{dy/dq}{|dr/dq|} \\right)$\n$= \\left( \\frac{d^2x/dq^2 }{|r'|} -  \\frac{dx/dq ( dx/dq d^2x/dq^2 +dy/dq d^2y/dq^2) }{|r'|^3} , \\frac{d^2y/dq^2 }{|r'|} -  \\frac{dy/dq ( dx/dq d^2x/dq^2 +dy/dq d^2y/dq^2) }{|r'|^3} \\right)$\n\n$<d e_r/dq, e_r> = \\left( \\frac{d^2x/dq^2 }{|r'|} -  \\frac{dx/dq ( dx/dq d^2x/dq^2 +dy/dq d^2y/dq^2) }{|r'|^3} \\right) \\frac{dx/dq}{|r'|} + \\left( \\frac{d^2y/dq^2 }{|r'|} -  \\frac{dy/dq ( dx/dq d^2x/dq^2 +dy/dq d^2y/dq^2) }{|r'|^3} \\right) \\frac{dx/dq}{|r'|}$\n\n$= \\left( \\frac{d^2x/dq^2 dx/dq}{|r'|^2} -  \\frac{(dx/dq)^2 ( dx/dq d^2x/dq^2 +dy/dq d^2y/dq^2) }{|r'|^4} \\right) + \\left( \\frac{d^2y/dq^2 dy/dq}{|r'|^2} -  \\frac{(dy/dq)^2 ( dx/dq d^2x/dq^2 +dy/dq d^2y/dq^2) }{|r'|^4} \\right)$\n\n$= \\left( \\frac{d^2x/dq^2 dx/dq + d^2y/dq^2 dy/dq}{|r'|^2}  -  \\frac{ ( dx/dq d^2x/dq^2 +dy/dq d^2y/dq^2) }{|r'|^2}  \\right) =0$\n\nIn the direction perpendicular to this we have:\n\nwith $e_t = \\left( -\\frac{dy/dq}{|r'|}, \\frac{dx/dq}{|r'|} \\right)$\n\n$<d e_r/dq, e_t> = - \\left( \\frac{d^2x/dq^2 }{|r'|} -  \\frac{dx/dq ( dx/dq d^2x/dq^2 +dy/dq d^2y/dq^2) }{|r'|^3} \\right) \\frac{dy/dq}{|r'|} + \\left( \\frac{d^2y/dq^2 }{|r'|} -  \\frac{dy/dq ( dx/dq d^2x/dq^2 +dy/dq d^2y/dq^2) }{|r'|^3} \\right) \\frac{dx/dq}{|r'|}$\n\n$= - \\left( \\frac{d^2x/dq^2 dy/dq}{|r'|^2} -  \\frac{dx/dq ( dx/dq dy/dq d^2x/dq^2 +dy/dq d^2y/dq^2) }{|r'|^4} \\right)  + \\left( \\frac{d^2y/dq^2 dx/dq}{|r'|^2} -  \\frac{dy/dq dx/dq( dx/dq d^2x/dq^2 +dy/dq d^2y/dq^2) }{|r'|^4} \\right) $\n\n$= \\left(  \\frac{-d^2x/dq^2 dy/dq + d^2y/dq^2 dx/dq}{|r'|^2}  \\right) $\n\nFinaly, we have:\n\n$dT/d\\epsilon = \\int_0^{\\pi} <d e_r/dq, (\\delta x, \\delta y) >  dq$\n\nwhich makes $d e_r/dq$ the gradient here."}
︠8b2a5f0e-e012-4710-b8ff-3aa0ee1a6277︠
# compute the derivatives as a check with sage
q=var('q')
rx=function('rx')(q)
ry=function('ry')(q)
e_r_x=rx/sqrt(rx^2+ry^2)
e_r_y=ry/sqrt(rx^2+ry^2)
e_r = [e_r_x, e_r_y ]
derx_dq=diff(e_r_x,q)
dery_dq=diff(e_r_y,q)
show(derx_dq)
show(dery_dq)
print("gradient in direction of e_r")
der_dq_er = derx_dq*e_r_x+dery_dq*e_r_y
show(der_dq_er.full_simplify())
print("gradient in direction orthogonal to e_r")
der_dq_et = -derx_dq*e_r_y+dery_dq*e_r_x
show(der_dq_et.full_simplify())
︡48f54769-0d76-4b96-a37b-021ff10c320e︡{"html":"<div align='center'>$\\displaystyle -\\frac{{\\left({\\rm rx}\\left(q\\right) \\frac{\\partial}{\\partial q}{\\rm rx}\\left(q\\right) + {\\rm ry}\\left(q\\right) \\frac{\\partial}{\\partial q}{\\rm ry}\\left(q\\right)\\right)} {\\rm rx}\\left(q\\right)}{{\\left({\\rm rx}\\left(q\\right)^{2} + {\\rm ry}\\left(q\\right)^{2}\\right)}^{\\frac{3}{2}}} + \\frac{\\frac{\\partial}{\\partial q}{\\rm rx}\\left(q\\right)}{\\sqrt{{\\rm rx}\\left(q\\right)^{2} + {\\rm ry}\\left(q\\right)^{2}}}$</div>"}︡{"html":"<div align='center'>$\\displaystyle -\\frac{{\\left({\\rm rx}\\left(q\\right) \\frac{\\partial}{\\partial q}{\\rm rx}\\left(q\\right) + {\\rm ry}\\left(q\\right) \\frac{\\partial}{\\partial q}{\\rm ry}\\left(q\\right)\\right)} {\\rm ry}\\left(q\\right)}{{\\left({\\rm rx}\\left(q\\right)^{2} + {\\rm ry}\\left(q\\right)^{2}\\right)}^{\\frac{3}{2}}} + \\frac{\\frac{\\partial}{\\partial q}{\\rm ry}\\left(q\\right)}{\\sqrt{{\\rm rx}\\left(q\\right)^{2} + {\\rm ry}\\left(q\\right)^{2}}}$</div>"}︡{"stdout":"gradient in direction of e_r\n"}︡{"html":"<div align='center'>$\\displaystyle 0$</div>"}︡{"stdout":"gradient in direction orthogonal to e_r\n"}︡{"html":"<div align='center'>$\\displaystyle -\\frac{{\\rm ry}\\left(q\\right) \\frac{\\partial}{\\partial q}{\\rm rx}\\left(q\\right) - {\\rm rx}\\left(q\\right) \\frac{\\partial}{\\partial q}{\\rm ry}\\left(q\\right)}{{\\rm rx}\\left(q\\right)^{2} + {\\rm ry}\\left(q\\right)^{2}}$</div>"}︡{"done":true}
︠406d23ef-69b3-4c68-9619-255351de9deci︠
%md
## Example

Start with the initial path $(x(q),y(q)=(cos(q),sin(q))$ for $q \in [0,Q]$. With $v=1$ this results in

$T=\int_0^{\pi} \sqrt{(dx/dq)^2+(dy/dq)^2} dq = \int_0^{\pi} \sqrt{(sin(q))^2+(cos(x))^2} dq = \pi$

$e_r = \left( \frac{dx/dq}{|r'|}, \frac{dy/dq}{|r'|} \right)$

$dx/dq,dy/dq = (-sin(q),cos(q))$ , $r'=1$ thus $e_r = (-sin(q),cos(q))$.

$d e_r/dq = (-cos(q),-sin(q))$

$dT/d\epsilon = \int_0^{\pi} -cos(q) \delta x -sin(q) \delta y)  dq$

︡4ed5f756-eebb-4b86-800d-7192612a066c︡{"done":true,"md":"## Example\n\nStart with the initial path $(x(q),y(q)=(cos(q),sin(q))$ for $q \\in [0,Q]$. With $v=1$ this results in \n\n$T=\\int_0^{\\pi} \\sqrt{(dx/dq)^2+(dy/dq)^2} dq = \\int_0^{\\pi} \\sqrt{(sin(q))^2+(cos(x))^2} dq = \\pi$\n\n$e_r = \\left( \\frac{dx/dq}{|r'|}, \\frac{dy/dq}{|r'|} \\right)$\n\n$dx/dq,dy/dq = (-sin(q),cos(q))$ , $r'=1$ thus $e_r = (-sin(q),cos(q))$.\n\n$d e_r/dq = (-cos(q),-sin(q))$\n\n$dT/d\\epsilon = \\int_0^{\\pi} -cos(q) \\delta x -sin(q) \\delta y)  dq$"}
︠8f12fea0-7809-4d78-8647-69b22eb66b6bs︠
q=var('q')
x(q) = cos(q)
y(q) = sin(q)
grad_x(q)=-cos(q)
grad_y(q)=-sin(q)
delta=0.1
p1=parametric_plot((x(q),y(q)),(q,0,pi))
p2=parametric_plot((x(q)+delta*grad_x(q),y(q)+delta*grad_y(q)),(q,0,pi))

show(p1+p2)
print("This perturbation is missing tapering near the start and end points.")
print("Clearly a straight line is the fastest route for this simple problem.")
︡37f863a0-a783-4e80-9d04-2700b9a3e1a3︡{"file":{"filename":"/home/user/.sage/temp/project-f9826791-d305-4ebb-8807-ec0230b633c5/1291/tmp_jf8hkepz.svg","show":true,"text":null,"uuid":"304e0ae4-a404-4b37-bf39-222bed9d0c73"},"once":false}︡{"stdout":"This perturbation is missing tapering near the start and end points.\n"}︡{"stdout":"Clearly a straight line is the fastest route for this simple problem.\n"}︡{"done":true}
︠5609a542-5cc5-491c-bee2-a045ea44ca2ao︠

︡74cdfb00-aee3-4148-a4db-936d89017d28︡{"code":{"filename":null,"lineno":-1,"mode":"text/x-rst","source":"File: /ext/sage/9.5/local/var/lib/sage/venv-python3.9.9/lib/python3.9/site-packages/sage/misc/decorators.py\nSignature : parametric_plot(funcs, aspect_ratio=1.0, *args, **kwds)\nDocstring :\nPlot a parametric curve or surface in 2d or 3d.\n\n\"parametric_plot()\" takes two or three functions as a list or a\ntuple and makes a plot with the first function giving the x\ncoordinates, the second function giving the y coordinates, and the\nthird function (if present) giving the z coordinates.\n\nIn the 2d case, \"parametric_plot()\" is equivalent to the \"plot()\"\ncommand with the option \"parametric=True\".  In the 3d case,\n\"parametric_plot()\" is equivalent to \"parametric_plot3d()\". See\neach of these functions for more help and examples.\n\nINPUT:\n\n* \"funcs\" -- 2 or 3-tuple of functions, or a vector of dimension 2\n  or 3.\n\n* \"other options\" -- passed to \"plot()\" or \"parametric_plot3d()\"\n\nEXAMPLES: We draw some 2d parametric plots.  Note that the default\naspect ratio is 1, so that circles look like circles.\n\n   sage: t = var('t')\n   sage: parametric_plot( (cos(t), sin(t)), (t, 0, 2*pi))\n   Graphics object consisting of 1 graphics primitive\n\n   sage: parametric_plot( (sin(t), sin(2*t)), (t, 0, 2*pi), color=hue(0.6) )\n   Graphics object consisting of 1 graphics primitive\n\n   sage: parametric_plot((1, t), (t, 0, 4))\n   Graphics object consisting of 1 graphics primitive\n\nNote that in parametric_plot, there is only fill or no fill.\n\n   sage: parametric_plot((t, t^2), (t, -4, 4), fill=True)\n   Graphics object consisting of 2 graphics primitives\n\nA filled Hypotrochoid:\n\n   sage: parametric_plot([cos(x) + 2 * cos(x/4), sin(x) - 2 * sin(x/4)], (x,0, 8*pi), fill=True)\n   Graphics object consisting of 2 graphics primitives\n\n   sage: parametric_plot( (5*cos(x), 5*sin(x), x), (x,-12, 12), plot_points=150, color=\"red\") # long time\n   Graphics3d Object\n\n   sage: y=var('y')\n   sage: parametric_plot( (5*cos(x), x*y, cos(x*y)), (x, -4,4), (y,-4,4)) # long time`\n   Graphics3d Object\n\n   sage: t=var('t')\n   sage: parametric_plot( vector((sin(t), sin(2*t))), (t, 0, 2*pi), color='green') # long time\n   Graphics object consisting of 1 graphics primitive\n\n   sage: t = var('t')\n   sage: parametric_plot( vector([t, t+1, t^2]), (t, 0, 1)) # long time\n   Graphics3d Object\n\nPlotting in logarithmic scale is possible with 2D plots. The\nkeyword \"aspect_ratio\" will be ignored if the scale is not\n\"'loglog'\" or \"'linear'\".:\n\n   sage: parametric_plot((x, x**2), (x, 1, 10), scale='loglog')\n   Graphics object consisting of 1 graphics primitive\n\nWe can also change the scale of the axes in the graphics just\nbefore displaying. In this case, the \"aspect_ratio\" must be\nspecified as \"'automatic'\" if the \"scale\" is set to \"'semilogx'\" or\n\"'semilogy'\". For other values of the \"scale\" parameter, any\n\"aspect_ratio\" can be used, or the keyword need not be provided.:\n\n   sage: p = parametric_plot((x, x**2), (x, 1, 10))\n   sage: p.show(scale='semilogy', aspect_ratio='automatic')"}}︡{"done":true}
︠29977261-8457-478d-b15f-a98a472c91e9︠









