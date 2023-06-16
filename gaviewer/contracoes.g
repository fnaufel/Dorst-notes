batch contr_vetor_blade_1()
{
	batch init();
	function factored_bivector();

	init(0);
    grey_canvas(1);
	set_point_size(0);
    fontsizeinit(0);
	camori = 7.707079e-001 + 5.423194e-001*e2^e3 + 2.314838e-001*e3^e1 + 2.414834e-001*e1^e2;
	campos = 6.240000e-001*e1 + 4.800000e-001*e2 + 6.000000e+000*e3;

	a = show(green(e2));
	b = show(red(e1));
		label(a,"\center{\eqn{\bold{a}}}");
		label(b,"\left{\eqn{\bold{a \lc B}}}");
	dynamic{scene:
		B = show(no_shade(color(dm3(factored_bivector(a,b)),0.2,0.2,1,0.8)));
		oriB = show(weight(no_shade(color(ori(vp(tv((a+b)/2+dual(B)/50),(no+ni/50)^a^b 2)),0,0,1,0.4))));
		lB = 1.1 (a+b)/2;
        label(lB,"\center{\eqn{\bold{B}}}");
	}

}


batch contr_vetor_blade_2()
{
	batch init();
	function factored_bivector();

	init(0);
    grey_canvas(1);
	set_point_size(0);
    fontsizeinit(0);
	camori = 7.707079e-001 + 5.423194e-001*e2^e3 + 2.314838e-001*e3^e1 + 2.414834e-001*e1^e2;
	campos = 6.240000e-001*e1 + 4.800000e-001*e2 + 6.000000e+000*e3;

    // Blade B
	a = e2;
	b = e1;
    blb = a ^ b;

    // vector aa
    aa = show(green(sqrt(2)*e2/2 + sqrt(2)*e3/2));
    label(aa,"\center{\eqn{\bold{a}}}");

    acb = show(red(aa . blb));
    acbl = acb - 0.1*e2;
	label(acbl,"\left{\eqn{\bold{a \lc B}}}");
          
	dynamic{scene:
		B = show(no_shade(color(dm3(factored_bivector(a,b)),0.2,0.2,1,0.8)));
		oriB = show(weight(no_shade(color(ori(vp(tv((a+b)/2+dual(B)/50),(no+ni/50)^a^b 2)),0,0,1,0.4))));
		lB = 1.1 (a+b)/2;
        label(lB,"\center{\eqn{\bold{B}}}");
	}

}


batch contr_vetor_blade_3()
{
	batch init();
	function factored_bivector();

	init(0);
    grey_canvas(1);
	set_point_size(0);
    fontsizeinit(0);
	camori = 7.707079e-001 + 5.423194e-001*e2^e3 + 2.314838e-001*e3^e1 + 2.414834e-001*e1^e2;
	campos = 6.240000e-001*e1 + 4.800000e-001*e2 + 6.000000e+000*e3;

    // Blade B
	a = e2;
	b = e1;
    blb = a ^ b;

    // vector aa
    aa = show(green(e3));
    laa = aa + 0.1*e1;
    label(laa,"\center{\eqn{\bold{a}}}");

    lacb = -0.1*e3; 
	label(lacb,"\left{\eqn{\bold{a \lc B} = 0}}");
          
	dynamic{scene:
		B = show(no_shade(color(dm3(factored_bivector(a,b)),0.2,0.2,1,0.8)));
		oriB = show(weight(no_shade(color(ori(vp(tv((a+b)/2+dual(B)/50),(no+ni/50)^a^b 2)),0,0,1,0.4))));
		lB = 1.1 (a+b)/2;
        label(lB,"\center{\eqn{\bold{B}}}");
	}

}


batch contr_3d()
{
	batch init();

	init(0);
    grey_canvas(1);
	set_point_size(0);
    fontsizeinit(0);
    camori = -0.21 + 0.74*e2^e3 + 0.37*e3^e1 + 0.51*e1^e2;
    campos = 0.63*e1 + 0.27*e2 + 6.10*e3;

    // 3-Blade C
    blc = show(alpha(dm4(blue(e1^e2^e3)), 0.35));
    blclabel = 1.05*(e2 + e3);
    label(blclabel, "\center{\eqn{\bold{C}}}");

    // 2-Blade B
    blb = show(dm3(green((e1 + e3) ^ e2)));
    blblabel = 1.2*e2;
    label(blblabel, "\center{\eqn{\bold{B}}}");

    // B contracted on C
    bcc = show(red(blb . blc));
    bcclabel = 1.2*bcc;
    label(bcclabel, "\center{\eqn{\bold{B \lc C}}}");
    
}


batch contr_3d_vetor()
{
	batch init();

	init(0);
    grey_canvas(1);
	set_point_size(0);
    fontsizeinit(0);
    camori = -0.13 + 0.63*e2^e3 + 0.62*e3^e1 + 0.45*e1^e2;
    campos = 0.63*e1 + 0.27*e2 + 5.00*e3;

    // 3-Blade B
    blb = show(alpha(dm4(blue(e1^e2^e3)), 0.35));
    blblabel = 1.05*(e2 + e3);
    label(blblabel, "\center{\eqn{\bold{B}}}");

    // vector a
    a = show(green(1.2*e2));
    alabel = 1.05*a;
    label(alabel, "\center{\eqn{\bold{a}}}");

    // contraction
    acb = show(dm3(red(-a . blb)));
    acblabel = 1.3*e1;
    label(acblabel, "\center{\eqn{\bold{a \lc B}}}");
    
}


batch magnitude_contr()
{
	batch init();

	init(0);
    grey_canvas(1);
	set_point_size(0);
    fontsizeinit(0);
    camori = 0.73 + 0.58*e2^e3 + 0.25*e3^e1 + 0.27*e1^e2;
    campos = 0.63*e1 + 0.27*e2 + 4.00*e3;

    // Blade B
    B = show(alpha(dm3(blue(e1^e2)), 0.4));
    label_B = 1.02*(e1 + e2);
    label(label_B, "\center{\eqn{\bold{B}}}");

    // vetor x
    teta = pi/3;
    x = show(green(cos(teta)*e1 + sin(teta)*e3));
    label_x = 1.05*x;
    label(label_x, "\center{\eqn{\bold{x}}}");

    // Ângulo
    l_ang = 0.05*e1 + 0.09*e3;
    label(l_ang, "\center{)}");
    l_ang2 = l_ang + 0.02*e1 + 0.05*e3;
    label(l_ang2, "\center{\ws\eqn{\theta}}");
    
    // projeção de x sobre B
    proj = show(blue(cos(teta)*e1));
    label_proj = 0.6*proj - 0.06*e2 - 0.07*e3;
    label(label_proj, "\center{\eqn{||\bold{x}||\ws \regular{cos}\ws \theta \ws \bold{e_{1}}}}");

    // contração
    c = show(red(x . B));
    label_c = 1.04*c - 0.02*e1 + 0.15*e3;
    label(label_c, "\center{\eqn{\bold{x \lc B}}}");


}
