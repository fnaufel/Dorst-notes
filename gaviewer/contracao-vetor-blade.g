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
