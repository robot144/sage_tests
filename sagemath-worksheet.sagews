︠64c290ba-1728-437c-a78f-d9c50d57938c︠

︡4d42d29e-6466-443f-abd3-f2d1d6c9b59e︡
︠0adc1244-ccf7-4100-89f7-e72564867deas︠
%md
# Testing

Here are some doodles with Sage. This first chunk is for some text, but formulas in latex style can also be included $\pi/2$
︡7f24a988-0ab9-4cb1-8e42-a11b795e1aba︡{"done":true,"md":"# Testing\n\nHere are some doodles with Sage. This first chunk is for some text, but formulas in latex style can also be included $\\pi/2$"}
︠b145003a-3558-4b1c-9d27-f766012e47b7so︠
#what does this command do
integral?
︡3a82197b-4060-4dec-acbe-e2bec5b03617︡{"code":{"filename":null,"lineno":-1,"mode":"text/x-rst","source":"File: /ext/sage/9.6/local/var/lib/sage/venv-python3.10.3/lib/python3.10/site-packages/sage/misc/functional.py\nSignature : integral(x, *args, **kwds)\nDocstring :\nReturn an indefinite or definite integral of an object \"x\".\n\nFirst call \"x.integral()\" and if that fails make an object and\nintegrate it using Maxima, maple, etc, as specified by algorithm.\n\nFor symbolic expression calls \"sage.calculus.calculus.integral()\" -\nsee this function for available options.\n\nEXAMPLES:\n\n   sage: f = cyclotomic_polynomial(10)\n   sage: integral(f)\n   1/5*x^5 - 1/4*x^4 + 1/3*x^3 - 1/2*x^2 + x\n\n   sage: integral(sin(x),x)\n   -cos(x)\n\n   sage: y = var('y')\n   sage: integral(sin(x),y)\n   y*sin(x)\n\n   sage: integral(sin(x), x, 0, pi/2)\n   1\n   sage: sin(x).integral(x, 0,pi/2)\n   1\n   sage: integral(exp(-x), (x, 1, oo))\n   e^(-1)\n\nNumerical approximation:\n\n   sage: h = integral(tan(x)/x, (x, 1, pi/3))\n   ...\n   sage: h\n   integrate(tan(x)/x, x, 1, 1/3*pi)\n   sage: h.n()\n   0.07571599101...\n\nSpecific algorithm can be used for integration:\n\n   sage: integral(sin(x)^2, x, algorithm='maxima')\n   1/2*x - 1/4*sin(2*x)\n   sage: integral(sin(x)^2, x, algorithm='sympy')\n   -1/2*cos(x)*sin(x) + 1/2*x"}}︡{"done":true}
︠31cbd72c-48df-479a-9c34-782d9fa5eac0s︠
x=var('x')
p0(x)=1
p1(x)=x
q2(x)=x^2
#Gramm-Schmidt type projection
p2(x)=q2(x)-integral(q2(x)*p0(x),x,-1,1)/integral(p0(x)*p0(x),x,-1,1)*p0(x)
p2
︡d5b608c1-8135-4287-aca4-a89c5133356b︡{"stdout":"x |--> x^2 - 1/3\n"}︡{"done":true}
︠f1d75f3e-a59c-4c2a-8f81-f9b269cbdd6cs︠
pl0=plot(p0(x),x)
pl1=plot(p1,x)
pl2=plot(p2,x)
pl=pl0+pl1+pl2
show(pl)
pl.save('plot.png')
︡ddb62827-1d18-4b25-8edb-499dd5da1ad0︡{"file":{"filename":"/home/user/.sage/temp/project-f9826791-d305-4ebb-8807-ec0230b633c5/2360/tmp_rkxwoxxw.svg","show":true,"text":null,"uuid":"7ceebde9-59cc-41d4-9a28-cd6d9a1f8805"},"once":false}︡{"done":true}
︠4e9eebef-fab4-4916-8192-5119dc73acafs︠
latex(p2(x))
show(p2(x))
︡9bf37c76-82f0-47f5-ad8a-9029627442a6︡{"stdout":"x^{2} - \\frac{1}{3}\n"}︡{"html":"<div align='center'>$\\displaystyle x^{2} - \\frac{1}{3}$</div>"}︡{"done":true}
︠2e47e21a-ac67-4c28-acc8-8fb586366598s︠
solve(x^3==8,x)
︡04192b8f-fb7a-4fc4-882f-bc4e090026ff︡{"stdout":"[x == I*sqrt(3) - 1, x == -I*sqrt(3) - 1, x == 2]"}︡{"stdout":"\n"}︡{"done":true}
︠16f698d6-2cf4-437f-865c-c509fdaa0243s︠
t,s=var("t,s")
f(t)=sin(t)
lf(s)=laplace(f(t),t,s)
show(lf(s))
︡5aa516e6-aeca-4fda-aaf3-04af2c548fa9︡{"html":"<div align='center'>$\\displaystyle \\frac{1}{s^{2} + 1}$</div>"}︡{"done":true}
︠dce235c5-bd42-4960-8c85-3a1ad076449as︠
islf(t)=inverse_laplace(s*lf(s),s,t)
show(islf(t))
︡21bface2-9de7-40c0-8ff3-2e4827f446d3︡{"html":"<div align='center'>$\\displaystyle \\cos\\left(t\\right)$</div>"}︡{"done":true}
︠2e76e742-bda1-4ef1-806e-fe8f6ab900d0s︠
(z0,v0,g)=var('z0,v0,g')
z=z0+v0*t-1/2*g*t^2
show(z(g=9.81,v0=0,z0=0))
︡d8897f79-739e-4c86-90c8-a60cd235065a︡{"html":"<div align='center'>$\\displaystyle -4.90500000000000 \\, t^{2}$</div>"}︡{"done":true}
︠97a8aef5-23ef-48f2-8998-d4b5548f9e8esi︠
find_root(x^2-4,0,4)
︡928aa7f8-d0a7-4010-a0ce-e14884e7895c︡{"stdout":"2.0"}︡{"stdout":"\n"}︡{"done":true}
︠bd0329b9-b577-4f19-a318-0c567767b7f9s︠
A=matrix(2,2,[1,s,3,4*t])
show(100+A)
︡b664a0b8-ce83-4862-aca5-e0373b922da4︡{"html":"<div align='center'>$\\displaystyle \\left(\\begin{array}{rr}\n101 &amp; s \\\\\n3 &amp; 4 \\, t + 100\n\\end{array}\\right)$</div>"}︡{"done":true}
︠1bf3f93c-0e64-4706-b462-dcd20f9b3541s︠
limit(sin(x)/x,x=oo)
︡8622010f-083b-4a31-890c-396b6c4c0e50︡{"stdout":"0\n"}︡{"done":true}
︠eae03101-4f53-4335-a969-880a1aa8488ds︠
cos5(x)=taylor(cos(x),x,0,5)
show(cos5)
plot(cos5(x),x,-4,4,color="black")+plot(cos(x),x,-4,4)
︡1dd6c228-1948-4205-a903-3bc260503d65︡{"html":"<div align='center'>$\\displaystyle x \\ {\\mapsto}\\ \\frac{1}{24} \\, x^{4} - \\frac{1}{2} \\, x^{2} + 1$</div>"}︡{"file":{"filename":"/home/user/.sage/temp/project-f9826791-d305-4ebb-8807-ec0230b633c5/811/tmp_f736bu87.svg","show":true,"text":null,"uuid":"43e27529-b61d-4ec3-a06d-01b21f789164"},"once":false}︡{"done":true}
︠32e956b4-7ce3-4911-a921-3d14dd90177bs︠
var('y,L')
f(x,y,l)=x^2+y^2+L*(x+y-1) #with constraint
minimize(f,[0.2,0.1,0.4],algorithm='simplex')
eq1=diff(f,x)==0
eq2=diff(f,y)==0
eq3=diff(f,L)==0
sol=solve([eq1,eq2,eq2],[x,y,L])
︡29078852-cf61-4a8e-852a-f0044a7c8ed0︡{"stdout":"(y, L)\n"}︡{"stdout":"(8.3695434069613e+50, -2.5602895569214687e+49, -4.643376079331119e+50)\n"}︡{"done":true}
︠407c217a-dae7-41d4-a315-db112109d5b0s︠
[eq1,eq2,eq3],sol
︡d2cd71e8-88b9-4ac9-a616-da313ad1044d︡{"stdout":"([(x, y, l) |--> L + 2*x == 0, (x, y, l) |--> L + 2*y == 0, (x, y, l) |--> x + y - 1 == 0], [[x == -1/2*r4, y == -1/2*r4, L == r4]])\n"}︡{"done":true}
︠357ee0f2-75ce-4655-8918-af62bc66d350s︠
var('k')
s=sum(1/k^2,k,1,oo)
s
︡1b266861-b683-4b36-802a-cac9c3a59060︡{"stdout":"k\n"}︡{"stdout":"1/6*pi^2\n"}︡{"done":true}
︠9f4e9007-fa70-4818-97ea-c1717d3e5118s︠
y=function('y')(x)
h=desolve(diff(y,x)==-2.0*y,y,[0,1])
h
︡e6f4a597-448c-44ad-a89c-3228dd9d721c︡{"stdout":"e^(-2*x)\n"}︡{"done":true}
︠2af54181-2373-47ff-8647-6a4be2019d44s︠
eq=2*x==sin(x)
diff(eq*x,x)
︡1abdc0b5-8faa-45a6-a075-993981a751f9︡{"stdout":"4*x == x*cos(x) + sin(x)\n"}︡{"done":true}
︠586c5147-fa62-4b4a-a974-ffbcb6eaf70f︠
t=var('t')
f(t)=t*exp(t-3)
F(s)=laplace(f,t,s)
int_f(t)=inverse_laplace(F/s,s,t) #integral by using laplace transform
show(int_f)
︡2cd62d3d-abe8-4933-bec3-9c48b2aa8105︡{"html":"<div align='center'>$\\displaystyle t \\ {\\mapsto}\\ t e^{\\left(t - 3\\right)} + e^{\\left(-3\\right)} - e^{\\left(t - 3\\right)}$</div>"}︡{"done":true}
︠576d6c31-b894-447b-b295-eb66d62d207cs︠
g(x,y,z)=x^2+y^3+z^4
H=diff(g,2)
H
︡4793981e-63ef-4ea9-9841-4ad3f974d214︡{"stdout":"[     (x, y, z) |--> 2      (x, y, z) |--> 0      (x, y, z) |--> 0]\n[     (x, y, z) |--> 0    (x, y, z) |--> 6*y      (x, y, z) |--> 0]\n[     (x, y, z) |--> 0      (x, y, z) |--> 0 (x, y, z) |--> 12*z^2]\n"}︡{"done":true}
︠f6ae40c5-f5a5-4b86-82ec-e0ddebc704b2s︠
sum(H[k,k],k,0,2)
︡6d70de0d-6487-4de5-a9a0-299dfe5a9f42︡{"stderr":"Error in lines 1-1\nTraceback (most recent call last):\n  File \"sage/symbolic/expression.pyx\", line 1736, in sage.symbolic.expression.Expression._real_mpfi_ (build/cythonized/sage/symbolic/expression.cpp:37885)\n    return self._eval_self(R)\n  File \"sage/symbolic/expression.pyx\", line 1640, in sage.symbolic.expression.Expression._eval_self (build/cythonized/sage/symbolic/expression.cpp:37525)\n    raise TypeError(\"Cannot evaluate symbolic expression to a numeric value.\")\nTypeError: Cannot evaluate symbolic expression to a numeric value.\n\nDuring handling of the above exception, another exception occurred:\n\nTraceback (most recent call last):\n  File \"sage/symbolic/expression.pyx\", line 1539, in sage.symbolic.expression.Expression.__int__ (build/cythonized/sage/symbolic/expression.cpp:36452)\n    rif_self = RIF(self)\n  File \"sage/rings/real_mpfi.pyx\", line 713, in sage.rings.real_mpfi.RealIntervalField_class.__call__ (build/cythonized/sage/rings/real_mpfi.c:6323)\n    return Parent.__call__(self, x)\n  File \"sage/structure/parent.pyx\", line 898, in sage.structure.parent.Parent.__call__ (build/cythonized/sage/structure/parent.c:9388)\n    return mor._call_(x)\n  File \"sage/structure/coerce_maps.pyx\", line 287, in sage.structure.coerce_maps.NamedConvertMap._call_ (build/cythonized/sage/structure/coerce_maps.c:6085)\n    cdef Element e = method(C)\n  File \"sage/symbolic/expression.pyx\", line 1738, in sage.symbolic.expression.Expression._real_mpfi_ (build/cythonized/sage/symbolic/expression.cpp:37928)\n    raise TypeError(\"unable to simplify to a real interval approximation\")\nTypeError: unable to simplify to a real interval approximation\n\nDuring handling of the above exception, another exception occurred:\n\nTraceback (most recent call last):\n  File \"/cocalc/lib/python3.9/site-packages/smc_sagews/sage_server.py\", line 1230, in execute\n    exec(\n  File \"\", line 1, in <module>\n  File \"sage/matrix/matrix0.pyx\", line 945, in sage.matrix.matrix0.Matrix.__getitem__ (build/cythonized/sage/matrix/matrix0.c:7093)\n    row = row_index\n  File \"sage/symbolic/expression.pyx\", line 1541, in sage.symbolic.expression.Expression.__int__ (build/cythonized/sage/symbolic/expression.cpp:36504)\n    raise ValueError(\"cannot convert %s to int\" % self)\nValueError: cannot convert k to int\n"}︡{"done":true}
︠6f4c7c56-7c2c-45c5-bbff-8e9e6e427d80s︠
trace(diff(g,2))
︡8800e9c5-dd07-4b0c-bae0-cbaab6a8cda9︡{"stdout":"\u001b[22;0t"}︡{"stdout":"\u001b]0;IPython: user/first-steps\u0007"}︡{"stderr":"Error in lines 1-1\n"}︡{"stderr":"Traceback (most recent call last):\n  File \"/ext/sage/9.5/local/var/lib/sage/venv-python3.9.9/lib/python3.9/site-packages/sage/misc/trace.py\", line 79, in trace\n    ipython = get_ipython()\nNameError: name 'get_ipython' is not defined\n\nDuring handling of the above exception, another exception occurred:\n\nTraceback (most recent call last):\n  File \"/cocalc/lib/python3.9/site-packages/smc_sagews/sage_server.py\", line 1230, in execute\n    exec(\n  File \"\", line 1, in <module>\n  File \"/ext/sage/9.5/local/var/lib/sage/venv-python3.9.9/lib/python3.9/site-packages/sage/misc/trace.py\", line 81, in trace\n    raise NotImplementedError(\"the trace command can only be run from the Sage command-line\")\nNotImplementedError: the trace command can only be run from the Sage command-line\n"}︡{"done":true}
︠2b8128f2-fa56-4c2f-9d5e-d286ef569595s︠
for i in range(1,3):
    print(type(i),N(i/3))
