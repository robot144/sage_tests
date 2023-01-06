︠d77a72c0-a4f6-4c8a-b050-d46b9f9083ae︠
%md
# Kelvin wave behind a ship

This document considers the wave pattern behind a ship, also known a the Kelvin wake. This a well studied subject, but here I just play around with Sage and this topic as a test case. The starting point are the following equations:

- $u_x + v_y +w_z = 0$
- $u_t + u u_x + v u_y + w u_z + p_x/r = 0$
- $v_t + u v_x + v v_y + w v_z + p_y/r = 0$
- $u_t + u w_x + v w_y + w w_z + p_z/r + g = 0$

And at the water surface ($z=h$), we have:

- $h_t + u h_x + v h_y = w(z=h)$ kinematic condition
- $p=p_0$ or $g h + p/r +u^2/2 + v^2/2 + w^2/2 = const$ dynamic condition, Bernoulli [Wikipedia Bernoulli](https://en.wikipedia.org/wiki/Bernoulli%27s_principle)

Finally at the sea-bed (z=-D)

- $w=0$ assuming a flat bed

 For small amplitude waves analytical solutions can be found [Wikipedia linear wave theory](https://en.wikipedia.org/wiki/Airy_wave_theory).

- $h(x,y,t)=a \cos(k x + l y - w t)$
- $w^2 = g k \tanh(k h)$




Additional info:

- [Wikipedia Stokes waves](https://en.wikipedia.org/wiki/Stokes_wave)

︡436f9b1c-fc89-49ac-a9cf-de445d8afaba︡{"done":true,"md":"# Kelvin wave behind a ship\n\nThis document considers the wave pattern behind a ship, also known a the Kelvin wake. This a well studied subject, but here I just play around with Sage and this topic as a test case. The starting point are the following equations:\n\n- $u_x + v_y +w_z = 0$\n- $u_t + u u_x + v u_y + w u_z + p_x/r = 0$\n- $v_t + u v_x + v v_y + w v_z + p_y/r = 0$\n- $u_t + u w_x + v w_y + w w_z + p_z/r + g = 0$\n\nAnd at the water surface ($z=h$), we have:\n\n- $h_t + u h_x + v h_y = w(z=h)$ kinematic condition\n- $p=p_0$ or $g h + p/r +u^2/2 + v^2/2 + w^2/2 = const$ dynamic condition, Bernoulli [Wikipedia Bernoulli](https://en.wikipedia.org/wiki/Bernoulli%27s_principle)\n\nFinally at the sea-bed (z=-D)\n\n- $w=0$ assuming a flat bed\n\n For small amplitude waves analytical solutions can be found [Wikipedia linear wave theory](https://en.wikipedia.org/wiki/Airy_wave_theory).\n\n- $h(x,y,t)=a \\cos(k x + l y - w t)$\n- $w^2 = g k \\tanh(k h)$\n\n\n\n\nAdditional info:\n\n- [Wikipedia Stokes waves](https://en.wikipedia.org/wiki/Stokes_wave)\n- [Wake at high froude numbers](https://www.pct.espci.fr/~elie/Publications/Kelvin_wake_pattern.pdf)"}
︠28a338b1-b3da-412e-9842-f6ace98b1f79︠
%md
## Kelvin wake

References:

- [Wikipedia Kelvin wake](https://en.wikipedia.org/wiki/Wake_(physics))
- [Wikiwaves Kelvin wake](https://wikiwaves.org/Ship_Kelvin_Wake)
- [Wake at high froude numbers](https://www.pct.espci.fr/~elie/Publications/Kelvin_wake_pattern.pdf)
︡e0942e7a-9261-4c82-8584-22eb9386f820︡{"done":true,"md":"## Kelvin wake\n\nReferences:\n\n- [Wikipedia Kelvin wake](https://en.wikipedia.org/wiki/Wake_(physics))\n- [Wikiwaves Kelvin wake](https://wikiwaves.org/Ship_Kelvin_Wake)\n- [Wake at high froude numbers](https://www.pct.espci.fr/~elie/Publications/Kelvin_wake_pattern.pdf)"}
︠a7378f90-9715-44d7-af7a-fcc30078466d︠









