{:dist_fn_species_knobs=>
  {:variables=>
    {:fexpr=>
      {:should_include=>"true",
       :description=>
        "Temporal implicitness parameter. Recommended value: 0.48",
       :help=>
        "Temporal implicitness parameter. Any value smaller than 0.5 adds numerical dissipation.  fexpr=0.5 is 2cd order time-centered, fexpr=0 is fully implicit backward Euler, fexpr=1.0 is fully explicit forward Euler. \n** Recommended value: 0.48",
       :code_name=>:fexpr,
       :must_pass=>
        [{:test=>"kind_of? Numeric",
          :explanation=>
           "This variable must be a floating point number (an integer is also acceptable: it will be converted into a floating point number)."}],
       :type=>:Float},
     :bakdif=>
      {:should_include=>"true",
       :description=>"Spatial implicitness parameter. Recommended value: 0.05",
       :help=>
        "Spatial implicitness parameter. Any value greater than 0 adds numerical dissipation (usually necessary).  bakdif=0 is 2cd-order space-centered, bakdif=1.0 is fully upwinded.\n** Recommended value for electrostatic runs: 0.05. For electromagnetic runs, bakdif should be 0.",
       :code_name=>:bakdif,
       :must_pass=>
        [{:test=>"kind_of? Numeric",
          :explanation=>
           "This variable must be a floating point number (an integer is also acceptable: it will be converted into a floating point number)."}],
       :type=>:Float}},
   :enumerator=>{:name=>:nspec, :estimated_value=>5},
   :description=>"",
   :should_include=>"true"},
 :theta_grid_parameters=>
  {:description=>"",
   :should_include=>"true",
   :variables=>
    {:eps=>
      {:should_include=>"true",
       :description=>"eps=r/R",
       :help=>
        "Controls particle trapping (among other things) in simple geometric models.  <math>\\epsilon = r/R</math>",
       :code_name=>:eps,
       :must_pass=>
        [{:test=>"kind_of? Numeric",
          :explanation=>
           "This variable must be a floating point number (an integer is also acceptable: it will be converted into a floating point number)."}],
       :type=>:Float,
       :autoscanned_defaults=>[0.2]},
     :shat=>
      {:should_include=>"true",
       :description=>"",
       :help=>
        "Sets value of magnetic shear in simple geometric models.\n** over-ridden by s_hat_input in theta_grid_eik_knobs for most values of bishop.",
       :code_name=>:shat,
       :must_pass=>
        [{:test=>"kind_of? Numeric",
          :explanation=>
           "This variable must be a floating point number (an integer is also acceptable: it will be converted into a floating point number)."}],
       :type=>:Float,
       :autoscanned_defaults=>[0.8]},
     :qinp=>
      {:should_include=>"true",
       :description=>
        "Sets value of the safety factor when using local toroidal equilibrium model.",
       :help=>
        "Sets value of the safety factor when using local toroidal equilibrium model.",
       :code_name=>:qinp,
       :must_pass=>
        [{:test=>"kind_of? Numeric",
          :explanation=>
           "This variable must be a floating point number (an integer is also acceptable: it will be converted into a floating point number)."}],
       :type=>:Float,
       :autoscanned_defaults=>[1.4]},
     :rmaj=>
      {:should_include=>"true",
       :description=>"Major radius/a (Position of magnetic axis)",
       :help=>"Major radius/a (Position of magnetic axis)",
       :code_name=>:rmaj,
       :must_pass=>
        [{:test=>"kind_of? Numeric",
          :explanation=>
           "This variable must be a floating point number (an integer is also acceptable: it will be converted into a floating point number)."}],
       :type=>:Float,
       :autoscanned_defaults=>[1.0]},
     :shift=>
      {:should_include=>"true",
       :description=>"Sets Shafranov shift. See online help for definition.",
       :help=>
        "shift is related to derivatives of the Shafranov shift, but this input variable has '''different physical definitions''' in s-alpha and Miller equilbrium models:  \n** In s-alpha shift<math>\\propto</math> p' is a parameter for local <math>J_{\\phi}</math> (and NOT <math> B_{\\theta}</math> which is constant): <math>shift = -\\frac{2epsl}{pk^2}\\frac{d\\beta}{d\\rho}=-\\frac{q^2R}{L_{ref}}\\frac{d\\beta}{d\\rho} > 0 </math> \n** In Miller shift is a parameter for local <math> B_{\\theta}</math> (and NOT for <math>J_{\\phi}</math>): <math>shift = \\frac{1}{L_{ref}} \\frac{dR}{d\\rho} < 0 </math> \n*NB in Miller shift contains the ''1st'' radial derivative of the Shafranov shift, BUT in s-alpha shift is related to a ''2nd'' radial derivative of the Shafranov shift.\n** in Miller an additional parameter (beta_prime) is required to specify the piece of <math>J_{\\phi} \\propto</math> p' \n** in s-alpha no additional parameter is required as the piece of <math>J_{\\phi} \\propto</math> p' is specified by shift.",
       :code_name=>:shift,
       :must_pass=>
        [{:test=>"kind_of? Numeric",
          :explanation=>
           "This variable must be a floating point number (an integer is also acceptable: it will be converted into a floating point number)."}],
       :type=>:Float,
       :autoscanned_defaults=>[0.0]},
     :drhodpsi=>
      {:should_include=>"true",
       :description=>nil,
       :help=>nil,
       :code_name=>:drhodpsi,
       :must_pass=>
        [{:test=>"kind_of? Numeric",
          :explanation=>
           "This variable must be a floating point number (an integer is also acceptable: it will be converted into a floating point number)."}],
       :type=>:Float,
       :autoscanned_defaults=>[1.0]},
     :epsl=>
      {:should_include=>"true",
       :description=>"epsl=2 a/R",
       :help=>
        "<math>\\epsilon_\\ell = \\frac{2 L_{ref}}{ R} </math> Sets curvature drift in s-alpha model, where <math>L_{ref}</math> is the GS2 equilibrium reference normalisation length and R is the major radius at the centre of the flux surface.",
       :code_name=>:epsl,
       :must_pass=>
        [{:test=>"kind_of? Numeric",
          :explanation=>
           "This variable must be a floating point number (an integer is also acceptable: it will be converted into a floating point number)."}],
       :type=>:Float,
       :autoscanned_defaults=>[2.0]},
     :kxfac=>
      {:should_include=>"true",
       :description=>nil,
       :help=>nil,
       :code_name=>:kxfac,
       :must_pass=>
        [{:test=>"kind_of? Numeric",
          :explanation=>
           "This variable must be a floating point number (an integer is also acceptable: it will be converted into a floating point number)."}],
       :type=>:Float,
       :autoscanned_defaults=>[1.0]},
     :ntheta=>
      {:should_include=>"true",
       :description=>
        "Number of points along field line (theta) per 2 pi segment",
       :help=>
        "Number of grid points along equilibrium magnetic field between <math>\\theta=(-\\pi,\\pi)</math> (in addition to a grid point at <math>\\theta=0</math>).\n** Ignored in some cases (when using numerical equilibria)",
       :code_name=>:ntheta,
       :must_pass=>
        [{:test=>"kind_of? Integer",
          :explanation=>"This variable must be an integer."}],
       :type=>:Integer,
       :autoscanned_defaults=>[32]},
     :nperiod=>
      {:should_include=>"true",
       :description=>
        "Number of 2 pi segments along equilibrium magnetic field.",
       :help=>
        "Sets the number of <math>2\\pi</math> segments along equilibrium magnetic field to include in simulation domain.  <math>N_{\\rm segments} = (2n_{\\rm period} - 1)</math>.\n** Ignored in some cases",
       :code_name=>:nperiod,
       :must_pass=>
        [{:test=>"kind_of? Integer",
          :explanation=>"This variable must be an integer."}],
       :type=>:Integer},
     :rhoc=>
      {:should_include=>"true",
       :description=>
        "Flux surface label. Usually rho = diameter/diameter of LCFS",
       :help=>
        "rhoc is flux surface label (0< rhoc< 1). Its exact meaning depends on irho. Usually rho = midplane diameter/midplane diameter of LCFS\n** When irho = 1, rhoc = sqrt(toroidal flux)/sqrt(toroidal flux of LCFS)\n** When irho = 2, rhoc =  midplane diameter/(midplane diameter of LCFS).  recommended\n** When irho = 3, rhoc =  poloidal flux/(poloidal flux of LCFS)",
       :code_name=>:rhoc,
       :must_pass=>
        [{:test=>"kind_of? Numeric",
          :explanation=>
           "This variable must be a floating point number (an integer is also acceptable: it will be converted into a floating point number)."}],
       :type=>:Float},
     :r_geo=>
      {:should_include=>"true",
       :description=>"Major radius/a (centerpoint of LCFS)",
       :help=>"Major radius/a (centerpoint of LCFS)",
       :code_name=>:r_geo,
       :must_pass=>
        [{:test=>"kind_of? Numeric",
          :explanation=>
           "This variable must be a floating point number (an integer is also acceptable: it will be converted into a floating point number)."}],
       :type=>:Float},
     :akappa=>
      {:should_include=>"true",
       :description=>
        "Sets local elongation when local toroidal equilibrium is specified.",
       :help=>
        "Sets local elongation when local toroidal equilibrium is specified.",
       :code_name=>:akappa,
       :must_pass=>
        [{:test=>"kind_of? Numeric",
          :explanation=>
           "This variable must be a floating point number (an integer is also acceptable: it will be converted into a floating point number)."}],
       :type=>:Float},
     :akappri=>
      {:should_include=>"true",
       :description=>"akappri = dkappa/drho",
       :help=>
        "Sets local gradient of elongation when local toroidal equilibrium is specified.\n** akappri = <math> d\\kappa/d\\rho </math>",
       :code_name=>:akappri,
       :must_pass=>
        [{:test=>"kind_of? Numeric",
          :explanation=>
           "This variable must be a floating point number (an integer is also acceptable: it will be converted into a floating point number)."}],
       :type=>:Float},
     :tri=>
      {:should_include=>"true",
       :description=>"tri = arcsin[(R(max(Z))-R_major)/r_mid]",
       :help=>
        "Sets local triangularity when local toroidal equilibrium is specified.\n** triangularity is tri = arcsin[(R(max(Z))-R_major)/r_mid]",
       :code_name=>:tri,
       :must_pass=>
        [{:test=>"kind_of? Numeric",
          :explanation=>
           "This variable must be a floating point number (an integer is also acceptable: it will be converted into a floating point number)."}],
       :type=>:Float},
     :tripri=>
      {:should_include=>"true",
       :description=>"tripri =  dtri/drho",
       :help=>
        "Sets local gradient of triangularity when local toroidal equilibrium is specified.\n** tripri =  <math>dtri/d\\rho</math>",
       :code_name=>:tripri,
       :must_pass=>
        [{:test=>"kind_of? Numeric",
          :explanation=>
           "This variable must be a floating point number (an integer is also acceptable: it will be converted into a floating point number)."}],
       :type=>:Float},
     :zp=>
      {:should_include=>"true",
       :description=>
        "No. of 2 pi segments in z/theta. Overrides nperiod if set.",
       :help=>
        "Number of 2 pi segments in the z/theta direction. Overrides nperiod if set. Otherwise set to 2*nperiod-1.",
       :code_name=>:zp,
       :must_pass=>
        [{:test=>"kind_of? Integer",
          :explanation=>"This variable must be an integer."}],
       :type=>:Integer},
     :pk=>
      {:should_include=>"true",
       :description=>"pk = 2 a / q R",
       :help=>
        "<math>p_k = \\frac{epsl}{q} = \\frac{2 L_{ref}}{ q R} </math> Sets q, the magnetic safety factor, and therefore also sets the connection length, i.e. the length of the box in the parallel direction, in terms of <math>L_{ref}</math>. Used only in high aspect ratio <math>s-\\alpha</math> equilibrium model.",
       :code_name=>:pk,
       :must_pass=>
        [{:test=>"kind_of? Numeric",
          :explanation=>
           "This variable must be a floating point number (an integer is also acceptable: it will be converted into a floating point number)."}],
       :type=>:Float},
     :kp=>
      {:should_include=>"true",
       :description=>"if kp >0 then pk = 2*kp",
       :help=>
        "kp sets parallel wavenumber and box length in slab geometry.  <math>k_p = \\frac{2 \\pi L_{ref}}{L_z}</math>. \n** always use kp instead of pk in slab geometry (if kp > 0 then gs2 sets pk = 2*kp) \n** in slab limit <math> shat =  \\frac{L_z}{2 \\pi L_s} = \\frac{L_{ref}}{k_p L_s}</math> : nb if kp = 1, <math> shat = \\frac{L_{ref}}{L_s}</math>, where L_s is the magnetic shear scale length.",
       :code_name=>:kp,
       :must_pass=>
        [{:test=>"kind_of? Numeric",
          :explanation=>
           "This variable must be a floating point number (an integer is also acceptable: it will be converted into a floating point number)."}],
       :type=>:Float}}},
 :kt_grids_box_parameters=>
  {:description=>"",
   :should_include=>"true",
   :variables=>
    {:jtwist=>
      {:should_include=>"true",
       :description=>"L_x = L_y  jtwist / (2 pi shat)",
       :help=>
        "For finite magnetic shear, determines box size in x direction according to \n** <math>L_x = L_y  jtwist / (2 \\pi \\hat{s}) </math>\n** Also affects the number of \"connections\" at each ky when linked boundary conditions are selected in the dist_fn_knobs namelist. \n** Internally initialised to <math>jtwist=MAX(Int[2\\pi\\hat{s}+0.5],1)</math> such that <math>L_x \\sim L_y</math> except for very small shear (<math>\\hat{s}<\\sim 0.16</math>).",
       :code_name=>:jtwist,
       :must_pass=>
        [{:test=>"kind_of? Integer",
          :explanation=>"This variable must be an integer."}],
       :type=>:Integer,
       :autoscanned_defaults=>[5]},
     :nx=>
      {:should_include=>"true",
       :description=>
        "The number of kx modes: the number of kx modes actually simulated (ntheta0) is equal to 2*(nx - 1)/3 + 1, due to the need to prevent aliasing.",
       :help=>
        "The number of kx modes: the number of kx modes actually simulated (ntheta0) is equal to 2*(nx - 1)/3 + 1, due to the need to prevent aliasing.",
       :code_name=>:nx,
       :must_pass=>
        [{:test=>"kind_of? Integer",
          :explanation=>"This variable must be an integer."}],
       :type=>:Integer,
       :autoscanned_defaults=>[16]},
     :ny=>
      {:should_include=>"true",
       :description=>
        "The number of ky modes: the number of ky modes actually simulated (naky) is equal to (ny - 1)/3 + 1, due to the need to prevent aliasing.",
       :help=>
        "The number of ky modes: the number of ky modes actually simulated (naky) is equal to (ny - 1)/3 + 1, due to the need to prevent aliasing.",
       :code_name=>:ny,
       :must_pass=>
        [{:test=>"kind_of? Integer",
          :explanation=>"This variable must be an integer."}],
       :type=>:Integer,
       :autoscanned_defaults=>[16]},
     :y0=>
      {:should_include=>"true",
       :description=>
        "The length of the box in the y direction (measured in the Larmour radius of species 1)",
       :help=>
        "The length of the box in the y direction (measured in the Larmour radius of species 1).  Box size in y direction is 2*pi*y0. \n**Note if <math>y0<0</math> then replaced with <math>-1/y0</math> so effectively setting the minimum wavelength captured by the box (related to [[aky_min]]).",
       :code_name=>:y0,
       :must_pass=>
        [{:test=>"kind_of? Integer",
          :explanation=>"This variable must be an integer."}],
       :type=>:Integer,
       :autoscanned_defaults=>[10]},
     :x0=>
      {:should_include=>"true",
       :description=>
        "The length of the box in the x direction (measured in the Larmour radius of species 1) if shat is 0 (ie 1e-6)",
       :help=>
        "The length of the box in the x direction (measured in the Larmour radius of species 1) if shat is 0 (ie 1e-6)",
       :code_name=>:x0,
       :must_pass=>
        [{:test=>"kind_of? Integer",
          :explanation=>"This variable must be an integer."}],
       :type=>:Integer,
       :autoscanned_defaults=>[10]},
     :naky=>
      {:should_include=>"true",
       :description=>
        "The actual number of ky modes (do not use for nonlinear runs, use ny)",
       :help=>
        "The actual number of ky modes (do not use for nonlinear runs, use ny). If left as zero (recommended), automatically set to (ny-1)/3+1.",
       :code_name=>:naky,
       :must_pass=>
        [{:test=>"kind_of? Integer",
          :explanation=>"This variable must be an integer."}],
       :type=>:Integer},
     :nakx=>
      {:should_include=>"true",
       :description=>nil,
       :help=>nil,
       :code_name=>:nakx,
       :must_pass=>
        [{:test=>"kind_of? Integer",
          :explanation=>"This variable must be an integer."}],
       :type=>:Integer},
     :ky_min=>
      {:should_include=>"true",
       :description=>nil,
       :help=>nil,
       :code_name=>:ky_min,
       :must_pass=>
        [{:test=>"kind_of? Numeric",
          :explanation=>
           "This variable must be a floating point number (an integer is also acceptable: it will be converted into a floating point number)."}],
       :type=>:Float}}},
 :dist_fn_knobs=>
  {:description=>"",
   :should_include=>"true",
   :variables=>
    {:g_exb=>
      {:should_include=>"true",
       :description=>nil,
       :help=>
        "<math> \\frac{\\rho}{q} \\frac{d\\Omega^{\\rm GS2}}{d\\rho_n} </math> where <math>\\Omega^{\\rm GS2}</math> is toroidal angular velocity normalised to the reference frequency <math>v_{t}^{\\rm ref}/a</math>\nand  <math>\\rho_n</math> is the normalised flux label which has value <math>\\rho</math> on the local surface. ",
       :code_name=>:g_exb,
       :must_pass=>
        [{:test=>"kind_of? Integer",
          :explanation=>"This variable must be an integer."}],
       :type=>:Integer,
       :autoscanned_defaults=>[0]},
     :adiabatic_option=>
      {:should_include=>"true",
       :description=>
        "The form of the adiabatic response (if a species is being modeled as adiabatic).",
       :help=>
        "The form of the adiabatic response (if a species is being modeled as adiabatic). Ignored if there are electrons in the species list.\n**  'no-field-line-average-term'  Adiabatic species has n = Phi.  Appropriate for single-species ETG simulations. \n**  'default'  Same as 'no-field-line-average-term'\n**  'iphi00=0' Same as 'no-field-line-average-term'\n**  'iphi00=1' Same as 'no-field-line-average-term'\n**  'field-line-average-term'  Adiabatic species has n=Phi-< Phi >.  Appropriate for single-species ITG simulations.\n**  'iphi00=2' Same as field-line-average-term'\n**  'iphi00=3' Adiabatic species has n=Phi-< Phi >_y.  Incorrect implementation of field-line-average-term.",
       :code_name=>:adiabatic_option,
       :must_pass=>
        [{:test=>"kind_of? String",
          :explanation=>"This variable must be a string."}],
       :type=>:String},
     :gridfac=>
      {:should_include=>"true",
       :description=>"Affects boundary condition at end of theta grid.",
       :help=>
        "Affects boundary condition at end of theta grid.   Recommended value: 1.",
       :code_name=>:gridfac,
       :must_pass=>
        [{:test=>"kind_of? Numeric",
          :explanation=>
           "This variable must be a floating point number (an integer is also acceptable: it will be converted into a floating point number)."}],
       :type=>:Float},
     :boundary_option=>
      {:should_include=>"true",
       :description=>
        "Sets the boundary condition along the field line (i.e. the boundary conditions at theta = +- pi).",
       :help=>
        "Sets the boundary condition along the field line (i.e. the boundary conditions at theta = +- pi). Possible values are: \n**'zero', 'default', 'unconnected' - Use Kotschenreuther boundary condition at endpoints of theta grid\n**'self-periodic', 'periodic', 'kperiod=1' - Each mode is periodic in theta with itself\n**'linked' - Twist and shift boundary conditions (used for kt_grids:grid_option='box')\n**'alternate-zero' - Ignored \n*See also [[nonad_zero]]",
       :code_name=>:boundary_option,
       :must_pass=>
        [{:test=>"kind_of? String",
          :explanation=>"This variable must be a string."}],
       :type=>:String},
     :omprimfac=>
      {:should_include=>"true",
       :description=>nil,
       :help=>
        "Factor multiplying the parallel shearing drive term when running with non-zero [[g_exb]]  ",
       :code_name=>:omprimfac,
       :must_pass=>
        [{:test=>"kind_of? Numeric",
          :explanation=>
           "This variable must be a floating point number (an integer is also acceptable: it will be converted into a floating point number)."}],
       :type=>:Float},
     :nonad_zero=>
      {:should_include=>"true",
       :description=>
        "If true switches on new parallel boundary condition where h=0 at incoming boundary instead of g=0.",
       :help=>
        "If true switches on new parallel boundary condition where h=0 at incoming boundary instead of g=0.",
       :code_name=>:nonad_zero,
       :must_pass=>
        [{:test=>"kind_of? String and FORTRAN_BOOLS.include? self",
          :explanation=>
           "This variable must be a fortran boolean. (In Ruby this is represented as a string: e.g. '.true.')"}],
       :type=>:Fortran_Bool},
     :wfb_cmr=>
      {:should_include=>"true",
       :description=>"",
       :help=>"",
       :code_name=>:wfb_cmr,
       :must_pass=>
        [{:test=>"kind_of? String and FORTRAN_BOOLS.include? self",
          :explanation=>
           "This variable must be a fortran boolean. (In Ruby this is represented as a string: e.g. '.true.')"}],
       :type=>:Fortran_Bool},
     :cllc=>
      {:should_include=>"true",
       :description=>"",
       :help=>"Experimental",
       :code_name=>:cllc,
       :must_pass=>
        [{:test=>"kind_of? String and FORTRAN_BOOLS.include? self",
          :explanation=>
           "This variable must be a fortran boolean. (In Ruby this is represented as a string: e.g. '.true.')"}],
       :type=>:Fortran_Bool},
     :esv=>
      {:should_include=>"true",
       :description=>"",
       :help=>
        "If esv=.true. and boundary_option='linked' (i.e. flux tube simulation) then at every time step we ensure the fields are exactly single valued by replacing the field at one of the repeated boundary points with the value at the other boundary (i.e. of the two array locations which should be storing the field at the same point in space we pick one and set the other equal to the one we picked). This can be important in correctly tracking the amplitude of damped modes to very small values. Also see [[clean_init]].\n ",
       :code_name=>:esv,
       :must_pass=>
        [{:test=>"kind_of? String and FORTRAN_BOOLS.include? self",
          :explanation=>
           "This variable must be a fortran boolean. (In Ruby this is represented as a string: e.g. '.true.')"}],
       :type=>:Fortran_Bool},
     :opt_init_bc=>
      {:should_include=>"true",
       :description=>"",
       :help=>
        "If true then use an optimised init_connected_bc. This routine can become quite expensive for large problems and currently does not scale well. The optimised routine improves serial performance but does not yet help with scaling.  ",
       :code_name=>:opt_init_bc,
       :must_pass=>
        [{:test=>"kind_of? String and FORTRAN_BOOLS.include? self",
          :explanation=>
           "This variable must be a fortran boolean. (In Ruby this is represented as a string: e.g. '.true.')"}],
       :type=>:Fortran_Bool},
     :opt_source=>
      {:should_include=>"true",
       :description=>
        "If true then use an optimised linear source calculation which uses pre-calculated coefficients.",
       :help=>
        "If true then use an optimised linear source calculation which uses pre-calculated coefficients, calculates both sigma together and skips work associated with empty fields. Can contribute 10-25% savings for linear electrostatic collisionless simulations. For more complicated runs the savings will likely be less. If enabled memory usage will increase due to using an additional array of size 2-4 times gnew. Can potentially slow down certain runs.",
       :code_name=>:opt_source,
       :must_pass=>
        [{:test=>"kind_of? String and FORTRAN_BOOLS.include? self",
          :explanation=>
           "This variable must be a fortran boolean. (In Ruby this is represented as a string: e.g. '.true.')"}],
       :type=>:Fortran_Bool},
     :poisfac=>
      {:should_include=>"true",
       :description=>nil,
       :help=>
        " If non-zero, quasineutrality is not enforced; poisfac=  (lambda_Debye/rho)**2 \n",
       :code_name=>:poisfac,
       :must_pass=>
        [{:test=>"kind_of? Numeric",
          :explanation=>
           "This variable must be a floating point number (an integer is also acceptable: it will be converted into a floating point number)."}],
       :type=>:Float},
     :apfac=>
      {:should_include=>"true",
       :description=>nil,
       :help=>" Leave as unity.  For debugging.\n",
       :code_name=>:apfac,
       :must_pass=>
        [{:test=>"kind_of? Numeric",
          :explanation=>
           "This variable must be a floating point number (an integer is also acceptable: it will be converted into a floating point number)."}],
       :type=>:Float},
     :driftknob=>
      {:should_include=>"true",
       :description=>"",
       :help=>
        "Leave as unity.  For debugging. Multiplies the passing particle drifts (also see [[tpdriftknob]]).",
       :code_name=>:driftknob,
       :must_pass=>
        [{:test=>"kind_of? Numeric",
          :explanation=>
           "This variable must be a floating point number (an integer is also acceptable: it will be converted into a floating point number)."}],
       :type=>:Float},
     :tpdriftknob=>
      {:should_include=>"true",
       :description=>nil,
       :help=>
        "For debugging only. Multiplies the trapped particle drifts (also see [[driftknob]]).  ",
       :code_name=>:tpdriftknob,
       :must_pass=>
        [{:test=>"kind_of? Numeric",
          :explanation=>
           "This variable must be a floating point number (an integer is also acceptable: it will be converted into a floating point number)."}],
       :type=>:Float},
     :t0=>
      {:should_include=>"true",
       :description=>nil,
       :help=>nil,
       :code_name=>:t0,
       :must_pass=>
        [{:test=>"kind_of? Numeric",
          :explanation=>
           "This variable must be a floating point number (an integer is also acceptable: it will be converted into a floating point number)."}],
       :type=>:Float},
     :source0=>
      {:should_include=>"true",
       :description=>nil,
       :help=>nil,
       :code_name=>:source0,
       :must_pass=>
        [{:test=>"kind_of? Numeric",
          :explanation=>
           "This variable must be a floating point number (an integer is also acceptable: it will be converted into a floating point number)."}],
       :type=>:Float},
     :omega0=>
      {:should_include=>"true",
       :description=>nil,
       :help=>nil,
       :code_name=>:omega0,
       :must_pass=>
        [{:test=>"kind_of? Numeric",
          :explanation=>
           "This variable must be a floating point number (an integer is also acceptable: it will be converted into a floating point number)."}],
       :type=>:Float},
     :gamma0=>
      {:should_include=>"true",
       :description=>nil,
       :help=>nil,
       :code_name=>:gamma0,
       :must_pass=>
        [{:test=>"kind_of? Numeric",
          :explanation=>
           "This variable must be a floating point number (an integer is also acceptable: it will be converted into a floating point number)."}],
       :type=>:Float},
     :phi_ext=>
      {:should_include=>"true",
       :description=>nil,
       :help=>nil,
       :code_name=>:phi_ext,
       :must_pass=>
        [{:test=>"kind_of? Numeric",
          :explanation=>
           "This variable must be a floating point number (an integer is also acceptable: it will be converted into a floating point number)."}],
       :type=>:Float},
     :afilter=>
      {:should_include=>"true",
       :description=>nil,
       :help=>" For debugging only.\n",
       :code_name=>:afilter,
       :must_pass=>
        [{:test=>"kind_of? Numeric",
          :explanation=>
           "This variable must be a floating point number (an integer is also acceptable: it will be converted into a floating point number)."}],
       :type=>:Float},
     :kfilter=>
      {:should_include=>"true",
       :description=>nil,
       :help=>" For debugging only.\n",
       :code_name=>:kfilter,
       :must_pass=>
        [{:test=>"kind_of? Numeric",
          :explanation=>
           "This variable must be a floating point number (an integer is also acceptable: it will be converted into a floating point number)."}],
       :type=>:Float},
     :g_exbfac=>
      {:should_include=>"true",
       :description=>"Multiplies g_exb in the perpendicular shearing term.",
       :help=>
        "Multiplies g_exb in the perpendicular shearing term ''but not'' in the parallel drive term. Use for simulations with purely parallel flow.",
       :code_name=>:g_exbfac,
       :must_pass=>
        [{:test=>"kind_of? Numeric",
          :explanation=>
           "This variable must be a floating point number (an integer is also acceptable: it will be converted into a floating point number)."}],
       :type=>:Float},
     :g_exb_error_limit=>
      {:should_include=>"true",
       :description=>
        "With flow shear in single mode, constrains relative error in phi^2.",
       :help=>
        "With flow shear in single mode, constrains relative error in phi^2.",
       :code_name=>:g_exb_error_limit,
       :must_pass=>
        [{:test=>"kind_of? Numeric",
          :explanation=>
           "This variable must be a floating point number (an integer is also acceptable: it will be converted into a floating point number)."}],
       :type=>:Float},
     :g_exb_start_time=>
      {:should_include=>"true",
       :description=>"Flow shear switched on at this time.",
       :help=>"Flow shear switched on at this time.",
       :code_name=>:g_exb_start_time,
       :must_pass=>
        [{:test=>"kind_of? Integer",
          :explanation=>"This variable must be an integer."}],
       :type=>:Integer},
     :g_exb_start_timestep=>
      {:should_include=>"true",
       :description=>"Flow shear is switched on at this time step.",
       :help=>"Flow shear is switched on at this time step.",
       :code_name=>:g_exb_start_timestep,
       :must_pass=>
        [{:test=>"kind_of? Integer",
          :explanation=>"This variable must be an integer."}],
       :type=>:Integer},
     :mach=>
      {:should_include=>"true",
       :description=>nil,
       :help=>"Number multiplying the coriolis drift   ",
       :code_name=>:mach,
       :must_pass=>
        [{:test=>"kind_of? Numeric",
          :explanation=>
           "This variable must be a floating point number (an integer is also acceptable: it will be converted into a floating point number)."}],
       :type=>:Float},
     :btor_slab=>
      {:should_include=>"true",
       :description=>nil,
       :help=>
        "Overrides the itor_over_B internal parameter, meant only for slab runs where it sets the angle between the magnetic field and the toroidal flow.",
       :code_name=>:btor_slab,
       :must_pass=>
        [{:test=>"kind_of? Numeric",
          :explanation=>
           "This variable must be a floating point number (an integer is also acceptable: it will be converted into a floating point number)."}],
       :type=>:Float},
     :wfb=>
      {:should_include=>"true",
       :description=>nil,
       :help=>
        "For debugging only. Sets the boundary value for the barely trapped/passing particle.  ",
       :code_name=>:wfb,
       :must_pass=>
        [{:test=>"kind_of? Numeric",
          :explanation=>
           "This variable must be a floating point number (an integer is also acceptable: it will be converted into a floating point number)."}],
       :type=>:Float},
     :mult_imp=>
      {:should_include=>"true",
       :description=>nil,
       :help=>
        " Allow different species to have different values of bakdif and fexpr.   Not allowed for nonlinear runs. \n",
       :code_name=>:mult_imp,
       :must_pass=>
        [{:test=>"kind_of? String and FORTRAN_BOOLS.include? self",
          :explanation=>
           "This variable must be a fortran boolean. (In Ruby this is represented as a string: e.g. '.true.')"}],
       :type=>:Fortran_Bool},
     :test=>
      {:should_include=>"true",
       :description=>"For debugging",
       :help=>
        "For debugging only. If set then run will print various grid sizes and then stop.",
       :code_name=>:test,
       :must_pass=>
        [{:test=>"kind_of? String and FORTRAN_BOOLS.include? self",
          :explanation=>
           "This variable must be a fortran boolean. (In Ruby this is represented as a string: e.g. '.true.')"}],
       :type=>:Fortran_Bool},
     :def_parity=>
      {:should_include=>"true",
       :description=>nil,
       :help=>" True only allows solutions of single parity.\n",
       :code_name=>:def_parity,
       :must_pass=>
        [{:test=>"kind_of? String and FORTRAN_BOOLS.include? self",
          :explanation=>
           "This variable must be a fortran boolean. (In Ruby this is represented as a string: e.g. '.true.')"}],
       :type=>:Fortran_Bool},
     :zero_forbid=>
      {:should_include=>"true",
       :description=>"",
       :help=>
        "If true then force `gnew=0` in the forbidden region at the end of invert_rhs_1 (this is the original behaviour).\n*Nothing should depend on the forbidden region so g should be 0 here and if it's not for some reason then it shouldn't impact on results. If the results of your simulation depend upon this flag then something has likely gone wrong somewhere.\n\n",
       :code_name=>:zero_forbid,
       :must_pass=>
        [{:test=>"kind_of? String and FORTRAN_BOOLS.include? self",
          :explanation=>
           "This variable must be a fortran boolean. (In Ruby this is represented as a string: e.g. '.true.')"}],
       :type=>:Fortran_Bool},
     :even=>
      {:should_include=>"true",
       :description=>nil,
       :help=>nil,
       :code_name=>:even,
       :must_pass=>
        [{:test=>"kind_of? String and FORTRAN_BOOLS.include? self",
          :explanation=>
           "This variable must be a fortran boolean. (In Ruby this is represented as a string: e.g. '.true.')"}],
       :type=>:Fortran_Bool},
     :lf_default=>
      {:should_include=>"true",
       :description=>"",
       :help=>"",
       :code_name=>:lf_default,
       :must_pass=>
        [{:test=>"kind_of? String and FORTRAN_BOOLS.include? self",
          :explanation=>
           "This variable must be a fortran boolean. (In Ruby this is represented as a string: e.g. '.true.')"}],
       :type=>:Fortran_Bool},
     :lf_decompose=>
      {:should_include=>"true",
       :description=>"",
       :help=>"",
       :code_name=>:lf_decompose,
       :must_pass=>
        [{:test=>"kind_of? String and FORTRAN_BOOLS.include? self",
          :explanation=>
           "This variable must be a fortran boolean. (In Ruby this is represented as a string: e.g. '.true.')"}],
       :type=>:Fortran_Bool},
     :source_option=>
      {:should_include=>"true",
       :description=>nil,
       :help=>nil,
       :code_name=>:source_option,
       :must_pass=>
        [{:test=>"kind_of? String",
          :explanation=>"This variable must be a string."}],
       :type=>:String}}},
 :parameters=>
  {:description=>"",
   :should_include=>"true",
   :variables=>
    {:tite=>
      {:should_include=>"true",
       :description=>"Ratio of ion to electron temperatures.",
       :help=>
        "Ratio of ion to electron temperatures.  This parameter is used only when there is no species called \"electron\" included.",
       :code_name=>:tite,
       :must_pass=>
        [{:test=>"kind_of? Numeric",
          :explanation=>
           "This variable must be a floating point number (an integer is also acceptable: it will be converted into a floating point number)."}],
       :type=>:Float},
     :beta=>
      {:should_include=>"true",
       :description=>
        "Ratio of particle to magnetic pressure (reference Beta, not total beta):  beta=n_0 T_0 /( B^2 / (8 pi))",
       :help=>
        "In GS2 <math>\\beta</math> is the ratio of the reference pressure to the reference magnetic energy density, <math>\\beta = 2 \\mu_0 n_{\\rm ref} T_{\\rm ref}/B_{\\rm ref}^2 </math>. Mainly GS2 uses <math>\\beta</math> to determine the amplitude of the perturbed magnetic fields.   \n**For electromagnetic runs, the contribution of each species to the total parallel current is weighted by a factor of <math>w_s = 2 \\beta Z_s n_s \\sqrt{T_s/m_s}</math>.\n**Handy formula: 403. * nref_19 * T_ref(kev) / 1.e5 / B_T**2, where nref_19 is the reference density / 10**19 and B_T is the magnetic field in Tesla.\n**For electromagnetic runs that include <math>\\delta B_\\parallel</math>, this field is proportional to <math>\\beta</math>.\n**The contribution of <math>(\\delta B)^2</math> to the total gyrokinetic energy is inversely proportional to this input parameter.\n**If an antenna is set up to drive Alfven waves, then <math>\\beta</math> is used to calculate the Alfven frequency.  \n**For some collision operator models, <math>\\beta</math> is used to calculate the resistivity.  \n**For some rarely-used initial conditions, <math>\\beta</math> appears explicitly. \n**Important:  <math>\\beta</math> is not a GS2 plasma equilibrium parameter, but it must be chosen with care. <math>\\beta</math> is '''not''' automatically consistent with the value of <math>\\beta'</math> used in the local magnetic equilibrium.  The user is responsible for ensuring that the values of <math> \\beta </math> together with the densities, temperatures and gradients for all species are consistent with the local equilibrium value of <math>\\beta'</math>.",
       :code_name=>:beta,
       :must_pass=>
        [{:test=>"kind_of? Numeric",
          :explanation=>
           "This variable must be a floating point number (an integer is also acceptable: it will be converted into a floating point number)."}],
       :type=>:Float},
     :zeff=>
      {:should_include=>"true",
       :description=>"Effective ionic charge.",
       :help=>
        "Effective ionic charge.  The parameter <math>Z_{\\rm eff}</math> appears only in the electron collision frequency, and is not automatically set to be consistent with the mix of species specified in the species namelists.",
       :code_name=>:zeff,
       :must_pass=>
        [{:test=>"kind_of? Numeric",
          :explanation=>
           "This variable must be a floating point number (an integer is also acceptable: it will be converted into a floating point number)."}],
       :type=>:Float}}},
 :nonlinear_terms_knobs=>
  {:description=>"",
   :should_include=>"true",
   :variables=>
    {:cfl=>
      {:should_include=>"true",
       :description=>"The maximum delt < cfl * min(Delta_perp/v_perp)",
       :help=>"The maximum delt < cfl * min(Delta_perp/v_perp)",
       :code_name=>:cfl,
       :must_pass=>
        [{:test=>"kind_of? Numeric",
          :explanation=>
           "This variable must be a floating point number (an integer is also acceptable: it will be converted into a floating point number)."}],
       :type=>:Float,
       :autoscanned_defaults=>[0.1]},
     :nonlinear_mode=>
      {:should_include=>"true",
       :description=>"Include nonlinear terms? ('on','off')",
       :help=>
        "Should the nonlinear terms be calculated?\n \n** 'none', 'default', 'off':  Do not include nonlinear terms, i.e. run a linear calculation.\n** 'on' Include nonlinear terms.",
       :code_name=>:nonlinear_mode,
       :must_pass=>
        [{:test=>"kind_of? String",
          :explanation=>"This variable must be a string."}],
       :type=>:String,
       :autoscanned_defaults=>["off"]},
     :flow_mode=>
      {:should_include=>"true",
       :description=>nil,
       :help=>" Experimental\n",
       :code_name=>:flow_mode,
       :must_pass=>
        [{:test=>"kind_of? String",
          :explanation=>"This variable must be a string."}],
       :type=>:String},
     :c_par=>
      {:should_include=>"true",
       :description=>nil,
       :help=>"  Ignored.\n",
       :code_name=>:c_par,
       :must_pass=>
        [{:test=>"kind_of? Numeric",
          :explanation=>
           "This variable must be a floating point number (an integer is also acceptable: it will be converted into a floating point number)."}],
       :type=>:Float},
     :c_perp=>
      {:should_include=>"true",
       :description=>nil,
       :help=>" Ignored.\n",
       :code_name=>:c_perp,
       :must_pass=>
        [{:test=>"kind_of? Numeric",
          :explanation=>
           "This variable must be a floating point number (an integer is also acceptable: it will be converted into a floating point number)."}],
       :type=>:Float},
     :p_x=>
      {:should_include=>"true",
       :description=>nil,
       :help=>" Ignored.\n",
       :code_name=>:p_x,
       :must_pass=>
        [{:test=>"kind_of? Numeric",
          :explanation=>
           "This variable must be a floating point number (an integer is also acceptable: it will be converted into a floating point number)."}],
       :type=>:Float},
     :p_y=>
      {:should_include=>"true",
       :description=>nil,
       :help=>" Ignored.\n",
       :code_name=>:p_y,
       :must_pass=>
        [{:test=>"kind_of? Numeric",
          :explanation=>
           "This variable must be a floating point number (an integer is also acceptable: it will be converted into a floating point number)."}],
       :type=>:Float},
     :p_z=>
      {:should_include=>"true",
       :description=>nil,
       :help=>" Ignored.\n",
       :code_name=>:p_z,
       :must_pass=>
        [{:test=>"kind_of? Numeric",
          :explanation=>
           "This variable must be a floating point number (an integer is also acceptable: it will be converted into a floating point number)."}],
       :type=>:Float}}},
 :gs2_diagnostics_knobs=>
  {:description=>"",
   :should_include=>"true",
   :variables=>
    {:nwrite=>
      {:should_include=>"true",
       :description=>"Output diagnostic data every nwrite",
       :help=>"Output diagnostic data every nwrite timesteps.",
       :code_name=>:nwrite,
       :must_pass=>
        [{:test=>"kind_of? Integer",
          :explanation=>"This variable must be an integer."}],
       :type=>:Integer,
       :autoscanned_defaults=>[10]},
     :nsave=>
      {:should_include=>"true",
       :description=>"Write restart files every nsave timesteps",
       :help=>"Write restart files every nsave timesteps",
       :code_name=>:nsave,
       :must_pass=>
        [{:test=>"kind_of? Integer",
          :explanation=>"This variable must be an integer."}],
       :type=>:Integer,
       :autoscanned_defaults=>[5000]},
     :navg=>
      {:should_include=>"true",
       :description=>"Any time averages performed over navg",
       :help=>"Any time averages performed over navg timesteps.",
       :code_name=>:navg,
       :must_pass=>
        [{:test=>"kind_of? Integer",
          :explanation=>"This variable must be an integer."}],
       :type=>:Integer,
       :autoscanned_defaults=>[100]},
     :nwrite_mult=>
      {:should_include=>"true",
       :description=>
        "Large datasets written every nwrite_mult * nwrite timesteps.",
       :help=>
        "Multiplies nwrite to determine when large/expensive to calculate datasets such as the parallel correlation function are written to file.",
       :code_name=>:nwrite_mult,
       :must_pass=>
        [{:test=>"kind_of? Integer",
          :explanation=>"This variable must be an integer."}],
       :type=>:Integer},
     :write_any=>
      {:should_include=>"true",
       :description=>"",
       :help=>"",
       :code_name=>:write_any,
       :must_pass=>
        [{:test=>"kind_of? String and FORTRAN_BOOLS.include? self",
          :explanation=>
           "This variable must be a fortran boolean. (In Ruby this is represented as a string: e.g. '.true.')"}],
       :type=>:Fortran_Bool},
     :append_old=>
      {:should_include=>"true",
       :description=>
        "If true, run_name.out.nc already exists, open it and append to it.",
       :help=>
        "If true, and netcdf output file (.out.nc) already exists (e.g. if you are restarting), open it and append to it.",
       :code_name=>:append_old,
       :must_pass=>
        [{:test=>"kind_of? String and FORTRAN_BOOLS.include? self",
          :explanation=>
           "This variable must be a fortran boolean. (In Ruby this is represented as a string: e.g. '.true.')"}],
       :type=>:Fortran_Bool},
     :enable_parallel=>
      {:should_include=>"true",
       :description=>"Switch on netcdf parallel.",
       :help=>"Switch on netcdf parallel.",
       :code_name=>:enable_parallel,
       :must_pass=>
        [{:test=>"kind_of? String and FORTRAN_BOOLS.include? self",
          :explanation=>
           "This variable must be a fortran boolean. (In Ruby this is represented as a string: e.g. '.true.')"}],
       :type=>:Fortran_Bool},
     :serial_netcdf4=>
      {:should_include=>"true",
       :description=>"",
       :help=>"",
       :code_name=>:serial_netcdf4,
       :must_pass=>
        [{:test=>"kind_of? String and FORTRAN_BOOLS.include? self",
          :explanation=>
           "This variable must be a fortran boolean. (In Ruby this is represented as a string: e.g. '.true.')"}],
       :type=>:Fortran_Bool},
     :igomega=>
      {:should_include=>"true",
       :description=>" Theta index at which frequencies are calculated.\n",
       :help=>" Theta index at which frequencies are calculated.\n",
       :code_name=>:igomega,
       :must_pass=>
        [{:test=>"kind_of? Integer",
          :explanation=>"This variable must be an integer."}],
       :type=>:Integer},
     :print_line=>
      {:should_include=>"true",
       :description=>
        "Estimated frequencies and growth rates to the screen/stdout",
       :help=>
        "Estimated frequencies and output to the screen/stdout every nwrite timesteps",
       :code_name=>:print_line,
       :must_pass=>
        [{:test=>"kind_of? String and FORTRAN_BOOLS.include? self",
          :explanation=>
           "This variable must be a fortran boolean. (In Ruby this is represented as a string: e.g. '.true.')"}],
       :type=>:Fortran_Bool},
     :print_flux_line=>
      {:should_include=>"true",
       :description=>"Instantaneous fluxes output to screen",
       :help=>"Instantaneous fluxes output to screen every nwrite timesteps",
       :code_name=>:print_flux_line,
       :must_pass=>
        [{:test=>"kind_of? String and FORTRAN_BOOLS.include? self",
          :explanation=>
           "This variable must be a fortran boolean. (In Ruby this is represented as a string: e.g. '.true.')"}],
       :type=>:Fortran_Bool},
     :write_line=>
      {:should_include=>"true",
       :description=>
        "If (write_ascii = T) write estimated frequencies and growth rates to the output file",
       :help=>
        "If (write_ascii = T) write estimated frequencies and growth rates to the output file (usually runname.out) every nwrite steps.",
       :code_name=>:write_line,
       :must_pass=>
        [{:test=>"kind_of? String and FORTRAN_BOOLS.include? self",
          :explanation=>
           "This variable must be a fortran boolean. (In Ruby this is represented as a string: e.g. '.true.')"}],
       :type=>:Fortran_Bool},
     :write_flux_line=>
      {:should_include=>"true",
       :description=>nil,
       :help=>
        " If (write_ascii = T) instantaneous fluxes output to runname.out every nwrite timesteps\n",
       :code_name=>:write_flux_line,
       :must_pass=>
        [{:test=>"kind_of? String and FORTRAN_BOOLS.include? self",
          :explanation=>
           "This variable must be a fortran boolean. (In Ruby this is represented as a string: e.g. '.true.')"}],
       :type=>:Fortran_Bool},
     :write_fields=>
      {:should_include=>"true",
       :description=>nil,
       :help=>
        "Updates the phi, apar and bpar arrays in the netcdf output every nwrite steps. This is useful to allow the impatient to get an idea of the eigenfunction quality before the simulation ends without having to store the fields as a function of time.\n* ''note'' : previously this flag triggered attempts to write phi, apar and bpar as a function of time. This behaviour is now available through the write_phi_over_time flags (and related for other fields). ",
       :code_name=>:write_fields,
       :must_pass=>
        [{:test=>"kind_of? String and FORTRAN_BOOLS.include? self",
          :explanation=>
           "This variable must be a fortran boolean. (In Ruby this is represented as a string: e.g. '.true.')"}],
       :type=>:Fortran_Bool},
     :write_phi_over_time=>
      {:should_include=>"true",
       :description=>"Write entire Phi field to NetCDF file every nwrite.",
       :help=>
        "If this variable is set to true then the entire field Phi will be written to the NetCDF file every nwrite. Useful for making films. This can cause the NetCDF file to be huge, if resolution is large or nwrite is small.",
       :code_name=>:write_phi_over_time,
       :must_pass=>
        [{:test=>"kind_of? String and FORTRAN_BOOLS.include? self",
          :explanation=>
           "This variable must be a fortran boolean. (In Ruby this is represented as a string: e.g. '.true.')"}],
       :type=>:Fortran_Bool},
     :write_apar_over_time=>
      {:should_include=>"true",
       :description=>
        "Write entire A_parallel field to NetCDF file every nwrite.",
       :help=>
        "If this variable is set to true then the entire field A_parallel will be written to the NetCDF file every nwrite. This can cause the NetCDF file to be huge, if resolution is large or nwrite is small.",
       :code_name=>:write_apar_over_time,
       :must_pass=>
        [{:test=>"kind_of? String and FORTRAN_BOOLS.include? self",
          :explanation=>
           "This variable must be a fortran boolean. (In Ruby this is represented as a string: e.g. '.true.')"}],
       :type=>:Fortran_Bool},
     :write_bpar_over_time=>
      {:should_include=>"true",
       :description=>
        "Write entire B_parallel field to NetCDF file every nwrite.",
       :help=>
        "If this variable is set to true then the entire field B_parallel will be written to the NetCDF file every nwrite. Useful for making films. This can cause the NetCDF file to be huge, if resolution is large or nwrite is small.",
       :code_name=>:write_bpar_over_time,
       :must_pass=>
        [{:test=>"kind_of? String and FORTRAN_BOOLS.include? self",
          :explanation=>
           "This variable must be a fortran boolean. (In Ruby this is represented as a string: e.g. '.true.')"}],
       :type=>:Fortran_Bool},
     :make_movie=>
      {:should_include=>"true",
       :description=>nil,
       :help=>nil,
       :code_name=>:make_movie,
       :must_pass=>
        [{:test=>"kind_of? String and FORTRAN_BOOLS.include? self",
          :explanation=>
           "This variable must be a fortran boolean. (In Ruby this is represented as a string: e.g. '.true.')"}],
       :type=>:Fortran_Bool},
     :dump_fields_periodically=>
      {:should_include=>"true",
       :description=>nil,
       :help=>
        " Phi, Apar, Bpar written to dump.fields.t=(time).  This is expensive!\n",
       :code_name=>:dump_fields_periodically,
       :must_pass=>
        [{:test=>"kind_of? String and FORTRAN_BOOLS.include? self",
          :explanation=>
           "This variable must be a fortran boolean. (In Ruby this is represented as a string: e.g. '.true.')"}],
       :type=>:Fortran_Bool},
     :write_moments=>
      {:should_include=>"true",
       :description=>"",
       :help=>
        "If true then we write the various velocity moments of the distribution function to the netcdf file every nwrite steps.  ",
       :code_name=>:write_moments,
       :must_pass=>
        [{:test=>"kind_of? String and FORTRAN_BOOLS.include? self",
          :explanation=>
           "This variable must be a fortran boolean. (In Ruby this is represented as a string: e.g. '.true.')"}],
       :type=>:Fortran_Bool},
     :write_full_moments_notgc=>
      {:should_include=>"true",
       :description=>nil,
       :help=>nil,
       :code_name=>:write_full_moments_notgc,
       :must_pass=>
        [{:test=>"kind_of? String and FORTRAN_BOOLS.include? self",
          :explanation=>
           "This variable must be a fortran boolean. (In Ruby this is represented as a string: e.g. '.true.')"}],
       :type=>:Fortran_Bool},
     :write_ntot_over_time=>
      {:should_include=>"true",
       :description=>"",
       :help=>"",
       :code_name=>:write_ntot_over_time,
       :must_pass=>
        [{:test=>"kind_of? String and FORTRAN_BOOLS.include? self",
          :explanation=>
           "This variable must be a fortran boolean. (In Ruby this is represented as a string: e.g. '.true.')"}],
       :type=>:Fortran_Bool},
     :write_density_over_time=>
      {:should_include=>"true",
       :description=>"",
       :help=>"",
       :code_name=>:write_density_over_time,
       :must_pass=>
        [{:test=>"kind_of? String and FORTRAN_BOOLS.include? self",
          :explanation=>
           "This variable must be a fortran boolean. (In Ruby this is represented as a string: e.g. '.true.')"}],
       :type=>:Fortran_Bool},
     :write_upar_over_time=>
      {:should_include=>"true",
       :description=>"",
       :help=>"",
       :code_name=>:write_upar_over_time,
       :must_pass=>
        [{:test=>"kind_of? String and FORTRAN_BOOLS.include? self",
          :explanation=>
           "This variable must be a fortran boolean. (In Ruby this is represented as a string: e.g. '.true.')"}],
       :type=>:Fortran_Bool},
     :write_tperp_over_time=>
      {:should_include=>"true",
       :description=>"",
       :help=>"",
       :code_name=>:write_tperp_over_time,
       :must_pass=>
        [{:test=>"kind_of? String and FORTRAN_BOOLS.include? self",
          :explanation=>
           "This variable must be a fortran boolean. (In Ruby this is represented as a string: e.g. '.true.')"}],
       :type=>:Fortran_Bool},
     :write_fluxes=>
      {:should_include=>"true",
       :description=>"",
       :help=>"",
       :code_name=>:write_fluxes,
       :must_pass=>
        [{:test=>"kind_of? String and FORTRAN_BOOLS.include? self",
          :explanation=>
           "This variable must be a fortran boolean. (In Ruby this is represented as a string: e.g. '.true.')"}],
       :type=>:Fortran_Bool},
     :write_fluxes_by_mode=>
      {:should_include=>"true",
       :description=>"",
       :help=>"",
       :code_name=>:write_fluxes_by_mode,
       :must_pass=>
        [{:test=>"kind_of? String and FORTRAN_BOOLS.include? self",
          :explanation=>
           "This variable must be a fortran boolean. (In Ruby this is represented as a string: e.g. '.true.')"}],
       :type=>:Fortran_Bool},
     :write_symmetry=>
      {:should_include=>"true",
       :description=>"Test the symmetry properties of the GK eqn.",
       :help=>
        "Switch on a diagnostic to test the symmetry properties of the GK eqn.  It calculates the momentum flux as a function of vpar, theta, and time.",
       :code_name=>:write_symmetry,
       :must_pass=>
        [{:test=>"kind_of? String and FORTRAN_BOOLS.include? self",
          :explanation=>
           "This variable must be a fortran boolean. (In Ruby this is represented as a string: e.g. '.true.')"}],
       :type=>:Fortran_Bool},
     :write_parity=>
      {:should_include=>"true",
       :description=>"Writes parities in dist fn and particle fluxes",
       :help=>"Writes parities in dist fn and particle fluxes",
       :code_name=>:write_parity,
       :must_pass=>
        [{:test=>"kind_of? String and FORTRAN_BOOLS.include? self",
          :explanation=>
           "This variable must be a fortran boolean. (In Ruby this is represented as a string: e.g. '.true.')"}],
       :type=>:Fortran_Bool},
     :write_omega_gs2=>
      {:should_include=>"true",
       :description=>nil,
       :help=>nil,
       :code_name=>:write_omega,
       :must_pass=>
        [{:test=>"kind_of? String and FORTRAN_BOOLS.include? self",
          :explanation=>
           "This variable must be a fortran boolean. (In Ruby this is represented as a string: e.g. '.true.')"}],
       :type=>:Fortran_Bool},
     :omegatinst=>
      {:should_include=>"true",
       :description=>"Recommended value: 500.",
       :help=>
        "If any growth rate is greater than omegatinst, assume there is a numerical instability and abort.",
       :code_name=>:omegatinst,
       :must_pass=>
        [{:test=>"kind_of? Numeric",
          :explanation=>
           "This variable must be a floating point number (an integer is also acceptable: it will be converted into a floating point number)."}],
       :type=>:Float},
     :omegatol=>
      {:should_include=>"true",
       :description=>
        "The convergence has to be better than one part in 1/omegatol",
       :help=>
        "In linear runs GS2 will exit if the growth rate has converged to an accuracy of one part in 1/omegatol. Set negative to switch off this feature.",
       :code_name=>:omegatol,
       :must_pass=>
        [{:test=>"kind_of? Numeric",
          :explanation=>
           "This variable must be a floating point number (an integer is also acceptable: it will be converted into a floating point number)."}],
       :type=>:Float},
     :exit_when_converged=>
      {:should_include=>"true",
       :description=>nil,
       :help=>
        " When the frequencies for each k have converged, the run will stop.\n",
       :code_name=>:exit_when_converged,
       :must_pass=>
        [{:test=>"kind_of? String and FORTRAN_BOOLS.include? self",
          :explanation=>
           "This variable must be a fortran boolean. (In Ruby this is represented as a string: e.g. '.true.')"}],
       :type=>:Fortran_Bool},
     :write_verr=>
      {:should_include=>"true",
       :description=>
        "Write velocity space diagnostics to '.lpc' and '.verr' files",
       :help=>"Write velocity space diagnostics to '.lpc' and '.verr' files",
       :code_name=>:write_verr,
       :must_pass=>
        [{:test=>"kind_of? String and FORTRAN_BOOLS.include? self",
          :explanation=>
           "This variable must be a fortran boolean. (In Ruby this is represented as a string: e.g. '.true.')"}],
       :type=>:Fortran_Bool},
     :write_cerr=>
      {:should_include=>"true",
       :description=>nil,
       :help=>nil,
       :code_name=>:write_cerr,
       :must_pass=>
        [{:test=>"kind_of? String and FORTRAN_BOOLS.include? self",
          :explanation=>
           "This variable must be a fortran boolean. (In Ruby this is represented as a string: e.g. '.true.')"}],
       :type=>:Fortran_Bool},
     :write_max_verr=>
      {:should_include=>"true",
       :description=>nil,
       :help=>nil,
       :code_name=>:write_max_verr,
       :must_pass=>
        [{:test=>"kind_of? String and FORTRAN_BOOLS.include? self",
          :explanation=>
           "This variable must be a fortran boolean. (In Ruby this is represented as a string: e.g. '.true.')"}],
       :type=>:Fortran_Bool},
     :ncheck=>
      {:should_include=>"true",
       :description=>"",
       :help=>"",
       :code_name=>:ncheck,
       :must_pass=>
        [{:test=>"kind_of? Integer",
          :explanation=>"This variable must be an integer."}],
       :type=>:Integer},
     :write_heating=>
      {:should_include=>"true",
       :description=>"",
       :help=>"",
       :code_name=>:write_heating,
       :must_pass=>
        [{:test=>"kind_of? String and FORTRAN_BOOLS.include? self",
          :explanation=>
           "This variable must be a fortran boolean. (In Ruby this is represented as a string: e.g. '.true.')"}],
       :type=>:Fortran_Bool},
     :write_ascii=>
      {:should_include=>"true",
       :description=>"",
       :help=>
        "If true, some data is written to runname.out\n** Also controls the creation of a large number of ascii data files (such as <run_name>.fields). Many of the write_* settings in this namelist will only have an effect when write_ascii= .TRUE.",
       :code_name=>:write_ascii,
       :must_pass=>
        [{:test=>"kind_of? String and FORTRAN_BOOLS.include? self",
          :explanation=>
           "This variable must be a fortran boolean. (In Ruby this is represented as a string: e.g. '.true.')"}],
       :type=>:Fortran_Bool},
     :write_gyx=>
      {:should_include=>"true",
       :description=>
        "Write dist fn at a given physical spacial point to a file",
       :help=>"Write dist fn at a given physical spacial point to a file",
       :code_name=>:write_gyx,
       :must_pass=>
        [{:test=>"kind_of? String and FORTRAN_BOOLS.include? self",
          :explanation=>
           "This variable must be a fortran boolean. (In Ruby this is represented as a string: e.g. '.true.')"}],
       :type=>:Fortran_Bool},
     :write_g=>
      {:should_include=>"true",
       :description=>
        "Write the distribution function to the '.dist' (NetCDF?)",
       :help=>"Write the distribution function to the '.dist' (NetCDF?)",
       :code_name=>:write_g,
       :must_pass=>
        [{:test=>"kind_of? String and FORTRAN_BOOLS.include? self",
          :explanation=>
           "This variable must be a fortran boolean. (In Ruby this is represented as a string: e.g. '.true.')"}],
       :type=>:Fortran_Bool},
     :write_lpoly=>
      {:should_include=>"true",
       :description=>nil,
       :help=>nil,
       :code_name=>:write_lpoly,
       :must_pass=>
        [{:test=>"kind_of? String and FORTRAN_BOOLS.include? self",
          :explanation=>
           "This variable must be a fortran boolean. (In Ruby this is represented as a string: e.g. '.true.')"}],
       :type=>:Fortran_Bool},
     :conv_nstep_av=>
      {:should_include=>"true",
       :description=>"",
       :help=>"",
       :code_name=>:conv_nstep_av,
       :must_pass=>
        [{:test=>"kind_of? Integer",
          :explanation=>"This variable must be an integer."}],
       :type=>:Integer},
     :conv_min_step=>
      {:should_include=>"true",
       :description=>"",
       :help=>"",
       :code_name=>:conv_min_step,
       :must_pass=>
        [{:test=>"kind_of? Integer",
          :explanation=>"This variable must be an integer."}],
       :type=>:Integer},
     :conv_max_step=>
      {:should_include=>"true",
       :description=>"",
       :help=>"",
       :code_name=>:conv_max_step,
       :must_pass=>
        [{:test=>"kind_of? Integer",
          :explanation=>"This variable must be an integer."}],
       :type=>:Integer},
     :conv_nsteps_converged=>
      {:should_include=>"true",
       :description=>"",
       :help=>"",
       :code_name=>:conv_nsteps_converged,
       :must_pass=>
        [{:test=>"kind_of? Integer",
          :explanation=>"This variable must be an integer."}],
       :type=>:Integer},
     :use_nonlin_convergence=>
      {:should_include=>"true",
       :description=>"",
       :help=>"",
       :code_name=>:use_nonlin_convergence,
       :must_pass=>
        [{:test=>"kind_of? String and FORTRAN_BOOLS.include? self",
          :explanation=>
           "This variable must be a fortran boolean. (In Ruby this is represented as a string: e.g. '.true.')"}],
       :type=>:Fortran_Bool},
     :write_cross_phase=>
      {:should_include=>"true",
       :description=>nil,
       :help=>nil,
       :code_name=>:write_cross_phase,
       :must_pass=>
        [{:test=>"kind_of? String and FORTRAN_BOOLS.include? self",
          :explanation=>
           "This variable must be a fortran boolean. (In Ruby this is represented as a string: e.g. '.true.')"}],
       :type=>:Fortran_Bool},
     :write_correlation=>
      {:should_include=>"true",
       :description=>"Write parallel correlation.",
       :help=>
        "Write correlation function diagnostic... shows parallel correlation as a function of ky. See arXiv 1104.4514.",
       :code_name=>:write_correlation,
       :must_pass=>
        [{:test=>"kind_of? String and FORTRAN_BOOLS.include? self",
          :explanation=>
           "This variable must be a fortran boolean. (In Ruby this is represented as a string: e.g. '.true.')"}],
       :type=>:Fortran_Bool},
     :write_correlation_extend=>
      {:should_include=>"true",
       :description=>"Extend domain of correlation function calculation.",
       :help=>
        "If used in conjunction with write_correlation, extends the length of <math>\\Delta \\theta</math> for which the correlation function is calculated.",
       :code_name=>:write_correlation_extend,
       :must_pass=>
        [{:test=>"kind_of? String and FORTRAN_BOOLS.include? self",
          :explanation=>
           "This variable must be a fortran boolean. (In Ruby this is represented as a string: e.g. '.true.')"}],
       :type=>:Fortran_Bool},
     :write_jext=>
      {:should_include=>"true",
       :description=>"",
       :help=>"",
       :code_name=>:write_jext,
       :must_pass=>
        [{:test=>"kind_of? String and FORTRAN_BOOLS.include? self",
          :explanation=>
           "This variable must be a fortran boolean. (In Ruby this is represented as a string: e.g. '.true.')"}],
       :type=>:Fortran_Bool},
     :write_lorentzian=>
      {:should_include=>"true",
       :description=>"Frequency Sweep Data",
       :help=>"Frequency Sweep Data",
       :code_name=>:write_lorentzian,
       :must_pass=>
        [{:test=>"kind_of? String and FORTRAN_BOOLS.include? self",
          :explanation=>
           "This variable must be a fortran boolean. (In Ruby this is represented as a string: e.g. '.true.')"}],
       :type=>:Fortran_Bool},
     :write_eigenfunc=>
      {:should_include=>"true",
       :description=>
        "If (write_ascii = T) Normalized phi written to runname.eigenfunc",
       :help=>
        "If (write_ascii = T) Normalized Phi(theta) written to runname.eigenfunc\n** Write to runname.out.nc even if (write_ascii = F)",
       :code_name=>:write_eigenfunc,
       :must_pass=>
        [{:test=>"kind_of? String and FORTRAN_BOOLS.include? self",
          :explanation=>
           "This variable must be a fortran boolean. (In Ruby this is represented as a string: e.g. '.true.')"}],
       :type=>:Fortran_Bool},
     :write_final_fields=>
      {:should_include=>"true",
       :description=>"If (write_ascii = T) Phi(theta) written to '.fields'",
       :help=>
        "If (write_ascii = T) Phi(theta) written to runname.fields\n** Write to runname.out.nc even if (write_ascii = F)",
       :code_name=>:write_final_fields,
       :must_pass=>
        [{:test=>"kind_of? String and FORTRAN_BOOLS.include? self",
          :explanation=>
           "This variable must be a fortran boolean. (In Ruby this is represented as a string: e.g. '.true.')"}],
       :type=>:Fortran_Bool},
     :write_kpar=>
      {:should_include=>"true",
       :description=>nil,
       :help=>" Spectrum in k_parallel calculated and written.\n",
       :code_name=>:write_kpar,
       :must_pass=>
        [{:test=>"kind_of? String and FORTRAN_BOOLS.include? self",
          :explanation=>
           "This variable must be a fortran boolean. (In Ruby this is represented as a string: e.g. '.true.')"}],
       :type=>:Fortran_Bool},
     :write_final_epar=>
      {:should_include=>"true",
       :description=>
        "If (write_ascii = T) E_parallel(theta) written to runname.eigenfunc",
       :help=>
        "If (write_ascii = T) E_parallel(theta) written to runname.eigenfunc\n** Write to runname.out.nc even if (write_ascii = F)",
       :code_name=>:write_final_epar,
       :must_pass=>
        [{:test=>"kind_of? String and FORTRAN_BOOLS.include? self",
          :explanation=>
           "This variable must be a fortran boolean. (In Ruby this is represented as a string: e.g. '.true.')"}],
       :type=>:Fortran_Bool},
     :write_final_db=>
      {:should_include=>"true",
       :description=>"Write final delta B.",
       :help=>"Write final delta B.",
       :code_name=>:write_final_db,
       :must_pass=>
        [{:test=>"kind_of? String and FORTRAN_BOOLS.include? self",
          :explanation=>
           "This variable must be a fortran boolean. (In Ruby this is represented as a string: e.g. '.true.')"}],
       :type=>:Fortran_Bool},
     :write_final_moments=>
      {:should_include=>"true",
       :description=>"write final n, T",
       :help=>
        "If (write_ascii = T) low-order moments of g written to runname.moments and int dl/B averages of low-order moments of g written to  runname.amoments\n** Write to runname.out.nc even if (write_ascii = F)",
       :code_name=>:write_final_moments,
       :must_pass=>
        [{:test=>"kind_of? String and FORTRAN_BOOLS.include? self",
          :explanation=>
           "This variable must be a fortran boolean. (In Ruby this is represented as a string: e.g. '.true.')"}],
       :type=>:Fortran_Bool},
     :write_final_antot=>
      {:should_include=>"true",
       :description=>nil,
       :help=>
        " If (write_ascii = T) Sources for Maxwell eqns. written to runname.antot\n** Write to runname.out.nc even if (write_ascii = F)\n",
       :code_name=>:write_final_antot,
       :must_pass=>
        [{:test=>"kind_of? String and FORTRAN_BOOLS.include? self",
          :explanation=>
           "This variable must be a fortran boolean. (In Ruby this is represented as a string: e.g. '.true.')"}],
       :type=>:Fortran_Bool},
     :write_gs=>
      {:should_include=>"true",
       :description=>nil,
       :help=>nil,
       :code_name=>:write_gs,
       :must_pass=>
        [{:test=>"kind_of? String and FORTRAN_BOOLS.include? self",
          :explanation=>
           "This variable must be a fortran boolean. (In Ruby this is represented as a string: e.g. '.true.')"}],
       :type=>:Fortran_Bool},
     :save_for_restart=>
      {:should_include=>"true",
       :description=>"Write restart files.",
       :help=>
        "If true then restart files written to the local folder and the simulation can be restarted from the point it ended.\n** Restart files written to restart_file.PE#.  \n** Recommended for nonlinear runs.",
       :code_name=>:save_for_restart,
       :must_pass=>
        [{:test=>"kind_of? String and FORTRAN_BOOLS.include? self",
          :explanation=>
           "This variable must be a fortran boolean. (In Ruby this is represented as a string: e.g. '.true.')"}],
       :type=>:Fortran_Bool},
     :save_many=>
      {:should_include=>"true",
       :description=>"Single/many restart files.",
       :help=>
        "Only applies if GS2 has been build with USE_PARALLEL_NETCDF=on. If .true., save for restart the old way to many restart files, if .false. save the new single restart file.",
       :code_name=>:save_many,
       :must_pass=>
        [{:test=>"kind_of? String and FORTRAN_BOOLS.include? self",
          :explanation=>
           "This variable must be a fortran boolean. (In Ruby this is represented as a string: e.g. '.true.')"}],
       :type=>:Fortran_Bool},
     :file_safety_check=>
      {:should_include=>"true",
       :description=>"",
       :help=>
        "If .true. and either [[save_for_restart]] or [[save_distfn]] are true then checks that files can be created in restart_dir near the start of the simulation. This should probably be turned on by default after some \"in the wild\" testing.\n ",
       :code_name=>:file_safety_check,
       :must_pass=>
        [{:test=>"kind_of? String and FORTRAN_BOOLS.include? self",
          :explanation=>
           "This variable must be a fortran boolean. (In Ruby this is represented as a string: e.g. '.true.')"}],
       :type=>:Fortran_Bool},
     :save_distfn=>
      {:should_include=>"true",
       :description=>"Save dist_fn with lots of detail.",
       :help=>
        "If true, saves the restart files with name 'rootname.nc.dfn.<proc>' with lots of extra detail about the dist function --- velocity space grids and so on, when GS2 exits.",
       :code_name=>:save_distfn,
       :must_pass=>
        [{:test=>"kind_of? String and FORTRAN_BOOLS.include? self",
          :explanation=>
           "This variable must be a fortran boolean. (In Ruby this is represented as a string: e.g. '.true.')"}],
       :type=>:Fortran_Bool},
     :write_omavg=>
      {:should_include=>"true",
       :description=>
        "If (write_ascii = T) time-averaged growth rate and frequency to the output file.",
       :help=>
        "If (write_ascii = T) time-averaged frequencies written to runname.out every nwrite timesteps.\n** Average is over navg steps.\n** Worth noting that setting this to true does not result in omegaavg being written to netcdf file (see [[write_omega]]).",
       :code_name=>:write_omavg,
       :must_pass=>
        [{:test=>"kind_of? String and FORTRAN_BOOLS.include? self",
          :explanation=>
           "This variable must be a fortran boolean. (In Ruby this is represented as a string: e.g. '.true.')"}],
       :type=>:Fortran_Bool},
     :write_gg=>
      {:should_include=>"true",
       :description=>nil,
       :help=>nil,
       :code_name=>:write_gg,
       :must_pass=>
        [{:test=>"kind_of? String and FORTRAN_BOOLS.include? self",
          :explanation=>
           "This variable must be a fortran boolean. (In Ruby this is represented as a string: e.g. '.true.')"}],
       :type=>:Fortran_Bool},
     :ob_midplane=>
      {:should_include=>"true",
       :description=>nil,
       :help=>
        " If write_moments is true, then: \n* if ob_midplane is true, then write the various velocity moments of the distribution function as functions of t ONLY at THETA=0 (and set write_full_moments_notgc = false),\n* if ob_midplane is false, then write moments as functions of t at ALL THETA.  ",
       :code_name=>:ob_midplane,
       :must_pass=>
        [{:test=>"kind_of? String and FORTRAN_BOOLS.include? self",
          :explanation=>
           "This variable must be a fortran boolean. (In Ruby this is represented as a string: e.g. '.true.')"}],
       :type=>:Fortran_Bool},
     :write_nl_flux=>
      {:should_include=>"true",
       :description=>"Write nonlinear fluxes as a function of time.",
       :help=>"Phi**2(kx,ky) written to runname.out",
       :code_name=>:write_nl_flux,
       :must_pass=>
        [{:test=>"kind_of? String and FORTRAN_BOOLS.include? self",
          :explanation=>
           "This variable must be a fortran boolean. (In Ruby this is represented as a string: e.g. '.true.')"}],
       :type=>:Fortran_Bool},
     :write_hrate=>
      {:should_include=>"true",
       :description=>
        "Write heating rate, collisonal entropy generation etc to '.heat'",
       :help=>
        "Write heating rate, collisonal entropy generation etc to '.heat'",
       :code_name=>:write_hrate,
       :must_pass=>
        [{:test=>"kind_of? String and FORTRAN_BOOLS.include? self",
          :explanation=>
           "This variable must be a fortran boolean. (In Ruby this is represented as a string: e.g. '.true.')"}],
       :type=>:Fortran_Bool},
     :write_avg_moments=>
      {:should_include=>"true",
       :description=>
        "Write flux surface averaged low-order moments of g to runname.out.nc and runname.moments (if write_ascii = T)",
       :help=>
        "Ignored unless grid_option='box'\n** Flux surface averaged low-order moments of g written to runname.out.nc\n** If (write_ascii = T) flux surface averaged low-order moments of g written to runname.moments",
       :code_name=>:write_avg_moments,
       :must_pass=>
        [{:test=>"kind_of? String and FORTRAN_BOOLS.include? self",
          :explanation=>
           "This variable must be a fortran boolean. (In Ruby this is represented as a string: e.g. '.true.')"}],
       :type=>:Fortran_Bool},
     :dump_check1=>
      {:should_include=>"true",
       :description=>nil,
       :help=>" Field-line avg of Phi written to dump.check1\n",
       :code_name=>:dump_check1,
       :must_pass=>
        [{:test=>"kind_of? String and FORTRAN_BOOLS.include? self",
          :explanation=>
           "This variable must be a fortran boolean. (In Ruby this is represented as a string: e.g. '.true.')"}],
       :type=>:Fortran_Bool},
     :dump_check2=>
      {:should_include=>"true",
       :description=>nil,
       :help=>" Apar(kx, ky, igomega) written to dump.check2\n",
       :code_name=>:dump_check2,
       :must_pass=>
        [{:test=>"kind_of? String and FORTRAN_BOOLS.include? self",
          :explanation=>
           "This variable must be a fortran boolean. (In Ruby this is represented as a string: e.g. '.true.')"}],
       :type=>:Fortran_Bool},
     :nmovie=>
      {:should_include=>"true",
       :description=>nil,
       :help=>nil,
       :code_name=>:nmovie,
       :must_pass=>
        [{:test=>"kind_of? Integer",
          :explanation=>"This variable must be an integer."}],
       :type=>:Integer}}},
 :knobs=>
  {:description=>"",
   :should_include=>"true",
   :variables=>
    {:nstep=>
      {:should_include=>"true",
       :description=>"Maximum number of timesteps",
       :help=>
        "Number of timesteps that will be taken, unless the code stops for some (usually user-specified) reason.",
       :code_name=>:nstep,
       :must_pass=>
        [{:test=>"kind_of? Integer",
          :explanation=>"This variable must be an integer."}],
       :type=>:Integer,
       :autoscanned_defaults=>[10000]},
     :fphi=>
      {:should_include=>"true",
       :description=>"Multiplies Phi (electrostatic potential).",
       :help=>
        "Multiplies <math>\\Phi</math> (electrostatic potential) throughout.  Useful for debugging. Non-experts use 1.0",
       :code_name=>:fphi,
       :must_pass=>
        [{:test=>"kind_of? Numeric",
          :explanation=>
           "This variable must be a floating point number (an integer is also acceptable: it will be converted into a floating point number)."}],
       :type=>:Float},
     :fapar=>
      {:should_include=>"true",
       :description=>
        "Multiplies A_par. Use 1 for finite beta (electromagnetic), 0 otherwise (electrostatic)",
       :help=>
        "Multiplies <math>A_\\parallel</math> throughout.  Set to zero for electrostatic calculations, or unity for electromagnetic.  Set to zero if <math>\\beta = 0</math>.",
       :code_name=>:fapar,
       :must_pass=>
        [{:test=>"kind_of? Numeric",
          :explanation=>
           "This variable must be a floating point number (an integer is also acceptable: it will be converted into a floating point number)."}],
       :type=>:Float},
     :faperp=>
      {:should_include=>"true",
       :description=>
        "Multiplies A_perp. Use 1 for high beta, 0 otherwise. Deprecated: use fbpar instead",
       :help=>
        "Multiplies A_perp. Use 1 for high beta, 0 otherwise. Deprecated: use fbpar instead. Defaults to zero.  Do not change this value unless you know what you are doing.",
       :code_name=>:faperp,
       :must_pass=>
        [{:test=>"kind_of? Numeric",
          :explanation=>
           "This variable must be a floating point number (an integer is also acceptable: it will be converted into a floating point number)."}],
       :type=>:Float},
     :delt=>
      {:should_include=>"true",
       :description=>"Time step",
       :help=>
        "Timestep, in units of <math>a/v_{t0}</math>.  For linear runs, this value does not change.  For nonlinear runs, the timestep used by the code will not be allowed to exceed this value.",
       :code_name=>:delt,
       :must_pass=>
        [{:test=>"kind_of? Numeric",
          :explanation=>
           "This variable must be a floating point number (an integer is also acceptable: it will be converted into a floating point number)."}],
       :type=>:Float},
     :fbpar=>
      {:should_include=>"true",
       :description=>
        "Multiplies B_parallel. Use 1 for high beta, 0 otherwise.",
       :help=>
        "Multiplies <math>B_\\parallel</math> throughout.  Set to zero or unity, depending on whether you want to include physics related to <math>\\delta B_\\parallel</math>. Set to zero if <math>\\beta = 0</math>.",
       :code_name=>:fbpar,
       :must_pass=>
        [{:test=>"kind_of? Numeric",
          :explanation=>
           "This variable must be a floating point number (an integer is also acceptable: it will be converted into a floating point number)."}],
       :type=>:Float},
     :neo_test=>
      {:should_include=>"true",
       :description=>
        "Exit after writing out neoclassical quantities of interest.",
       :help=>
        "If true, GS2 exits after writing out neoclassical quantities of interest.",
       :code_name=>:neo_test,
       :must_pass=>
        [{:test=>"kind_of? String and FORTRAN_BOOLS.include? self",
          :explanation=>
           "This variable must be a fortran boolean. (In Ruby this is represented as a string: e.g. '.true.')"}],
       :type=>:Fortran_Bool},
     :wstar_units=>
      {:should_include=>"true",
       :description=>
        "For linear runs only. Evolves each k_y with a different timestep.",
       :help=>
        "Default = .false.  Make the timestep proportional to <math>k_y \\rho</math>.  This can be useful for linear stability calculations that have a wide range of <math>k_y</math> values.  Do not set to true for nonlinear runs.  Be aware that the units of some output quantities can change when wstar_units = .true.",
       :code_name=>:wstar_units,
       :must_pass=>
        [{:test=>"kind_of? String and FORTRAN_BOOLS.include? self",
          :explanation=>
           "This variable must be a fortran boolean. (In Ruby this is represented as a string: e.g. '.true.')"}],
       :type=>:Fortran_Bool},
     :eqzip_option=>
      {:should_include=>"true",
       :description=>nil,
       :help=>nil,
       :code_name=>:eqzip_option,
       :must_pass=>
        [{:test=>"kind_of? String",
          :explanation=>"This variable must be a string."}],
       :type=>:String},
     :eqzip=>
      {:should_include=>"true",
       :description=>
        "True only for secondary/tertiary instability calculations.",
       :help=>
        "Default = .false.   Do not evolve certain <math>k</math> modes in time.  Set this to true only if you know what you are doing. True only for secondary/tertiary instability calculations.",
       :code_name=>:eqzip,
       :must_pass=>
        [{:test=>"kind_of? String and FORTRAN_BOOLS.include? self",
          :explanation=>
           "This variable must be a fortran boolean. (In Ruby this is represented as a string: e.g. '.true.')"}],
       :type=>:Fortran_Bool},
     :secondary=>
      {:should_include=>"true",
       :description=>nil,
       :help=>
        "Default = .false.  Do not set to true unless you know what you are doing.",
       :code_name=>:secondary,
       :must_pass=>
        [{:test=>"kind_of? String and FORTRAN_BOOLS.include? self",
          :explanation=>
           "This variable must be a fortran boolean. (In Ruby this is represented as a string: e.g. '.true.')"}],
       :type=>:Fortran_Bool},
     :tertiary=>
      {:should_include=>"true",
       :description=>nil,
       :help=>
        "Default = .false.  Do not set to true unless you know what you are doing.",
       :code_name=>:tertiary,
       :must_pass=>
        [{:test=>"kind_of? String and FORTRAN_BOOLS.include? self",
          :explanation=>
           "This variable must be a fortran boolean. (In Ruby this is represented as a string: e.g. '.true.')"}],
       :type=>:Fortran_Bool},
     :harris=>
      {:should_include=>"true",
       :description=>nil,
       :help=>
        "Default = .false.  Do not set to true unless you know what you are doing.",
       :code_name=>:harris,
       :must_pass=>
        [{:test=>"kind_of? String and FORTRAN_BOOLS.include? self",
          :explanation=>
           "This variable must be a fortran boolean. (In Ruby this is represented as a string: e.g. '.true.')"}],
       :type=>:Fortran_Bool},
     :delt_option=>
      {:should_include=>"true",
       :description=>
        "\"default\", \"set_by_hand\", \"check_restart\". Determines how the initial timestep is set.",
       :help=>
        "Determines how the initial timestep is set.  Options: \"default\", \"set_by_hand\" (identical to \"default\") and \"check_restart\". \n* When delt_option=\"default\", the initial timestep is set to delt. \n* If delt_option=\"check_restart\" when restarting a job, the initial timestep will be set to the last timestep of the job you are restarting, even if delt is larger. Thus, you usually want to set delt_option=\"check_restart\" when restarting a job and delt_option=\"default\" otherwise.",
       :code_name=>:delt_option,
       :must_pass=>
        [{:test=>"kind_of? String",
          :explanation=>"This variable must be a string."}],
       :type=>:String},
     :margin=>
      {:should_include=>"true",
       :description=>nil,
       :help=>" Obsolete.  Fraction of T3E batch job used for finishing up.\n",
       :code_name=>:margin,
       :must_pass=>
        [{:test=>"kind_of? Numeric",
          :explanation=>
           "This variable must be a floating point number (an integer is also acceptable: it will be converted into a floating point number)."}],
       :type=>:Float},
     :avail_cpu_time=>
      {:should_include=>"true",
       :description=>
        "Specify the available wall clock time in seconds. GS2 will exit before this time.",
       :help=>
        "Specify the available wall clock time in seconds. GS2 will start to exit up to 5 minutes before this time is up. This ensures that all the output files are written correctly.  CodeRunner automatically sets this quantity unless it is given the value false.",
       :code_name=>:avail_cpu_time,
       :must_pass=>
        [{:test=>"kind_of? Numeric",
          :explanation=>
           "This variable must be a floating point number (an integer is also acceptable: it will be converted into a floating point number)."}],
       :type=>:Float},
     :margin_cpu_time=>
      {:should_include=>"true",
       :description=>
        "Start finalising when (avail_cpu_time - margin_cpu_time) seconds have elapsed.",
       :help=>
        "Time (in seconds) before [[avail_cpu_time]] at which finalisation triggered. May need to set this quite large for large problems to make certain the run finishes cleanly.",
       :code_name=>:margin_cpu_time,
       :must_pass=>
        [{:test=>"kind_of? Numeric",
          :explanation=>
           "This variable must be a floating point number (an integer is also acceptable: it will be converted into a floating point number)."}],
       :type=>:Float},
     :trinity_linear_fluxes=>
      {:should_include=>"true",
       :description=>
        "If true and running linearly, return linear diffusive flux estimates to Trinity.",
       :help=>
        "If true and running linearly, return linear diffusive flux estimates to Trinity.",
       :code_name=>:trinity_linear_fluxes,
       :must_pass=>
        [{:test=>"kind_of? String and FORTRAN_BOOLS.include? self",
          :explanation=>
           "This variable must be a fortran boolean. (In Ruby this is represented as a string: e.g. '.true.')"}],
       :type=>:Fortran_Bool},
     :do_eigsolve=>
      {:should_include=>"true",
       :description=>
        "If true then use eigensolver instead of initial value solver.",
       :help=>
        "If true then use eigensolver instead of initial value solver. Only valid for executables compiled with WITH_EIG=on and linked with PETSC+SLEPC libraries. Should only be used in linear simulations with a single ky and theta0.",
       :code_name=>:do_eigsolve,
       :must_pass=>
        [{:test=>"kind_of? String and FORTRAN_BOOLS.include? self",
          :explanation=>
           "This variable must be a fortran boolean. (In Ruby this is represented as a string: e.g. '.true.')"}],
       :type=>:Fortran_Bool},
     :immediate_reset=>
      {:should_include=>"true",
       :description=>"",
       :help=>"",
       :code_name=>:immediate_reset,
       :must_pass=>
        [{:test=>"kind_of? String and FORTRAN_BOOLS.include? self",
          :explanation=>
           "This variable must be a fortran boolean. (In Ruby this is represented as a string: e.g. '.true.')"}],
       :type=>:Fortran_Bool},
     :use_old_diagnostics=>
      {:should_include=>"true",
       :description=>
        "If .true. use old diagnostics module, otherwise use new.",
       :help=>
        "If .true. use old diagnostics module, otherwise use new. For testing purposes only: please use new diagnostics.",
       :code_name=>:use_old_diagnostics,
       :must_pass=>
        [{:test=>"kind_of? String and FORTRAN_BOOLS.include? self",
          :explanation=>
           "This variable must be a fortran boolean. (In Ruby this is represented as a string: e.g. '.true.')"}],
       :type=>:Fortran_Bool}}},
 :species_knobs=>
  {:description=>"",
   :should_include=>"true",
   :variables=>
    {:nspec=>
      {:should_include=>"true",
       :description=>"Number of kinetic species evolved.",
       :help=>"Number of kinetic species evolved.",
       :code_name=>:nspec,
       :must_pass=>
        [{:test=>"kind_of? Integer",
          :explanation=>"This variable must be an integer."}],
       :type=>:Integer,
       :autoscanned_defaults=>[1]}}},
 :species_parameters=>
  {:description=>"SPECIES PARAMETERS",
   :help=>
    "There should be a separate namelist for each species.  For example, if\nthere are two species, there will be namelists called\nspecies_parameters_1 and species_parameters_2. Charge, mass, density and temperature for each species are relative to some reference species.",
   :enumerator=>{:name=>:nspec, :estimated_value=>5},
   :should_include=>"true",
   :variables=>
    {:z=>
      {:help=>"Charge",
       :should_include=>"true",
       :description=>"Charge",
       :tests=>["Tst::FLOAT"],
       :autoscanned_defaults=>[],
       :must_pass=>
        [{:test=>"kind_of? Float or kind_of? Integer",
          :explanation=>
           "This variable must be a floating point number (an integer is also acceptable: it will be converted into a floating point number)."}],
       :type=>:Float,
       :module=>:fields},
     :mass=>
      {:help=>"Mass",
       :should_include=>"true",
       :description=>"Mass",
       :tests=>["Tst::FLOAT"],
       :autoscanned_defaults=>[],
       :must_pass=>
        [{:test=>"kind_of? Float or kind_of? Integer",
          :explanation=>
           "This variable must be a floating point number (an integer is also acceptable: it will be converted into a floating point number)."}],
       :type=>:Float},
     :dens=>
      {:help=>"Density\t",
       :should_include=>"true",
       :description=>"Density\t",
       :tests=>["Tst::FLOAT"],
       :autoscanned_defaults=>[],
       :must_pass=>
        [{:test=>"kind_of? Float or kind_of? Integer",
          :explanation=>
           "This variable must be a floating point number (an integer is also acceptable: it will be converted into a floating point number)."}],
       :type=>:Float},
     :temp=>
      {:help=>"Temperature",
       :should_include=>"true",
       :description=>"Temperature",
       :tests=>["Tst::FLOAT"],
       :autoscanned_defaults=>[],
       :must_pass=>
        [{:test=>"kind_of? Float or kind_of? Integer",
          :explanation=>
           "This variable must be a floating point number (an integer is also acceptable: it will be converted into a floating point number)."}],
       :type=>:Float,
       :module=>:file_utils},
     :tprim=>
      {:help=>
        "Normalised inverse temperature gradient: <math>-1/T (dT/d\\rho)</math> (Note here <math>\\rho</math> is the normalised radius <math>\\rho/L_{ref}</math>)",
       :should_include=>"true",
       :description=>"-1/T (dT/drho)",
       :tests=>["Tst::FLOAT"],
       :autoscanned_defaults=>[],
       :must_pass=>
        [{:test=>"kind_of? Float or kind_of? Integer",
          :explanation=>
           "This variable must be a floating point number (an integer is also acceptable: it will be converted into a floating point number)."}],
       :type=>:Float},
     :fprim=>
      {:help=>
        "Normalised inverse density gradient: <math>-1/n (dn/d\\rho)</math>  (Note here <math>\\rho</math> is the normalised radius <math>\\rho/L_{ref}</math>)",
       :should_include=>"true",
       :description=>"-1/n (dn/drho)",
       :tests=>["Tst::FLOAT"],
       :autoscanned_defaults=>[],
       :must_pass=>
        [{:test=>"kind_of? Float or kind_of? Integer",
          :explanation=>
           "This variable must be a floating point number (an integer is also acceptable: it will be converted into a floating point number)."}],
       :type=>:Float},
     :uprim=>
      {:help=>"?",
       :should_include=>"true",
       :description=>"?",
       :tests=>["Tst::FLOAT"],
       :autoscanned_defaults=>[],
       :must_pass=>
        [{:test=>"kind_of? Float or kind_of? Integer",
          :explanation=>
           "This variable must be a floating point number (an integer is also acceptable: it will be converted into a floating point number)."}],
       :type=>:Float},
     :vnewk=>
      {:help=>
        "Collisionality parameter: For species <math>s</math>, vnewk = <math> \\nu_{ss} L_{ref} / v_{ref}</math> where <math>L_{ref}</math> is the reference length (half-minor-radius at the elevation of the magnetic axis), <math>v_{ref} = \\sqrt{2 T_{ref} / m_{ref}} </math> is the reference thermal speed (not the thermal speed of species <math>s</math>!), <math>\\nu_{ss} = \\frac{\\sqrt{2} \\pi n_s Z_s^4 e^4 \\ln(\\Lambda)}{\\sqrt{m_s} T_s^{3/2}}</math> is a dimensional collision frequency, <math>e</math> is the proton charge, <math>\\ln(\\Lambda)</math> is the Coloumb logarithm, and (<math>Z_s, T_s, n_s, m_s</math>) are the (charge, temperature, density, mass) of species <math>s</math>. (The dimensional collision frequency given here is in Gaussian units. For SI units, include an extra factor <math>(4 \\pi \\epsilon_0)^2 </math> in the denominator of the definition of <math>\\nu_{ss}</math>.)",
       :should_include=>"true",
       :description=>"collisionality parameter",
       :tests=>["Tst::FLOAT"],
       :autoscanned_defaults=>[],
       :must_pass=>
        [{:test=>"kind_of? Float or kind_of? Integer",
          :explanation=>
           "This variable must be a floating point number (an integer is also acceptable: it will be converted into a floating point number)."}],
       :type=>:Float},
     :type=>
      {:help=>
        "Type of species:\n** 'ion' Thermal ion species\n** 'default' Same as 'ion'\n** 'electron' Thermal electron species\n** 'e' Same as 'electron'\n** 'beam' Slowing down distribution (Requires advanced_egrid = F)\n** 'slowing_down' Same as 'beam'\n** 'fast' Same as 'beam'\n** 'alpha' Same as 'beam'",
       :should_include=>"true",
       :description=>"Type of species, e.g. 'ion', 'electron', 'beam'",
       :tests=>["Tst::STRING"],
       :autoscanned_defaults=>[],
       :must_pass=>
        [{:test=>"kind_of? String",
          :explanation=>"This variable must be a string."}],
       :type=>:String,
       :text_options=>
        ["default",
         "ion",
         "electron",
         "e",
         "beam",
         "fast",
         "alpha",
         "slowing-down",
         "trace"],
       :module=>:parameter_scan}}},
 :gryfx_knobs=>
  {:description=>"",
   :should_include=>"true",
   :variables=>
    {:restart=>
      {:should_include=>"true",
       :description=>nil,
       :help=>nil,
       :code_name=>:restart,
       :must_pass=>
        [{:test=>"kind_of? String",
          :explanation=>"This variable must be a string."}],
       :type=>:String,
       :autoscanned_defaults=>["off"]},
     :inlpm=>
      {:should_include=>"true",
       :description=>nil,
       :help=>nil,
       :code_name=>:inlpm,
       :must_pass=>
        [{:test=>"kind_of? Integer",
          :explanation=>"This variable must be an integer."}],
       :type=>:Integer,
       :autoscanned_defaults=>[2]},
     :dnlpm=>
      {:should_include=>"true",
       :description=>nil,
       :help=>nil,
       :code_name=>:dnlpm,
       :must_pass=>
        [{:test=>"kind_of? Numeric",
          :explanation=>
           "This variable must be a floating point number (an integer is also acceptable: it will be converted into a floating point number)."}],
       :type=>:Float,
       :autoscanned_defaults=>[1.0]},
     :nu_hyper=>
      {:should_include=>"true",
       :description=>nil,
       :help=>nil,
       :code_name=>:nu_hyper,
       :must_pass=>
        [{:test=>"kind_of? Numeric",
          :explanation=>
           "This variable must be a floating point number (an integer is also acceptable: it will be converted into a floating point number)."}],
       :type=>:Float,
       :autoscanned_defaults=>[1.0]},
     :p_hyper=>
      {:should_include=>"true",
       :description=>nil,
       :help=>nil,
       :code_name=>:p_hyper,
       :must_pass=>
        [{:test=>"kind_of? Integer",
          :explanation=>"This variable must be an integer."}],
       :type=>:Integer,
       :autoscanned_defaults=>[2]},
     :init=>
      {:should_include=>"true",
       :description=>nil,
       :help=>nil,
       :code_name=>:init,
       :must_pass=>
        [{:test=>"kind_of? String",
          :explanation=>"This variable must be a string."}],
       :type=>:String,
       :autoscanned_defaults=>["density"]},
     :init_amp=>
      {:should_include=>"true",
       :description=>nil,
       :help=>nil,
       :code_name=>:init_amp,
       :must_pass=>
        [{:test=>"kind_of? Numeric",
          :explanation=>
           "This variable must be a floating point number (an integer is also acceptable: it will be converted into a floating point number)."}],
       :type=>:Float,
       :autoscanned_defaults=>[1.0e-05]},
     :write_omega=>
      {:should_include=>"true",
       :description=>nil,
       :help=>nil,
       :code_name=>:write_omega,
       :must_pass=>
        [{:test=>"kind_of? String",
          :explanation=>"This variable must be a string."}],
       :type=>:String,
       :autoscanned_defaults=>["on"]},
     :scan_type=>
      {:should_include=>"true",
       :description=>nil,
       :help=>nil,
       :code_name=>:scan_type,
       :must_pass=>
        [{:test=>"kind_of? String",
          :explanation=>"This variable must be a string."}],
       :type=>:String,
       :autoscanned_defaults=>["outputs"]},
     :scan_number=>
      {:should_include=>"true",
       :description=>nil,
       :help=>nil,
       :code_name=>:scan_number,
       :must_pass=>
        [{:test=>"kind_of? Integer",
          :explanation=>"This variable must be an integer."}],
       :type=>:Integer,
       :autoscanned_defaults=>[1]},
     :write_netcdf=>
      {:should_include=>"true",
       :description=>"Set true to write to netcdf file.",
       :help=>"",
       :code_name=>:write_netcdf,
       :must_pass=>
        [{:test=>"kind_of? String and FORTRAN_BOOLS.include? self",
          :explanation=>
           "This variable must be a fortran boolean. (In Ruby this is represented as a string: e.g. '.true.')"}],
       :type=>:Fortran_Bool},
     :hyper=>
      {:should_include=>"true",
       :description=>"",
       :help=>"",
       :code_name=>:hyper,
       :must_pass=>
        [{:test=>"kind_of? String and FORTRAN_BOOLS.include? self",
          :explanation=>
           "This variable must be a fortran boolean. (In Ruby this is represented as a string: e.g. '.true.')"}],
       :type=>:Fortran_Bool},
     :zero_restart_avg=>
      {:should_include=>"true",
       :description=>"",
       :help=>"",
       :code_name=>:zero_restart_avg,
       :must_pass=>
        [{:test=>"kind_of? String and FORTRAN_BOOLS.include? self",
          :explanation=>
           "This variable must be a fortran boolean. (In Ruby this is represented as a string: e.g. '.true.')"}],
       :type=>:Fortran_Bool},
     :no_zderiv_covering=>
      {:should_include=>"true",
       :description=>"",
       :help=>"",
       :code_name=>:no_zderiv_covering,
       :must_pass=>
        [{:test=>"kind_of? String and FORTRAN_BOOLS.include? self",
          :explanation=>
           "This variable must be a fortran boolean. (In Ruby this is represented as a string: e.g. '.true.')"}],
       :type=>:Fortran_Bool},
     :ostem_rname=>
      {:should_include=>"true",
       :description=>"If true, all output files named after the input file.",
       :help=>
        "If true, all output files named after the input file. Otherwise original gryfx naming scheme.",
       :code_name=>:ostem_rname,
       :must_pass=>
        [{:test=>"kind_of? String and FORTRAN_BOOLS.include? self",
          :explanation=>
           "This variable must be a fortran boolean. (In Ruby this is represented as a string: e.g. '.true.')"}],
       :type=>:Fortran_Bool},
     :write_phi=>
      {:should_include=>"true",
       :description=>"",
       :help=>"",
       :code_name=>:write_phi,
       :must_pass=>
        [{:test=>"kind_of? String and FORTRAN_BOOLS.include? self",
          :explanation=>
           "This variable must be a fortran boolean. (In Ruby this is represented as a string: e.g. '.true.')"}],
       :type=>:Fortran_Bool},
     :no_omegad=>
      {:should_include=>"true",
       :description=>"",
       :help=>"",
       :code_name=>:no_omegad,
       :must_pass=>
        [{:test=>"kind_of? String and FORTRAN_BOOLS.include? self",
          :explanation=>
           "This variable must be a fortran boolean. (In Ruby this is represented as a string: e.g. '.true.')"}],
       :type=>:Fortran_Bool},
     :const_curv=>
      {:should_include=>"true",
       :description=>"",
       :help=>"",
       :code_name=>:const_curv,
       :must_pass=>
        [{:test=>"kind_of? String and FORTRAN_BOOLS.include? self",
          :explanation=>
           "This variable must be a fortran boolean. (In Ruby this is represented as a string: e.g. '.true.')"}],
       :type=>:Fortran_Bool},
     :varenna=>
      {:should_include=>"true",
       :description=>"",
       :help=>"",
       :code_name=>:varenna,
       :must_pass=>
        [{:test=>"kind_of? String and FORTRAN_BOOLS.include? self",
          :explanation=>
           "This variable must be a fortran boolean. (In Ruby this is represented as a string: e.g. '.true.')"}],
       :type=>:Fortran_Bool},
     :nlpm=>
      {:should_include=>"true",
       :description=>"",
       :help=>"",
       :code_name=>:nlpm,
       :must_pass=>
        [{:test=>"kind_of? String and FORTRAN_BOOLS.include? self",
          :explanation=>
           "This variable must be a fortran boolean. (In Ruby this is represented as a string: e.g. '.true.')"}],
       :type=>:Fortran_Bool},
     :smagorinsky=>
      {:should_include=>"true",
       :description=>"",
       :help=>"",
       :code_name=>:smagorinsky,
       :must_pass=>
        [{:test=>"kind_of? String and FORTRAN_BOOLS.include? self",
          :explanation=>
           "This variable must be a fortran boolean. (In Ruby this is represented as a string: e.g. '.true.')"}],
       :type=>:Fortran_Bool},
     :debug=>
      {:should_include=>"true",
       :description=>"",
       :help=>"",
       :code_name=>:debug,
       :must_pass=>
        [{:test=>"kind_of? String and FORTRAN_BOOLS.include? self",
          :explanation=>
           "This variable must be a fortran boolean. (In Ruby this is represented as a string: e.g. '.true.')"}],
       :type=>:Fortran_Bool},
     :d_hyper=>
      {:should_include=>"true",
       :description=>nil,
       :help=>nil,
       :code_name=>:d_hyper,
       :must_pass=>
        [{:test=>"kind_of? Numeric",
          :explanation=>
           "This variable must be a floating point number (an integer is also acceptable: it will be converted into a floating point number)."}],
       :type=>:Float},
     :iso_shear=>
      {:should_include=>"true",
       :description=>nil,
       :help=>nil,
       :code_name=>:iso_shear,
       :must_pass=>
        [{:test=>"kind_of? String",
          :explanation=>"This variable must be a string."}],
       :type=>:String},
     :no_zderiv=>
      {:should_include=>"true",
       :description=>nil,
       :help=>nil,
       :code_name=>:no_zderiv,
       :must_pass=>
        [{:test=>"kind_of? String",
          :explanation=>"This variable must be a string."}],
       :type=>:String},
     :icovering=>
      {:should_include=>"true",
       :description=>nil,
       :help=>nil,
       :code_name=>:icovering,
       :must_pass=>
        [{:test=>"kind_of? Integer",
          :explanation=>"This variable must be an integer."}],
       :type=>:Integer},
     :iphi00=>
      {:should_include=>"true",
       :description=>nil,
       :help=>nil,
       :code_name=>:iphi00,
       :must_pass=>
        [{:test=>"kind_of? Integer",
          :explanation=>"This variable must be an integer."}],
       :type=>:Integer},
     :no_landau_damping=>
      {:should_include=>"true",
       :description=>nil,
       :help=>nil,
       :code_name=>:no_landau_damping,
       :must_pass=>
        [{:test=>"kind_of? String",
          :explanation=>"This variable must be a string."}],
       :type=>:String},
     :turn_off_gradients_test=>
      {:should_include=>"true",
       :description=>nil,
       :help=>nil,
       :code_name=>:turn_off_gradients_test,
       :must_pass=>
        [{:test=>"kind_of? String",
          :explanation=>"This variable must be a string."}],
       :type=>:String},
     :slab=>
      {:should_include=>"true",
       :description=>nil,
       :help=>nil,
       :code_name=>:slab,
       :must_pass=>
        [{:test=>"kind_of? String",
          :explanation=>"This variable must be a string."}],
       :type=>:String},
     :varenna_fsa=>
      {:should_include=>"true",
       :description=>nil,
       :help=>nil,
       :code_name=>:varenna_fsa,
       :must_pass=>
        [{:test=>"kind_of? String",
          :explanation=>"This variable must be a string."}],
       :type=>:String},
     :ivarenna=>
      {:should_include=>"true",
       :description=>nil,
       :help=>nil,
       :code_name=>:ivarenna,
       :must_pass=>
        [{:test=>"kind_of? Integer",
          :explanation=>"This variable must be an integer."}],
       :type=>:Integer},
     :new_varenna=>
      {:should_include=>"true",
       :description=>nil,
       :help=>nil,
       :code_name=>:new_varenna,
       :must_pass=>
        [{:test=>"kind_of? String",
          :explanation=>"This variable must be a string."}],
       :type=>:String},
     :new_catto=>
      {:should_include=>"true",
       :description=>nil,
       :help=>nil,
       :code_name=>:new_catto,
       :must_pass=>
        [{:test=>"kind_of? String",
          :explanation=>"This variable must be a string."}],
       :type=>:String},
     :dorland_nlpm=>
      {:should_include=>"true",
       :description=>nil,
       :help=>nil,
       :code_name=>:dorland_nlpm,
       :must_pass=>
        [{:test=>"kind_of? String",
          :explanation=>"This variable must be a string."}],
       :type=>:String},
     :dorland_nlpm_phase=>
      {:should_include=>"true",
       :description=>nil,
       :help=>nil,
       :code_name=>:dorland_nlpm_phase,
       :must_pass=>
        [{:test=>"kind_of? String",
          :explanation=>"This variable must be a string."}],
       :type=>:String},
     :dorland_phase_complex=>
      {:should_include=>"true",
       :description=>nil,
       :help=>nil,
       :code_name=>:dorland_phase_complex,
       :must_pass=>
        [{:test=>"kind_of? String",
          :explanation=>"This variable must be a string."}],
       :type=>:String},
     :dorland_phase_ifac=>
      {:should_include=>"true",
       :description=>nil,
       :help=>nil,
       :code_name=>:dorland_phase_ifac,
       :must_pass=>
        [{:test=>"kind_of? Integer",
          :explanation=>"This variable must be an integer."}],
       :type=>:Integer},
     :nlpm_option=>
      {:should_include=>"true",
       :description=>nil,
       :help=>nil,
       :code_name=>:nlpm_option,
       :must_pass=>
        [{:test=>"kind_of? String",
          :explanation=>"This variable must be a string."}],
       :type=>:String},
     :low_cutoff=>
      {:should_include=>"true",
       :description=>nil,
       :help=>nil,
       :code_name=>:low_cutoff,
       :must_pass=>
        [{:test=>"kind_of? Numeric",
          :explanation=>
           "This variable must be a floating point number (an integer is also acceptable: it will be converted into a floating point number)."}],
       :type=>:Float},
     :high_cutoff=>
      {:should_include=>"true",
       :description=>nil,
       :help=>nil,
       :code_name=>:high_cutoff,
       :must_pass=>
        [{:test=>"kind_of? Integer",
          :explanation=>"This variable must be an integer."}],
       :type=>:Integer},
     :dnlpm_max=>
      {:should_include=>"true",
       :description=>nil,
       :help=>nil,
       :code_name=>:dnlpm_max,
       :must_pass=>
        [{:test=>"kind_of? Numeric",
          :explanation=>
           "This variable must be a floating point number (an integer is also acceptable: it will be converted into a floating point number)."}],
       :type=>:Float},
     :tau_nlpm=>
      {:should_include=>"true",
       :description=>nil,
       :help=>nil,
       :code_name=>:tau_nlpm,
       :must_pass=>
        [{:test=>"kind_of? Numeric",
          :explanation=>
           "This variable must be a floating point number (an integer is also acceptable: it will be converted into a floating point number)."}],
       :type=>:Float},
     :nlpm_kxdep=>
      {:should_include=>"true",
       :description=>nil,
       :help=>nil,
       :code_name=>:nlpm_kxdep,
       :must_pass=>
        [{:test=>"kind_of? String",
          :explanation=>"This variable must be a string."}],
       :type=>:String},
     :nlpm_nlps=>
      {:should_include=>"true",
       :description=>nil,
       :help=>nil,
       :code_name=>:nlpm_nlps,
       :must_pass=>
        [{:test=>"kind_of? String",
          :explanation=>"This variable must be a string."}],
       :type=>:String},
     :nlpm_cutoff_avg=>
      {:should_include=>"true",
       :description=>nil,
       :help=>nil,
       :code_name=>:nlpm_cutoff_avg,
       :must_pass=>
        [{:test=>"kind_of? String",
          :explanation=>"This variable must be a string."}],
       :type=>:String},
     :nlpm_zonal_kx1_only=>
      {:should_include=>"true",
       :description=>nil,
       :help=>nil,
       :code_name=>:nlpm_zonal_kx1_only,
       :must_pass=>
        [{:test=>"kind_of? String",
          :explanation=>"This variable must be a string."}],
       :type=>:String},
     :phiext=>
      {:should_include=>"true",
       :description=>nil,
       :help=>nil,
       :code_name=>:phiext,
       :must_pass=>
        [{:test=>"kind_of? Numeric",
          :explanation=>
           "This variable must be a floating point number (an integer is also acceptable: it will be converted into a floating point number)."}],
       :type=>:Float},
     :igeo=>
      {:should_include=>"true",
       :description=>nil,
       :help=>nil,
       :code_name=>:igeo,
       :must_pass=>
        [{:test=>"kind_of? Integer",
          :explanation=>"This variable must be an integer."}],
       :type=>:Integer},
     :shaping_ps=>
      {:should_include=>"true",
       :description=>nil,
       :help=>nil,
       :code_name=>:shaping_ps,
       :must_pass=>
        [{:test=>"kind_of? Numeric",
          :explanation=>
           "This variable must be a floating point number (an integer is also acceptable: it will be converted into a floating point number)."}],
       :type=>:Float}}},
 :collisions_knobs=>
  {:description=>"",
   :should_include=>"true",
   :variables=>
    {:collision_model=>
      {:should_include=>"true",
       :description=>
        "Collision model used in the simulation. Options: 'default', 'none', 'lorentz', 'ediffuse'",
       :help=>
        "Collision model used in the simulation. \n\n** ''default'' = pitch angle scattering and energy diffusion\n** ''collisionless'',''none'' = collisionless\n** ''lorentz'' =  pitch angle scattering only\n** ''ediffuse'' = energy diffusion only\n** ''krook'' = use home made krook operator (no reason to use this!)",
       :code_name=>:collision_model,
       :must_pass=>
        [{:test=>"kind_of? String",
          :explanation=>"This variable must be a string."}],
       :type=>:String,
       :autoscanned_defaults=>["none"]}}},
 :theta_grid_eik_knobs=>
  {:description=>"",
   :should_include=>"true",
   :variables=>
    {:irho=>
      {:should_include=>"true",
       :description=>"Chooses definition of flux surface coordinate.",
       :help=>
        "Choose definition of flux surface coordinate\n** 1: rho == sqrt(toroidal flux)/sqrt(toroidal flux of LCFS)\n** 2: rho == midplane diameter/LCFS diameter     Recommended\n** 3: rho == poloidal flux/poloidal flux of LCFS",
       :code_name=>:irho,
       :must_pass=>
        [{:test=>"kind_of? Integer",
          :explanation=>"This variable must be an integer."}],
       :type=>:Integer},
     :eqfile=>
      {:should_include=>"true",
       :description=>nil,
       :help=>" Name of file with numerical equilibrium data (if required)\n",
       :code_name=>:eqfile,
       :must_pass=>
        [{:test=>"kind_of? String",
          :explanation=>"This variable must be a string."}],
       :type=>:String},
     :equal_arc=>
      {:should_include=>"true",
       :description=>nil,
       :help=>" Change field-line coordinate.  Recommended value: F\n",
       :code_name=>:equal_arc,
       :must_pass=>
        [{:test=>"kind_of? String and FORTRAN_BOOLS.include? self",
          :explanation=>
           "This variable must be a fortran boolean. (In Ruby this is represented as a string: e.g. '.true.')"}],
       :type=>:Fortran_Bool},
     :bishop=>
      {:should_include=>"true",
       :description=>nil,
       :help=>
        " Use Bishop relations to generate metric coefficients.\n** 0: Use high-aspect ratio coefficients (only for debugging)\n** 1: Use actual equilibrium values of shat, p'  Recommended \n** 2: Use numerical equilibrium + s_hat_input and p_prime_input\n** 3: Use numerical equilibrium + s_hat_input and inv_Lp_input\n** 4: Use numerical equilibrium + s_hat_input and beta_prime_input \n** 5: Use numerical equilibrium + s_hat_input and alpha_input\n** 6: Use numerical equilibrium + beta_prime_input\n** 7: Use numerical equilibrium and multiply pressure gradient by dp_mult\n** 8: Use numerical equilibrium + s_hat_input and multiply pressure gradient by dp_mult\n** 9: Use numerical equilibrium + s_hat_input and beta_prime_input\n** Otherwise: Use magnetic shear and pressure gradient as set elsewhere.\n** \n",
       :code_name=>:bishop,
       :must_pass=>
        [{:test=>"kind_of? Integer",
          :explanation=>"This variable must be an integer."}],
       :type=>:Integer},
     :s_hat_input=>
      {:should_include=>"true",
       :description=>nil,
       :help=>" Overrides shat.\n",
       :code_name=>:s_hat_input,
       :must_pass=>
        [{:test=>"kind_of? Numeric",
          :explanation=>
           "This variable must be a floating point number (an integer is also acceptable: it will be converted into a floating point number)."}],
       :type=>:Float},
     :beta_prime_input=>
      {:should_include=>"true",
       :description=>"The gradient of the pressure.",
       :help=>
        "The gradient of the pressure. Strictly speaking this parameter is not <math>\\frac{\\partial \\beta}{\\partial \\rho} </math> but <math>\\beta \\frac{1}{p}\\frac{\\partial p}{\\partial \\rho}</math>: in other words, the gradient of the magnetic field is ignored. Used only if bishop = 4 or 9.",
       :code_name=>:beta_prime_input,
       :must_pass=>
        [{:test=>"kind_of? Numeric",
          :explanation=>
           "This variable must be a floating point number (an integer is also acceptable: it will be converted into a floating point number)."}],
       :type=>:Float},
     :itor=>
      {:should_include=>"true",
       :description=>nil,
       :help=>" Do not change.\n",
       :code_name=>:itor,
       :must_pass=>
        [{:test=>"kind_of? Integer",
          :explanation=>"This variable must be an integer."}],
       :type=>:Integer},
     :iflux=>
      {:should_include=>"true",
       :description=>nil,
       :help=>
        " Choose mode of operation: \n** 0: Use Miller parameterization of local toroidal MHD equilibrium.\n** 1: Read equilibrium data from output of MHD code\n** 2: Running inside a transport code without numerical equilibrium\n",
       :code_name=>:iflux,
       :must_pass=>
        [{:test=>"kind_of? Integer",
          :explanation=>"This variable must be an integer."}],
       :type=>:Integer},
     :ppl_eq=>
      {:should_include=>"true",
       :description=>nil,
       :help=>" Use Menard-style NetCDF equilibrium (JSOLVER)\n",
       :code_name=>:ppl_eq,
       :must_pass=>
        [{:test=>"kind_of? String and FORTRAN_BOOLS.include? self",
          :explanation=>
           "This variable must be a fortran boolean. (In Ruby this is represented as a string: e.g. '.true.')"}],
       :type=>:Fortran_Bool},
     :gen_eq=>
      {:should_include=>"true",
       :description=>nil,
       :help=>" Use Toq-style NetCDF equilibrium (TOQ)\n",
       :code_name=>:gen_eq,
       :must_pass=>
        [{:test=>"kind_of? String and FORTRAN_BOOLS.include? self",
          :explanation=>
           "This variable must be a fortran boolean. (In Ruby this is represented as a string: e.g. '.true.')"}],
       :type=>:Fortran_Bool},
     :efit_eq=>
      {:should_include=>"true",
       :description=>nil,
       :help=>" Use EFIT equilibrium (EFIT, codes with eqdsk format)\n",
       :code_name=>:efit_eq,
       :must_pass=>
        [{:test=>"kind_of? String and FORTRAN_BOOLS.include? self",
          :explanation=>
           "This variable must be a fortran boolean. (In Ruby this is represented as a string: e.g. '.true.')"}],
       :type=>:Fortran_Bool},
     :local_eq=>
      {:should_include=>"true",
       :description=>nil,
       :help=>" Use Miller-style local equilibrium\n",
       :code_name=>:local_eq,
       :must_pass=>
        [{:test=>"kind_of? String and FORTRAN_BOOLS.include? self",
          :explanation=>
           "This variable must be a fortran boolean. (In Ruby this is represented as a string: e.g. '.true.')"}],
       :type=>:Fortran_Bool},
     :delrho=>
      {:should_include=>"true",
       :description=>nil,
       :help=>" Default usually okay\n",
       :code_name=>:delrho,
       :must_pass=>
        [{:test=>"kind_of? Numeric",
          :explanation=>
           "This variable must be a floating point number (an integer is also acceptable: it will be converted into a floating point number)."}],
       :type=>:Float},
     :isym=>
      {:should_include=>"true",
       :description=>nil,
       :help=>" \n** 0:  Recommended \n** 1: Force up-down symmetry.\n",
       :code_name=>:isym,
       :must_pass=>
        [{:test=>"kind_of? Integer",
          :explanation=>"This variable must be an integer."}],
       :type=>:Integer},
     :writelots=>
      {:should_include=>"true",
       :description=>nil,
       :help=>" Write a little extra about geometry to the screen.\n",
       :code_name=>:writelots,
       :must_pass=>
        [{:test=>"kind_of? String and FORTRAN_BOOLS.include? self",
          :explanation=>
           "This variable must be a fortran boolean. (In Ruby this is represented as a string: e.g. '.true.')"}],
       :type=>:Fortran_Bool}}},
 :theta_grid_knobs=>
  {:description=>"",
   :should_include=>"true",
   :variables=>
    {:equilibrium_option=>
      {:should_include=>"true",
       :description=>
        "Controls which geometric assumptions are used in the run.",
       :help=>
        "The equilibrium_option variable controls which geometric assumptions are used in the run.  Additional namelists determine the geometric parameters according to the choice made here. Allowed values are:\n** 'eik' Use routines from the geometry module, controlled mainly by the subsidiary namelists theta_grid_parameters and theta_grid_eik_knob. This includes options for Miller as well as a range of different numerical equilibrium file formats.\n** 'default' Same as 'eik'                                                                                                                          \n** 's-alpha' Use high aspect-ratio toroidal equilbrium (which can be simplified to slab or cylinder), controlled by the subsidiary namelist theta_grid_parameters and  theta_grid_salpha_knob\n** 'file'  Use output from rungridgen code directly.  Controlled by theta_grid_file_knobs. Note: in this case, the variables nperiod and ntheta (from the theta_grid_parameters namelist) are ignored.\n** 'grid.out'  Same as 'file'",
       :code_name=>:equilibrium_option,
       :must_pass=>
        [{:test=>"kind_of? String",
          :explanation=>"This variable must be a string."}],
       :type=>:String}}},
 :theta_grid_salpha_knobs=>
  {:description=>"",
   :should_include=>"true",
   :variables=>
    {:model_option=>
      {:should_include=>"true",
       :description=>"",
       :help=>
        "Sets the particular model for the magnetic field and related drifts.\n** 's-alpha' High aspect ratio toroidal equilibrium.  (Note that the curvature and grad-B drifts are equal.)\n** 'default' Same as 's-alpha'\n**'alpha1','rogers','b2','normal_only',const-curv',no-curvature': See output of ingen (or contents of theta_grid.f90) until this page is improved.",
       :code_name=>:model_option,
       :must_pass=>
        [{:test=>"kind_of? String",
          :explanation=>"This variable must be a string."}],
       :type=>:String}}},
 :fields_knobs=>
  {:description=>"",
   :should_include=>"true",
   :variables=>
    {:field_option=>
      {:should_include=>"true",
       :description=>
        "Controls which time-advance algorithm is used for the linear terms.",
       :help=>
        "The field_option variable controls which time-advance algorithm is used for the linear terms. Allowed values are:                                          \n** 'implicit' Advance linear terms with Kotschenreuther's implicit algorithm.                                                                   \n** 'default'  Same as 'implicit'                                                                                                                     \n** 'local' Same implicit algorithm as 'implicit' but with different data decomposition (typically much faster for flux tube runs).\n** 'explicit' Use second-order Runge-Kutta.  Experimental.                                                                                          \n** 'test' Use for debugging.",
       :code_name=>:field_option,
       :must_pass=>
        [{:test=>"kind_of? String",
          :explanation=>"This variable must be a string."}],
       :type=>:String}}},
 :le_grids_knobs=>
  {:description=>"",
   :should_include=>"true",
   :variables=>
    {:ngauss=>
      {:should_include=>"true",
       :description=>
        "Number of untrapped pitch-angles moving in one direction along field line.",
       :help=>
        "2*ngauss is the number of untrapped pitch-angles moving in one direction along field line.",
       :code_name=>:ngauss,
       :must_pass=>
        [{:test=>"kind_of? Integer",
          :explanation=>"This variable must be an integer."}],
       :type=>:Integer},
     :negrid=>
      {:should_include=>"true",
       :description=>"Total number of energy grid points",
       :help=>"Total number of energy grid points",
       :code_name=>:negrid,
       :must_pass=>
        [{:test=>"kind_of? Integer",
          :explanation=>"This variable must be an integer."}],
       :type=>:Integer},
     :vcut=>
      {:should_include=>"true",
       :description=>
        "No. of standard deviations from the standard Maxwellian beyond which the distribution function will be set to 0",
       :help=>
        "No. of standard deviations from the standard Maxwellian beyond which the distribution function will be set to 0",
       :code_name=>:vcut,
       :must_pass=>
        [{:test=>"kind_of? Numeric",
          :explanation=>
           "This variable must be a floating point number (an integer is also acceptable: it will be converted into a floating point number)."}],
       :type=>:Float}}},
 :kt_grids_knobs=>
  {:description=>"",
   :should_include=>"true",
   :variables=>
    {:grid_option=>
      {:should_include=>"true",
       :description=>"The general layout of the perpendicular grid.",
       :help=>
        "The general layout of the perpendicular grid.\n** 'single' Evolve a single Fourier mode.  Set up kt_grids_single_parameters.\n** 'default' Same as 'single'\n** 'range' Evolve a range of equally spaced Fourier modes. Set up kt_grids_range_parameters.\n** 'specified' Evolve an arbitrary set of Fourier modes.  Set up kt_grids_specified_parameters.\n** 'box' Simulation domain is logically rectangular.  Set up kt_grids_box_parameters.\n** 'nonlinear' Same as 'box.'\n** 'xbox' Experimental.",
       :code_name=>:grid_option,
       :must_pass=>
        [{:test=>"kind_of? String",
          :explanation=>"This variable must be a string."}],
       :type=>:String}}},
 :init_g_knobs=>
  {:description=>"",
   :should_include=>"true",
   :variables=>
    {:tstart=>
      {:should_include=>"true",
       :description=>nil,
       :help=>" Force t=tstart at beginning of run.\n",
       :code_name=>:tstart,
       :must_pass=>
        [{:test=>"kind_of? Numeric",
          :explanation=>
           "This variable must be a floating point number (an integer is also acceptable: it will be converted into a floating point number)."}],
       :type=>:Float},
     :scale=>
      {:should_include=>"true",
       :description=>nil,
       :help=>" Allows rescaling of amplitudes for restarts.\n",
       :code_name=>:scale,
       :must_pass=>
        [{:test=>"kind_of? Numeric",
          :explanation=>
           "This variable must be a floating point number (an integer is also acceptable: it will be converted into a floating point number)."}],
       :type=>:Float},
     :ginit_option=>
      {:should_include=>"true",
       :description=>
        "Sets the way that the distribution function is initialized.",
       :help=>
        "Sets the way that the distribution function is initialized. There are many possible choices.\n**  'default' This gives a gaussian in theta (see [[width0]])\n**  'noise'  This is the  recommended selection ('''but not the default''').  Pretty random.\n**  'test1'\n**  'xi'\n**  'xi2'\n**  'zero'\n**  'test3'\n**  'convect'\n**  'rh'\n**  'many' This is the option to read the (many) restart files written by a previous run. Use for restarts\n**  'small'\n**  'file'\n**  'cont'\n**  'kz0'  initialise only with k_parallel=0\n**  'nl'\n**  'nl2'\n**  'nl3'\n**  'nl4'\n**  'nl5'\n**  'nl6'\n**  'gs'\n**  'kpar'\n**  'zonal_only'  Restart but set all non-zonal components of the potential and the distribution function to 0. Noise can be added to these other components by setting iphiinit > 0.\n**  'single_parallel_mode'  Initialise only with a single parallel mode specified by either ikpar_init for periodic boundary conditions or kpar_init for linked boundary conditions. Intended for linear calculations.\n**  'all_modes_equal'  Initialise with every single parallel and perpendicular mode given the same amplitude. Intended for linear calculations. \n**  'eig_restart' Uses the restart files written by the eigensolver. Also see restart_eig_id.",
       :code_name=>:ginit_option,
       :must_pass=>
        [{:test=>"kind_of? String",
          :explanation=>"This variable must be a string."}],
       :type=>:String},
     :width0=>
      {:should_include=>"true",
       :description=>
        "Initial perturbation has Gaussian envelope in theta with width width0,",
       :help=>
        "Initial perturbation has Gaussian envelope in theta, with width width0",
       :code_name=>:width0,
       :must_pass=>
        [{:test=>"kind_of? Numeric",
          :explanation=>
           "This variable must be a floating point number (an integer is also acceptable: it will be converted into a floating point number)."}],
       :type=>:Float},
     :refac=>
      {:should_include=>"true",
       :description=>"Used in rare cases.",
       :help=>"Used in rare cases.",
       :code_name=>:refac,
       :must_pass=>
        [{:test=>"kind_of? Numeric",
          :explanation=>
           "This variable must be a floating point number (an integer is also acceptable: it will be converted into a floating point number)."}],
       :type=>:Float},
     :imfac=>
      {:should_include=>"true",
       :description=>"Used in rare cases.",
       :help=>"Used in rare cases.",
       :code_name=>:imfac,
       :must_pass=>
        [{:test=>"kind_of? Numeric",
          :explanation=>
           "This variable must be a floating point number (an integer is also acceptable: it will be converted into a floating point number)."}],
       :type=>:Float},
     :den0=>
      {:should_include=>"true",
       :description=>"Parameters for setting up special initial conditions.",
       :help=>"Parameters for setting up special initial conditions.",
       :code_name=>:den0,
       :must_pass=>
        [{:test=>"kind_of? Numeric",
          :explanation=>
           "This variable must be a floating point number (an integer is also acceptable: it will be converted into a floating point number)."}],
       :type=>:Float},
     :upar0=>
      {:should_include=>"true",
       :description=>"Parameters for setting up special initial conditions.",
       :help=>"Parameters for setting up special initial conditions.",
       :code_name=>:upar0,
       :must_pass=>
        [{:test=>"kind_of? Numeric",
          :explanation=>
           "This variable must be a floating point number (an integer is also acceptable: it will be converted into a floating point number)."}],
       :type=>:Float},
     :tpar0=>
      {:should_include=>"true",
       :description=>nil,
       :help=>"  Parameters for setting up special initial conditions.\n",
       :code_name=>:tpar0,
       :must_pass=>
        [{:test=>"kind_of? Numeric",
          :explanation=>
           "This variable must be a floating point number (an integer is also acceptable: it will be converted into a floating point number)."}],
       :type=>:Float},
     :tperp0=>
      {:should_include=>"true",
       :description=>nil,
       :help=>"  Parameters for setting up special initial conditions.\n",
       :code_name=>:tperp0,
       :must_pass=>
        [{:test=>"kind_of? Numeric",
          :explanation=>
           "This variable must be a floating point number (an integer is also acceptable: it will be converted into a floating point number)."}],
       :type=>:Float},
     :den1=>
      {:should_include=>"true",
       :description=>"Parameters for setting up special initial conditions.",
       :help=>"Parameters for setting up special initial conditions.",
       :code_name=>:den1,
       :must_pass=>
        [{:test=>"kind_of? Numeric",
          :explanation=>
           "This variable must be a floating point number (an integer is also acceptable: it will be converted into a floating point number)."}],
       :type=>:Float},
     :upar1=>
      {:should_include=>"true",
       :description=>"Parameters for setting up special initial conditions.",
       :help=>"Parameters for setting up special initial conditions.",
       :code_name=>:upar1,
       :must_pass=>
        [{:test=>"kind_of? Numeric",
          :explanation=>
           "This variable must be a floating point number (an integer is also acceptable: it will be converted into a floating point number)."}],
       :type=>:Float},
     :tpar1=>
      {:should_include=>"true",
       :description=>nil,
       :help=>" Parameters for setting up special initial conditions.\n",
       :code_name=>:tpar1,
       :must_pass=>
        [{:test=>"kind_of? Numeric",
          :explanation=>
           "This variable must be a floating point number (an integer is also acceptable: it will be converted into a floating point number)."}],
       :type=>:Float},
     :tperp1=>
      {:should_include=>"true",
       :description=>nil,
       :help=>" Parameters for setting up special initial conditions.\n",
       :code_name=>:tperp1,
       :must_pass=>
        [{:test=>"kind_of? Numeric",
          :explanation=>
           "This variable must be a floating point number (an integer is also acceptable: it will be converted into a floating point number)."}],
       :type=>:Float},
     :den2=>
      {:should_include=>"true",
       :description=>nil,
       :help=>" Parameters for setting up special initial conditions.\n",
       :code_name=>:den2,
       :must_pass=>
        [{:test=>"kind_of? Numeric",
          :explanation=>
           "This variable must be a floating point number (an integer is also acceptable: it will be converted into a floating point number)."}],
       :type=>:Float},
     :upar2=>
      {:should_include=>"true",
       :description=>nil,
       :help=>" Parameters for setting up special initial conditions.\n",
       :code_name=>:upar2,
       :must_pass=>
        [{:test=>"kind_of? Numeric",
          :explanation=>
           "This variable must be a floating point number (an integer is also acceptable: it will be converted into a floating point number)."}],
       :type=>:Float},
     :tpar2=>
      {:should_include=>"true",
       :description=>nil,
       :help=>" Parameters for setting up special initial conditions.\n",
       :code_name=>:tpar2,
       :must_pass=>
        [{:test=>"kind_of? Numeric",
          :explanation=>
           "This variable must be a floating point number (an integer is also acceptable: it will be converted into a floating point number)."}],
       :type=>:Float},
     :tperp2=>
      {:should_include=>"true",
       :description=>nil,
       :help=>" Parameters for setting up special initial conditions.\n",
       :code_name=>:tperp2,
       :must_pass=>
        [{:test=>"kind_of? Numeric",
          :explanation=>
           "This variable must be a floating point number (an integer is also acceptable: it will be converted into a floating point number)."}],
       :type=>:Float},
     :phiinit=>
      {:should_include=>"true",
       :description=>
        "Average amplitude of initial perturbation of each Fourier mode.",
       :help=>
        "Average amplitude of initial perturbation of each Fourier mode.",
       :code_name=>:phiinit,
       :must_pass=>
        [{:test=>"kind_of? Numeric",
          :explanation=>
           "This variable must be a floating point number (an integer is also acceptable: it will be converted into a floating point number)."}],
       :type=>:Float},
     :dphiinit=>
      {:should_include=>"true",
       :description=>nil,
       :help=>nil,
       :code_name=>:dphiinit,
       :must_pass=>
        [{:test=>"kind_of? Numeric",
          :explanation=>
           "This variable must be a floating point number (an integer is also acceptable: it will be converted into a floating point number)."}],
       :type=>:Float},
     :zf_init=>
      {:should_include=>"true",
       :description=>nil,
       :help=>
        " Amplitude of initial zonal flow perturbations relative to other modes\n",
       :code_name=>:zf_init,
       :must_pass=>
        [{:test=>"kind_of? Numeric",
          :explanation=>
           "This variable must be a floating point number (an integer is also acceptable: it will be converted into a floating point number)."}],
       :type=>:Float},
     :apar0=>
      {:should_include=>"true",
       :description=>nil,
       :help=>nil,
       :code_name=>:apar0,
       :must_pass=>
        [{:test=>"kind_of? Numeric",
          :explanation=>
           "This variable must be a floating point number (an integer is also acceptable: it will be converted into a floating point number)."}],
       :type=>:Float},
     :chop_side=>
      {:should_include=>"true",
       :description=>"Rarely needed. Forces asymmetry into initial condition.",
       :help=>
        "Rarely needed.  Forces asymmetry into initial condition. Warning: This does not behave as one may expect in flux tube simulations (see [[clean_init]]), this can be important as the default is to use chop_side.",
       :code_name=>:chop_side,
       :must_pass=>
        [{:test=>"kind_of? String and FORTRAN_BOOLS.include? self",
          :explanation=>
           "This variable must be a fortran boolean. (In Ruby this is represented as a string: e.g. '.true.')"}],
       :type=>:Fortran_Bool},
     :left=>
      {:should_include=>"true",
       :description=>nil,
       :help=>" Chop out left side in theta. \n",
       :code_name=>:left,
       :must_pass=>
        [{:test=>"kind_of? String and FORTRAN_BOOLS.include? self",
          :explanation=>
           "This variable must be a fortran boolean. (In Ruby this is represented as a string: e.g. '.true.')"}],
       :type=>:Fortran_Bool},
     :even_init=>
      {:should_include=>"true",
       :description=>nil,
       :help=>nil,
       :code_name=>:even,
       :must_pass=>
        [{:test=>"kind_of? String and FORTRAN_BOOLS.include? self",
          :explanation=>
           "This variable must be a fortran boolean. (In Ruby this is represented as a string: e.g. '.true.')"}],
       :type=>:Fortran_Bool},
     :clean_init=>
      {:should_include=>"true",
       :description=>"phi = 0 at either end of domain.",
       :help=>
        "Used with ginit_option='noise'. Ensures that in flux tube simulations the connected boundary points are initialised to the same value. Also allows for chop_side to behave correctly in flux tube simulations.",
       :code_name=>:clean_init,
       :must_pass=>
        [{:test=>"kind_of? String and FORTRAN_BOOLS.include? self",
          :explanation=>
           "This variable must be a fortran boolean. (In Ruby this is represented as a string: e.g. '.true.')"}],
       :type=>:Fortran_Bool},
     :new_field_init=>
      {:should_include=>"true",
       :description=>nil,
       :help=>nil,
       :code_name=>:new_field_init,
       :must_pass=>
        [{:test=>"kind_of? String and FORTRAN_BOOLS.include? self",
          :explanation=>
           "This variable must be a fortran boolean. (In Ruby this is represented as a string: e.g. '.true.')"}],
       :type=>:Fortran_Bool},
     :phiinit0=>
      {:should_include=>"true",
       :description=>nil,
       :help=>nil,
       :code_name=>:phiinit0,
       :must_pass=>
        [{:test=>"kind_of? Numeric",
          :explanation=>
           "This variable must be a floating point number (an integer is also acceptable: it will be converted into a floating point number)."}],
       :type=>:Float},
     :phiinit_rand=>
      {:should_include=>"true",
       :description=>"Amplitude of random perturbation for ginit_recon3",
       :help=>"Amplitude of random perturbation for ginit_recon3 (R Numata)",
       :code_name=>:phiinit_rand,
       :must_pass=>
        [{:test=>"kind_of? Numeric",
          :explanation=>
           "This variable must be a floating point number (an integer is also acceptable: it will be converted into a floating point number)."}],
       :type=>:Float},
     :a0=>
      {:should_include=>"true",
       :description=>nil,
       :help=>nil,
       :code_name=>:a0,
       :must_pass=>
        [{:test=>"kind_of? Numeric",
          :explanation=>
           "This variable must be a floating point number (an integer is also acceptable: it will be converted into a floating point number)."}],
       :type=>:Float},
     :b0=>
      {:should_include=>"true",
       :description=>nil,
       :help=>nil,
       :code_name=>:b0,
       :must_pass=>
        [{:test=>"kind_of? Numeric",
          :explanation=>
           "This variable must be a floating point number (an integer is also acceptable: it will be converted into a floating point number)."}],
       :type=>:Float},
     :null_phi=>
      {:should_include=>"true",
       :description=>nil,
       :help=>nil,
       :code_name=>:null_phi,
       :must_pass=>
        [{:test=>"kind_of? String and FORTRAN_BOOLS.include? self",
          :explanation=>
           "This variable must be a fortran boolean. (In Ruby this is represented as a string: e.g. '.true.')"}],
       :type=>:Fortran_Bool},
     :null_bpar=>
      {:should_include=>"true",
       :description=>nil,
       :help=>nil,
       :code_name=>:null_bpar,
       :must_pass=>
        [{:test=>"kind_of? String and FORTRAN_BOOLS.include? self",
          :explanation=>
           "This variable must be a fortran boolean. (In Ruby this is represented as a string: e.g. '.true.')"}],
       :type=>:Fortran_Bool},
     :null_apar=>
      {:should_include=>"true",
       :description=>nil,
       :help=>nil,
       :code_name=>:null_apar,
       :must_pass=>
        [{:test=>"kind_of? String and FORTRAN_BOOLS.include? self",
          :explanation=>
           "This variable must be a fortran boolean. (In Ruby this is represented as a string: e.g. '.true.')"}],
       :type=>:Fortran_Bool},
     :adj_spec=>
      {:should_include=>"true",
       :description=>nil,
       :help=>nil,
       :code_name=>:adj_spec,
       :must_pass=>
        [{:test=>"kind_of? Integer",
          :explanation=>"This variable must be an integer."}],
       :type=>:Integer},
     :eq_type=>
      {:should_include=>"true",
       :description=>nil,
       :help=>nil,
       :code_name=>:eq_type,
       :must_pass=>
        [{:test=>"kind_of? String",
          :explanation=>"This variable must be a string."}],
       :type=>:String},
     :prof_width=>
      {:should_include=>"true",
       :description=>nil,
       :help=>nil,
       :code_name=>:prof_width,
       :must_pass=>
        [{:test=>"kind_of? Numeric",
          :explanation=>
           "This variable must be a floating point number (an integer is also acceptable: it will be converted into a floating point number)."}],
       :type=>:Float},
     :eq_mode_n=>
      {:should_include=>"true",
       :description=>nil,
       :help=>nil,
       :code_name=>:eq_mode_n,
       :must_pass=>
        [{:test=>"kind_of? Integer",
          :explanation=>"This variable must be an integer."}],
       :type=>:Integer},
     :eq_mode_u=>
      {:should_include=>"true",
       :description=>nil,
       :help=>nil,
       :code_name=>:eq_mode_u,
       :must_pass=>
        [{:test=>"kind_of? Integer",
          :explanation=>"This variable must be an integer."}],
       :type=>:Integer},
     :input_check_recon=>
      {:should_include=>"true",
       :description=>nil,
       :help=>nil,
       :code_name=>:input_check_recon,
       :must_pass=>
        [{:test=>"kind_of? String and FORTRAN_BOOLS.include? self",
          :explanation=>
           "This variable must be a fortran boolean. (In Ruby this is represented as a string: e.g. '.true.')"}],
       :type=>:Fortran_Bool},
     :ikpar_init=>
      {:should_include=>"true",
       :description=>nil,
       :help=>nil,
       :code_name=>:ikpar_init,
       :must_pass=>
        [{:test=>"kind_of? Integer",
          :explanation=>"This variable must be an integer."}],
       :type=>:Integer},
     :kpar_init=>
      {:should_include=>"true",
       :description=>nil,
       :help=>nil,
       :code_name=>:kpar_init,
       :must_pass=>
        [{:test=>"kind_of? Numeric",
          :explanation=>
           "This variable must be a floating point number (an integer is also acceptable: it will be converted into a floating point number)."}],
       :type=>:Float},
     :ikx_init=>
      {:should_include=>"true",
       :description=>
        "Only initialise noise for the kx mode indexed by ikx_index.",
       :help=>
        "Only initialise a single kx with noise. This input parameter is used when noise is being initialised. If specified, i.e. if it is set greater than zero, noise will only be initialised for itheta0 = ikx_index, i.e. for the mode indexed by ikx_index. this is useful for linear runs with flow shear, to track the evolution of a single Lagrangian mode.",
       :code_name=>:ikx_init,
       :must_pass=>
        [{:test=>"kind_of? Integer",
          :explanation=>"This variable must be an integer."}],
       :type=>:Integer},
     :read_many=>
      {:should_include=>"true",
       :description=>"Single/many restart files.",
       :help=>
        "Only applies if GS2 has been build with USE_PARALLEL_NETCDF=on. If .true., restart the old way from many restart files, if .false. use the new single restart file.",
       :code_name=>:read_many,
       :must_pass=>
        [{:test=>"kind_of? String and FORTRAN_BOOLS.include? self",
          :explanation=>
           "This variable must be a fortran boolean. (In Ruby this is represented as a string: e.g. '.true.')"}],
       :type=>:Fortran_Bool},
     :restart_eig_id=>
      {:should_include=>"true",
       :description=>nil,
       :help=>
        "Used to select with eigensolver generated restart file to load. Sets <id> in restart_file//eig_<id>//.<proc> string used to set filename.\n",
       :code_name=>:restart_eig_id,
       :must_pass=>
        [{:test=>"kind_of? Integer",
          :explanation=>"This variable must be an integer."}],
       :type=>:Integer},
     :constant_random_flag=>
      {:should_include=>"true",
       :description=>
        "For testing. Used fixed array of random numbers in initialization.",
       :help=>
        "For testing. Used fixed array of random numbers in initialization.",
       :code_name=>:constant_random_flag,
       :must_pass=>
        [{:test=>"kind_of? String and FORTRAN_BOOLS.include? self",
          :explanation=>
           "This variable must be a fortran boolean. (In Ruby this is represented as a string: e.g. '.true.')"}],
       :type=>:Fortran_Bool},
     :restart_file=>
      {:should_include=>"true",
       :description=>"Base of filenames with restart data.",
       :help=>"Base of filenames with restart data.",
       :code_name=>:restart_file,
       :must_pass=>
        [{:test=>"kind_of? String",
          :explanation=>"This variable must be a string."}],
       :type=>:String},
     :restart_dir=>
      {:should_include=>"true",
       :description=>nil,
       :help=>
        "Directory in which to write/read restart files. Make sure this exists before running.",
       :code_name=>:restart_dir,
       :must_pass=>
        [{:test=>"kind_of? String",
          :explanation=>"This variable must be a string."}],
       :type=>:String}}},
 :reinit_knobs=>
  {:description=>"",
   :should_include=>"true",
   :variables=>
    {:delt_adj=>
      {:should_include=>"true",
       :description=>"When the time step needs to be changed, it is adjusted",
       :help=>
        "When the time step needs to be changed it is adjusted by this factor (i.e dt-->dt/delt_adj or dt-->dt*delt_adj when reducing/increasing the timestep).\n**For implicit non-linear runs good choice of [[delt_adj]] can make a moderate difference to efficiency. Need to balance time taken to reinitialise against frequency of time step adjustments (i.e. if your run takes a long time to initialise you probably want to set delt_adj to be reasonably large).",
       :code_name=>:delt_adj,
       :must_pass=>
        [{:test=>"kind_of? Numeric",
          :explanation=>
           "This variable must be a floating point number (an integer is also acceptable: it will be converted into a floating point number)."}],
       :type=>:Float},
     :delt_minimum=>
      {:should_include=>"true",
       :description=>"The minimum time step is delt_minimum.",
       :help=>
        "The minimum time step allowed is delt_minimum. If the code wants to drop below this value then the run will end.",
       :code_name=>:delt_minimum,
       :must_pass=>
        [{:test=>"kind_of? Numeric",
          :explanation=>
           "This variable must be a floating point number (an integer is also acceptable: it will be converted into a floating point number)."}],
       :type=>:Float}}},
 :layouts_knobs=>
  {:description=>"",
   :should_include=>"true",
   :variables=>
    {:layout=>
      {:should_include=>"true",
       :description=>
        "'yxles', 'lxyes', 'lyxes', 'lexys' Determines the way the grids are laid out in memory.",
       :help=>
        "Determines the way the grids are laid out in memory. Rightmost is parallelised first. \n** Can be 'yxles', 'lxyes', 'lyxes', 'lexys','xyles'\n** Strongly affects performance on parallel computers\n** In general avoid parallelizing over x. For this reason 'lxyes' is often a good choice.\n*Depending on the type of run you are doing, and how many processors you are using, the optimal layout will vary.\n** In nonlinear runs FFTs are taken in x and y, so keeping these as local as possible (i.e. keeping xy to the left in layout) will help these.\n** In calculating collisions we need to take derivatives in l and e, hence keeping these as local as possible will help these.\n** The best choice will vary depending on grid sizes generally for linear runs with collisions 'lexys' is a good choice whilst for nonlinear runs (with or without collisions) 'xyles' (or similar) is usually fastest.",
       :code_name=>:layout,
       :must_pass=>
        [{:test=>"kind_of? String",
          :explanation=>"This variable must be a string."}],
       :type=>:String},
     :local_field_solve=>
      {:should_include=>"true",
       :description=>
        "Strongly affects initialization time on some parallel computers.",
       :help=>
        "Strongly affects initialization time on some parallel computers. \n**  Recommendation:  Use T on computers with slow communication networks.\n**  It's probably worth trying changing this on your favourite machine to see how much difference it makes for you.",
       :code_name=>:local_field_solve,
       :must_pass=>
        [{:test=>"kind_of? String and FORTRAN_BOOLS.include? self",
          :explanation=>
           "This variable must be a fortran boolean. (In Ruby this is represented as a string: e.g. '.true.')"}],
       :type=>:Fortran_Bool}}},
 :secondary_test_knobs=>
  {:description=>"",
   :should_include=>"true",
   :variables=>
    {:phi_test_real=>
      {:should_include=>"true",
       :description=>nil,
       :help=>nil,
       :code_name=>:phi_test_real,
       :must_pass=>
        [{:test=>"kind_of? Numeric",
          :explanation=>
           "This variable must be a floating point number (an integer is also acceptable: it will be converted into a floating point number)."}],
       :type=>:Float},
     :phi_test_imag=>
      {:should_include=>"true",
       :description=>nil,
       :help=>nil,
       :code_name=>:phi_test_imag,
       :must_pass=>
        [{:test=>"kind_of? Numeric",
          :explanation=>
           "This variable must be a floating point number (an integer is also acceptable: it will be converted into a floating point number)."}],
       :type=>:Float},
     :restartfile=>
      {:should_include=>"true",
       :description=>nil,
       :help=>nil,
       :code_name=>:restartfile,
       :must_pass=>
        [{:test=>"kind_of? String",
          :explanation=>"This variable must be a string."}],
       :type=>:String},
     :secondary_test=>
      {:should_include=>"true",
       :description=>nil,
       :help=>nil,
       :code_name=>:secondary_test,
       :must_pass=>
        [{:test=>"kind_of? String",
          :explanation=>"This variable must be a string."}],
       :type=>:String}}},
 :gryfx_nonlinear_terms_knobs=>
  {:description=>"",
   :should_include=>"true",
   :variables=>
    {:densfac=>
      {:should_include=>"true",
       :description=>nil,
       :help=>nil,
       :code_name=>:densfac,
       :must_pass=>
        [{:test=>"kind_of? Numeric",
          :explanation=>
           "This variable must be a floating point number (an integer is also acceptable: it will be converted into a floating point number)."}],
       :type=>:Float},
     :uparfac=>
      {:should_include=>"true",
       :description=>nil,
       :help=>nil,
       :code_name=>:uparfac,
       :must_pass=>
        [{:test=>"kind_of? Numeric",
          :explanation=>
           "This variable must be a floating point number (an integer is also acceptable: it will be converted into a floating point number)."}],
       :type=>:Float},
     :tparfac=>
      {:should_include=>"true",
       :description=>nil,
       :help=>nil,
       :code_name=>:tparfac,
       :must_pass=>
        [{:test=>"kind_of? Numeric",
          :explanation=>
           "This variable must be a floating point number (an integer is also acceptable: it will be converted into a floating point number)."}],
       :type=>:Float},
     :tprpfac=>
      {:should_include=>"true",
       :description=>nil,
       :help=>nil,
       :code_name=>:tprpfac,
       :must_pass=>
        [{:test=>"kind_of? Numeric",
          :explanation=>
           "This variable must be a floating point number (an integer is also acceptable: it will be converted into a floating point number)."}],
       :type=>:Float},
     :qparfac=>
      {:should_include=>"true",
       :description=>nil,
       :help=>nil,
       :code_name=>:qparfac,
       :must_pass=>
        [{:test=>"kind_of? Numeric",
          :explanation=>
           "This variable must be a floating point number (an integer is also acceptable: it will be converted into a floating point number)."}],
       :type=>:Float},
     :qprpfac=>
      {:should_include=>"true",
       :description=>nil,
       :help=>nil,
       :code_name=>:qprpfac,
       :must_pass=>
        [{:test=>"kind_of? Numeric",
          :explanation=>
           "This variable must be a floating point number (an integer is also acceptable: it will be converted into a floating point number)."}],
       :type=>:Float}}},
 :new_varenna_knobs=>
  {:description=>"",
   :should_include=>"true",
   :variables=>
    {:new_varenna_fsa=>
      {:should_include=>"true",
       :description=>nil,
       :help=>nil,
       :code_name=>:new_varenna_fsa,
       :must_pass=>
        [{:test=>"kind_of? String",
          :explanation=>"This variable must be a string."}],
       :type=>:String},
     :zonal_dens_switch=>
      {:should_include=>"true",
       :description=>nil,
       :help=>nil,
       :code_name=>:zonal_dens_switch,
       :must_pass=>
        [{:test=>"kind_of? Integer",
          :explanation=>"This variable must be an integer."}],
       :type=>:Integer},
     :q0_dens_switch=>
      {:should_include=>"true",
       :description=>nil,
       :help=>nil,
       :code_name=>:q0_dens_switch,
       :must_pass=>
        [{:test=>"kind_of? Integer",
          :explanation=>"This variable must be an integer."}],
       :type=>:Integer},
     :tpar_omegad_corrections=>
      {:should_include=>"true",
       :description=>nil,
       :help=>nil,
       :code_name=>:tpar_omegad_corrections,
       :must_pass=>
        [{:test=>"kind_of? String and FORTRAN_BOOLS.include? self",
          :explanation=>
           "This variable must be a fortran boolean. (In Ruby this is represented as a string: e.g. '.true.')"}],
       :type=>:Fortran_Bool},
     :tperp_omegad_corrections=>
      {:should_include=>"true",
       :description=>nil,
       :help=>nil,
       :code_name=>:tperp_omegad_corrections,
       :must_pass=>
        [{:test=>"kind_of? String and FORTRAN_BOOLS.include? self",
          :explanation=>
           "This variable must be a fortran boolean. (In Ruby this is represented as a string: e.g. '.true.')"}],
       :type=>:Fortran_Bool},
     :qpar_gradpar_corrections=>
      {:should_include=>"true",
       :description=>nil,
       :help=>nil,
       :code_name=>:qpar_gradpar_corrections,
       :must_pass=>
        [{:test=>"kind_of? String and FORTRAN_BOOLS.include? self",
          :explanation=>
           "This variable must be a fortran boolean. (In Ruby this is represented as a string: e.g. '.true.')"}],
       :type=>:Fortran_Bool},
     :qpar_bgrad_corrections=>
      {:should_include=>"true",
       :description=>nil,
       :help=>nil,
       :code_name=>:qpar_bgrad_corrections,
       :must_pass=>
        [{:test=>"kind_of? String and FORTRAN_BOOLS.include? self",
          :explanation=>
           "This variable must be a fortran boolean. (In Ruby this is represented as a string: e.g. '.true.')"}],
       :type=>:Fortran_Bool},
     :qperp_gradpar_corrections=>
      {:should_include=>"true",
       :description=>nil,
       :help=>nil,
       :code_name=>:qperp_gradpar_corrections,
       :must_pass=>
        [{:test=>"kind_of? String and FORTRAN_BOOLS.include? self",
          :explanation=>
           "This variable must be a fortran boolean. (In Ruby this is represented as a string: e.g. '.true.')"}],
       :type=>:Fortran_Bool},
     :qperp_bgrad_corrections=>
      {:should_include=>"true",
       :description=>nil,
       :help=>nil,
       :code_name=>:qperp_bgrad_corrections,
       :must_pass=>
        [{:test=>"kind_of? String and FORTRAN_BOOLS.include? self",
          :explanation=>
           "This variable must be a fortran boolean. (In Ruby this is represented as a string: e.g. '.true.')"}],
       :type=>:Fortran_Bool},
     :qpar0_switch=>
      {:should_include=>"true",
       :description=>nil,
       :help=>nil,
       :code_name=>:qpar0_switch,
       :must_pass=>
        [{:test=>"kind_of? String and FORTRAN_BOOLS.include? self",
          :explanation=>
           "This variable must be a fortran boolean. (In Ruby this is represented as a string: e.g. '.true.')"}],
       :type=>:Fortran_Bool},
     :qprp0_switch=>
      {:should_include=>"true",
       :description=>nil,
       :help=>nil,
       :code_name=>:qprp0_switch,
       :must_pass=>
        [{:test=>"kind_of? String and FORTRAN_BOOLS.include? self",
          :explanation=>
           "This variable must be a fortran boolean. (In Ruby this is represented as a string: e.g. '.true.')"}],
       :type=>:Fortran_Bool}}}}
