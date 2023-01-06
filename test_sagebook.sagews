︠76812d5b-4881-477e-a503-1e9efc8ea262s︠
%md

# Sagebook
Book bout backgrounds of sage and ways to program in it.
︡b779b02f-d045-4aba-ad42-48f1de860f5b︡{"done":true,"md":"\n# Sagebook\nBook bout backgrounds of sage and ways to program in it."}
︠de8e66d7-520e-401d-90bd-d9d45ba2af2ds︠
temp1=preparse("a=2.5");temp1 #doesn't evaluate the content!
︡0a3499db-b853-4526-ac0a-b3a8e04a0eda︡{"stdout":"\"a=RealNumber('2.5')\""}︡{"stdout":"\n"}︡{"done":true}
︠fe297d0e-f0bd-4332-8fb0-e4c75fdcb234s︠
temp1=2.5
type(temp1)
type(N(1))
︡ee0c5c5f-1f1a-4415-bd9a-6b37dfddf3c1︡{"stdout":"<class 'sage.rings.real_mpfr.RealLiteral'>\n"}︡{"stdout":"<class 'sage.rings.real_mpfr.RealNumber'>\n"}︡{"done":true}
︠2b7be48d-172e-44cd-a5d3-ee654a492161s︠
for i in range(5): #sage is written in python, so python constructs are available
    print("i=%d"%i)
︡0779d047-24e0-4201-ab11-4e8ff3ed0ae8︡{"stdout":"i=0\ni=1\ni=2\ni=3\ni=4\n"}︡{"done":true}
︠0ab56a36-3522-44bd-ad57-5bc446b516cbs︠
#functions
f(x)=2*sin(x)+2/3
show(f(1))
def g(x,b=2/6):
    return 3*cos(x)+b
show(g)
g(1) #preparser has modified the function compared to pure pythoncapitalize
︡91bb9d43-da7f-46c1-9a10-c723509e9398︡{"html":"<div align='center'>$\\displaystyle 2 \\, \\sin\\left(1\\right) + \\frac{2}{3}$</div>"}︡{"stdout":"<function g at 0x7fbcd18269e0>\n"}︡{"stdout":"3*cos(1) + 1/3\n"}︡{"done":true}
︠028fd34b-38d4-40b1-bd4f-fb4f36fce92ds︠
 N(g(1))
 g(N(1))
︡3eefe1d3-227c-483e-b843-be199932119b︡{"stdout":"1.95424025093775"}︡{"stdout":"\n"}︡{"stdout":"1.95424025093775\n"}︡{"done":true}
︠fa77cdcd-7d4c-4166-aaf0-2449fe5ac24c︠
temp2="f(x)=2*sin(x)+3.1415;f(1)"
temp3=preparse(temp2)
#eval(temp3) #no idea how to evaluate
︡8cd214f4-6459-4e18-a348-fdc77ebf954e︡{"stderr":"Error in lines 3-3\nTraceback (most recent call last):\n  File \"/cocalc/lib/python3.9/site-packages/smc_sagews/sage_server.py\", line 1230, in execute\n    exec(\n  File \"\", line 1, in <module>\n  File \"<string>\", line 1\n    __tmp__=var(\"x\"); f = symbolic_expression(Integer(2)*sin(x)+RealNumber('3.1415')).function(x);f(Integer(1))\n           ^\nSyntaxError: invalid syntax\n"}︡{"done":true}
︠7ffbb4f2-cb1d-471d-b077-1eb1954f819es︠
class MyClass:
    """docu"""
    i=123 #default info, instances get a copy
    def __init__(self,j):
        self._j=j
    def f(self):
        return self.i
MyClass.i
a=MyClass(23)
b=MyClass(34)
b.i=3
a.i
b.i
MyClass.i
︡9938dc2d-ec7f-4f5e-9570-73acc830778c︡{"stdout":"123\n"}︡{"stdout":"123\n"}︡{"stdout":"3\n"}︡{"stdout":"123\n"}︡{"done":true}
︠2500b90c-c445-42a4-a931-30926c5e523as︠
#list comprehension
s1=[0.5^i for i in range(5)];s1
#generator
s2=(0.5^i for i in range(5));s2
for s in s2:
    print(s)