︡55073b6d-88ae-4ad1-ba6c-dcaea064034b︡{"stdout":"<class 'int'> 0.333333333333333\n<class 'int'> 0.666666666666667\n"}︡{"done":true}
︠5c743093-6503-43e4-a2f3-16a4475d3731s︠
import numpy as np
import matplotlib.pyplot as plt
︡61f7beab-9f73-44c0-b01c-9af26ad11230︡{"done":true}
︠4cebd27c-7eb4-4fae-b2a5-30d211189cbb︠
f1(x)=cos(x)
f2(x)=cos(2*x)
f3(x)=cos(3*x)
plot(f1,x,0,pi)+plot(f2,x,0,pi)+plot(f3,x,0,pi)
︡6b7fd874-7baf-44e1-bbd8-17345bb0368c︡{"file":{"filename":"/home/user/.sage/temp/project-f9826791-d305-4ebb-8807-ec0230b633c5/453/tmp_b64snt_s.svg","show":true,"text":null,"uuid":"5a6c3b03-9f16-4cbf-bdf1-dbac03f16a0c"},"once":false}︡{"done":true}
︠4ee3f7da-0493-4254-9cc2-cfbf247102f4so︠
p1(x)=cos(arccos(x)).full_simplify()
p2(x)=cos(2*arccos(x)).full_simplify()
p3(x)=cos(3*arccos(x)).full_simplify()
p4(x)=cos(4*arccos(x)).full_simplify()
plot(p1,x,-1,1)+plot(p2,x,-1,1)+plot(p3,x,-1,1)+plot(p4,x,-1,1)
︡39014e76-e288-4efa-8ba0-4c81ce8fbd04︡{"file":{"filename":"/home/user/.sage/temp/project-f9826791-d305-4ebb-8807-ec0230b633c5/453/tmp_qi7g7rbc.svg","show":true,"text":null,"uuid":"510d1d66-8b50-4533-8c34-47cd7548027e"},"once":false}︡{"done":true}
︠4ed45e7f-a8af-4c4a-9fce-2760776745cas︠
[p1,p2,p3,p4]
︡bac4b3e3-20d8-49fc-81c6-b54dda2a6d73︡{"stdout":"[x |--> x, x |--> 2*x^2 - 1, x |--> 4*x^3 - 3*x, x |--> 8*x^4 - 8*x^2 + 1]\n"}︡{"done":true}
︠bf7f8837-fc39-47fc-a70c-4201df20fdb4︠
%md
Try to find zeros of $T_n(cos(t))=cos(n t)$. The cos is zero at $t=\pi(1/2+k)/n$. Finally $x=cos(\pi(1/2+k)/n)$.
︡6297ec03-d3a7-4333-b6fd-5b8e7991afcc︡{"done":true,"md":"Try to find zeros of $T_n(cos(t))=cos(n t)$. The cos is zero at $t=\\pi(1/2+k)/n$. Finally $x=cos(\\pi(1/2+k)/n)$."}
︠f53f28ce-38b8-4ea9-ab5f-6f5d8b37b0a4s︠
n=3
k=np.arange(0,n)
x=np.cos(np.pi/n*(0.5+k))
print(x)
plt.plot(x,0.0*x,'+')
plt.show()
︡882d3c3a-c2fc-48e4-b1b3-33b315223254︡{"stdout":"[ 8.66025404e-01  6.12323400e-17 -8.66025404e-01]\n"}︡{"stdout":"[<matplotlib.lines.Line2D object at 0x7ff870ff37f0>]\n"}︡{"file":{"filename":"11248ce5-dce8-4a9b-9e5e-2773f60c3662.svg","show":true,"text":null,"uuid":"69ecec1f-9f2f-4177-84dc-2fa3e987b31b"},"once":false}︡{"done":true}
︠e3988b2b-6c54-4849-9cf0-02e81927061ds︠

