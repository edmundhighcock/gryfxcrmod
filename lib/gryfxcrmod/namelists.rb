{:theta_grid_parameters=>
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
       :description=>"shift = -R q**2 dbeta/drho (>0)",
       :help=>
        "Related to Shafranov shift.  Sign depends on geometric model. ?? Exact definition uncertain... please edit if you know! ?? Could be\n** <math>shift = -R q**2 d\\beta/d\\rho (>0) </math> ??\n** dR/drho (R normalized to a) (< 0) ??",
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
        "Sets curvature drift in simple geometric models.  <math>\\epsilon_\\ell = 2 a / R </math>, where a is the GS2 normalisation length and R is the major radius at the centre of the flux surface.",
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
        "Number of grid points along equilibrium magnetic field between <math>\\theta=(-\\pi,\\pi)</math> (in addition to a grid point at <math>\\theta=0</math>).\n** Ignored in some cases",
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
        "rhoc is flux surface label (0< rhoc< 1). Its exact meaning depends on irho. Usually rho = diameter/diameter of LCFS\n** When irho = 1, rhoc = sqrt(toroidal flux)/sqrt(toroidal flux of LCFS)\n** When irho = 2, rhoc =  diameter/(diameter of LCFS).  recommended\n** When irho = 3, rhoc =  poloidal flux/(poloidal flux of LCFS)",
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
       :type=>:Integer}}},
 :kt_grids_box_parameters=>
  {:description=>"",
   :should_include=>"true",
   :variables=>
    {:jtwist=>
      {:should_include=>"true",
       :description=>"L_x = L_y  jtwist / (2 pi shat)",
       :help=>
        "For finite magnetic shear, determines box size in x direction according to \n** <math>L_x = L_y  jtwist / (2 \\pi \\hat{s}) </math>\n** Also affects the number of \"connections\" at each ky when linked boundary conditions are selected in the dist_fn_knobs namelist.",
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
        "The length of the box in the y direction (measured in the Larmour radius of species 1).  Box size in y direction is 2*pi*y0.",
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
       :autoscanned_defaults=>[10]}}},
 :dist_fn_knobs=>
  {:description=>"",
   :should_include=>"true",
   :variables=>
    {:g_exb=>
      {:should_include=>"true",
       :description=>nil,
       :help=>nil,
       :code_name=>:g_exb,
       :must_pass=>
        [{:test=>"kind_of? Integer",
          :explanation=>"This variable must be an integer."}],
       :type=>:Integer,
       :autoscanned_defaults=>[0]}}},
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
       :autoscanned_defaults=>["off"]}}},
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
       :autoscanned_defaults=>[100]}}},
 :knobs=>
  {:description=>"",
   :should_include=>"true",
   :variables=>
    {:dt=>
      {:should_include=>"true",
       :description=>nil,
       :help=>nil,
       :code_name=>:dt,
       :must_pass=>
        [{:test=>"kind_of? Numeric",
          :explanation=>
           "This variable must be a floating point number (an integer is also acceptable: it will be converted into a floating point number)."}],
       :type=>:Float,
       :autoscanned_defaults=>[0.02]},
     :maxdt=>
      {:should_include=>"true",
       :description=>nil,
       :help=>nil,
       :code_name=>:maxdt,
       :must_pass=>
        [{:test=>"kind_of? Numeric",
          :explanation=>
           "This variable must be a floating point number (an integer is also acceptable: it will be converted into a floating point number)."}],
       :type=>:Float,
       :autoscanned_defaults=>[0.02]},
     :nstep=>
      {:should_include=>"true",
       :description=>"Maximum number of timesteps",
       :help=>
        "Number of timesteps that will be taken, unless the code stops for some (usually user-specified) reason.",
       :code_name=>:nstep,
       :must_pass=>
        [{:test=>"kind_of? Integer",
          :explanation=>"This variable must be an integer."}],
       :type=>:Integer,
       :autoscanned_defaults=>[10000]}}},
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
        "Normalised inverse temperature gradient: <math>-1/T (dT/d\\rho)</math>",
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
        "Normalised inverse density gradient: <math>-1/n (dn/d\\rho)</math>",
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
      {:help=>"Collisionality parameter: collisionality normalized to v_th/a",
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
       :type=>:Fortran_Bool}}},
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
       :type=>:Float}}},
 :theta_grid_knobs=>
  {:description=>"",
   :should_include=>"true",
   :variables=>
    {:equilibrium_option=>
      {:should_include=>"true",
       :description=>
        "Controls which geometric assumptions are used in the run.",
       :help=>
        "The equilibrium_option variable controls which geometric assumptions are used in the run.  Additional namelists determine the geometric parameters according to the choice made here. Allowed values are:\n** 'eik' Use routines from the geometry module, controlled mainly by the subsidiary namelists theta_grid_parameters and theta_grid_eik_knob.\n** 'default' Same as 'eik'                                                                                                                          \n** 's-alpha' Use high aspect-ratio toroidal equilbrium (which can be simplified to slab or cylinder), controlled by the subsidiary namelist theta_grid_parameters and  theta_grid_salpha_knob\n** 'file'  Use output from rungridgen code directly.  Controlled by theta_grid_file_knobs. Note: in this case, the variables nperiod and ntheta (from the theta_grid_parameters namelist) are ignored.\n** 'grid.out'  Same as 'file'",
       :code_name=>:equilibrium_option,
       :must_pass=>
        [{:test=>"kind_of? String",
          :explanation=>"This variable must be a string."}],
       :type=>:String}}}}