︡6cdcfc14-c81f-4576-935e-f6b7f79fb5f0︡{"stdout":"[1.00000000000000, 0.500000000000000, 0.250000000000000, 0.125000000000000, 0.0625000000000000]\n"}︡{"stdout":"<generator object <genexpr> at 0x7fb9edbbdd90>\n"}︡{"stdout":"1.00000000000000\n0.500000000000000\n0.250000000000000\n0.125000000000000\n0.0625000000000000\n"}︡{"done":true}
︠d7c0d322-e235-4052-b6b8-5b68bae63b0fs︠
!ls
︡35a15334-1a27-4172-baa0-1480d541a650︡{"stdout":"2022-04-10-004335.ipynb                   doodle_fastest_path.sagews\n"}︡{"html":"<pre style=\"display:inline-block;margin-right:-1ch;font-family:monospace;\">2022-04-24-190042.term                    <span style=\"font-weight: bold; color: #0000aa\">first-steps</span>\n</pre>"}︡{"html":"<pre style=\"display:inline-block;margin-right:-1ch;font-family:monospace;\">Example_tide_surge_and_interaction.ipynb  <span style=\"font-weight: bold; color: #0000aa\">out</span>\n</pre>"}︡{"stdout":"Lagrange_mechanics_example.ipynb          test.jl\n"}︡{"stdout":"Test_julia.ipynb                          test_sagebook.sagews\n"}︡{"html":"<pre style=\"display:inline-block;margin-right:-1ch;font-family:monospace;\">Test_trixi_julia.ipynb                    <span style=\"font-weight: bold; color: #0000aa\">wavemodel.git</span>\n</pre>"}︡{"done":true}
︠9e8abfc3-1143-45a8-aaf2-07ab8a577205s︠
%typeset_mode true
g,D=var('g,D')
m=Matrix([[0,D],[g,0]]);m
m.eigenvalues()
︡cfbeda50-19d7-4453-b87c-32ce32a46cee︡{"html":"<div align='center'>$\\displaystyle \\left(\\begin{array}{rr}\n0 &amp; D \\\\\ng &amp; 0\n\\end{array}\\right)$</div>"}︡{"html":"<div align='center'>[$\\displaystyle -\\sqrt{D g}$, $\\displaystyle \\sqrt{D g}$]</div>"}︡{"done":true}
︠8415fe4d-6386-4eb1-b9bd-70444854f472s︠
@interact
def add_em_up(a=1, b=[1..10] , c=(1..10)):
   return a + b + c
︡222f841d-eaed-4fe3-ba1f-0374ea9a6369︡{"interact":{"controls":[{"control_type":"input-box","default":1,"label":"a","nrows":1,"readonly":false,"submit_button":null,"type":null,"var":"a","width":null},{"button_classes":null,"buttons":false,"control_type":"selector","default":0,"label":"b","lbls":["1","2","3","4","5","6","7","8","9","10"],"ncols":null,"nrows":null,"var":"b","width":null},{"animate":true,"control_type":"slider","default":0,"display_value":true,"label":"c","vals":["1","2","3","4","5","6","7","8","9","10"],"var":"c","width":null}],"flicker":false,"id":"acc6ca9f-55c2-4ea4-8fd9-378951b7bc0c","layout":[[["a",12,null]],[["b",12,null]],[["c",12,null]],[["",12,null]]],"style":"None"}}︡{"done":true}
︠60028555-fa72-450d-a80e-88d7bfd6bb52s︠
x=var('x')
show(x^2)
︡be2ccd26-6f11-4034-a920-373c23ab4bf8︡{"html":"<div align='center'>$\\displaystyle x^{2}$</div>"}︡{"done":true}
︠dafd9147-b314-4304-a8d5-ab0409fa126fs︠
%cython
cdef extern from "math.h":
   double sin(double)

def cython_sum_typed_lib_loop (long n):
   cdef long i
   cdef double s = 0
   for i in range(1, n+1):
      s+=sin(i)
   return s
︡7eea2631-bbbd-485f-b2ec-c13217533d9d︡{"stdout":"Defined cython_sum_typed_lib_loop"}︡{"stdout":"\n"}︡{"file":{"filename":"/home/user/.sage/temp/project-f9826791-d305-4ebb-8807-ec0230b633c5/558/spyx/_home_user__sage_temp_project_f9826791_d305_4ebb_8807_ec0230b633c5_558_dir_mnzoht85_a_pyx/_home_user__sage_temp_project_f9826791_d305_4ebb_8807_ec0230b633c5_558_dir_mnzoht85_a_pyx_0.html","show":true,"text":"Auto-generated code...","url":"/f9826791-d305-4ebb-8807-ec0230b633c5/raw/.sage/temp/project-f9826791-d305-4ebb-8807-ec0230b633c5/558/spyx/_home_user__sage_temp_project_f9826791_d305_4ebb_8807_ec0230b633c5_558_dir_mnzoht85_a_pyx/_home_user__sage_temp_project_f9826791_d305_4ebb_8807_ec0230b633c5_558_dir_mnzoht85_a_pyx_0.html"},"once":false}︡{"done":true}
︠69706bbf-d16a-441d-8297-5af6107e190as︠
timeit('cython_sum_typed_lib_loop(10^4)')
︡923ba08f-4457-4ed2-9935-9c62fcc55578︡{"stdout":"625 loops, best of 3: 127 μs per loop"}︡{"stdout":"\n"}︡{"done":true}
︠59c5ffd5-580d-4032-819c-d74e3e6f9648s︠
search_doc("plot")
︡db1141af-a012-4c76-846a-9f463a9e31dd︡{"html":"Use this link to search: <a href=\"https://www.google.com/search?q=site%3Adoc.sagemath.org+plot&oq=site%3Adoc.sagemath.org\">plot</a>"}︡{"done":true}
︠ec62c34f-aa16-4520-aae0-7f9e3befcd12s︠
plot(sin(x),x,(0,2*pi),legend_label="sin(x)")
︡85948a4c-4b36-4408-85d3-7767220a738b︡{"file":{"filename":"/home/user/.sage/temp/project-f9826791-d305-4ebb-8807-ec0230b633c5/558/tmp__jro6jtb.svg","show":true,"text":null,"uuid":"fe1b8714-70fc-4541-876d-bb956e7cdd36"},"once":false}︡{"done":true}
︠f380ad7d-fd6a-4283-9ab2-382d2d05b752︠