︡9af63f9a-a2ab-40ce-b451-3ba39df87a3f︡{"done":true}
︠30c258df-108c-47cd-b3f3-571539b3f393s︠
#orthogonality
t=var('t')
integral(p3(t)*p3(t)/sqrt(1-t^2),t,-1,1)
︡9ceabfba-e46b-4e66-9b7e-e0d4b6746bdd︡{"stdout":"1/2*pi\n"}︡{"done":true}
︠ec11f24b-a0ff-430e-b3b4-2b8b923a8a94s︠
p4
︡483db9b7-4319-458d-a995-ee1fc2b52689︡{"stdout":"x |--> 8*x^4 - 8*x^2 + 1\n"}︡{"done":true}
︠a7e27f43-de98-4dd8-8fe2-5726e16ed956s︠
x,y=var('x,y')
f(x,y)=sin(x)*exp(y/pi)
F=f.integrate(x)
plot3d(f,(x,-pi,pi),(y,-pi,pi))
︡20aecaab-a9d0-4365-9ca1-8a6d1336f83b︡{"file":{"filename":"ca928b69-8464-430d-876c-65e5bc9efe7f.sage3d","uuid":"ca928b69-8464-430d-876c-65e5bc9efe7f"}}︡{"done":true}
︠97cb2395-2d93-4822-b572-419a5eef5fbds︠
a,b,c,d=var('a,b,c,d')
A=matrix([[a,b],[c,d]])
Ainv=A.inverse()
C=Ainv*A
show(C[1,1])
︡398f7272-daf4-46b0-a79f-4e2e1cdae9be︡{"html":"<div align='center'>$\\displaystyle \\frac{b c}{a {\\left(\\frac{b c}{a} - d\\right)}} - \\frac{d}{\\frac{b c}{a} - d}$</div>"}︡{"done":true}
︠f93303c9-7458-4fda-b356-47d529b42b1es︠
C.simplify_full()
︡ed0b7483-0523-4e5f-a530-cd3fb192a572︡{"stdout":"[1 0]\n[0 1]\n"}︡{"done":true}
︠4e941c38-9f4d-438d-b2e1-2a12a8279b28s︠
F=matrix([[1,1],[0,1]])
t=var('t')
Fsol=exp(t*F)
xsol=Fsol*vector([var('x1'),var('x2')])
show(xsol[0])
︡aa12a00e-d979-45d6-9d8f-9fe85e9d8667︡{"html":"<div align='center'>$\\displaystyle t x_{2} e^{t} + x_{1} e^{t}$</div>"}︡{"done":true}
︠d292f19d-14fe-4397-9194-6c5da7af8415s︠

︡7f7c9a3c-5109-4c0d-b114-2528014cbe2a︡{"done":true}
︠69123396-1ba0-4474-b26f-fd14f33eb7af︠









