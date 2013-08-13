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
       :code_name=>:Rmaj,
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
       :autoscanned_defaults=>[1.0]}}},
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
       :autoscanned_defaults=>[5]}}},
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
       :code_name=>:TiTe,
       :must_pass=>
        [{:test=>"kind_of? Numeric",
          :explanation=>
           "This variable must be a floating point number (an integer is also acceptable: it will be converted into a floating point number)."}],
       :type=>:Float,
       :autoscanned_defaults=>[1.0]}}},
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
       :module=>:parameter_scan},
     :dens0=>
      {:should_include=>"true",
       :description=>nil,
       :help=>nil,
       :tests=>["Tst::FLOAT"],
       :gs2_name=>:dens0,
       :must_pass=>
        [{:test=>"kind_of? Float or kind_of? Integer",
          :explanation=>
           "This variable must be a floating point number (an integer is also acceptable: it will be converted into a floating point number)."}],
       :type=>:Float,
       :code_name=>:dens0,
       :autoscanned_defaults=>[]},
     :u0=>
      {:should_include=>"true",
       :description=>nil,
       :help=>nil,
       :tests=>["Tst::FLOAT"],
       :gs2_name=>:u0,
       :must_pass=>
        [{:test=>"kind_of? Float or kind_of? Integer",
          :explanation=>
           "This variable must be a floating point number (an integer is also acceptable: it will be converted into a floating point number)."}],
       :type=>:Float,
       :code_name=>:u0,
       :autoscanned_defaults=>[]},
     :uprim2=>
      {:should_include=>"true",
       :description=>nil,
       :help=>" \n",
       :tests=>["Tst::FLOAT"],
       :gs2_name=>:uprim2,
       :must_pass=>
        [{:test=>"kind_of? Float or kind_of? Integer",
          :explanation=>
           "This variable must be a floating point number (an integer is also acceptable: it will be converted into a floating point number)."}],
       :type=>:Float,
       :code_name=>:uprim2,
       :autoscanned_defaults=>[]},
     :nustar=>
      {:should_include=>"true",
       :description=>nil,
       :help=>nil,
       :tests=>["Tst::FLOAT"],
       :gs2_name=>:nustar,
       :must_pass=>
        [{:test=>"kind_of? Float or kind_of? Integer",
          :explanation=>
           "This variable must be a floating point number (an integer is also acceptable: it will be converted into a floating point number)."}],
       :type=>:Float,
       :code_name=>:nustar,
       :autoscanned_defaults=>[]},
     :nu=>
      {:should_include=>"true",
       :description=>nil,
       :help=>nil,
       :tests=>["Tst::FLOAT"],
       :gs2_name=>:nu,
       :must_pass=>
        [{:test=>"kind_of? Float or kind_of? Integer",
          :explanation=>
           "This variable must be a floating point number (an integer is also acceptable: it will be converted into a floating point number)."}],
       :type=>:Float,
       :code_name=>:nu,
       :autoscanned_defaults=>[]},
     :nu_h=>
      {:should_include=>"true",
       :description=>nil,
       :help=>nil,
       :tests=>["Tst::FLOAT"],
       :gs2_name=>:nu_h,
       :must_pass=>
        [{:test=>"kind_of? Float or kind_of? Integer",
          :explanation=>
           "This variable must be a floating point number (an integer is also acceptable: it will be converted into a floating point number)."}],
       :type=>:Float,
       :code_name=>:nu_h,
       :autoscanned_defaults=>[]},
     :tperp0=>
      {:should_include=>"true",
       :description=>nil,
       :help=>nil,
       :tests=>["Tst::FLOAT"],
       :gs2_name=>:tperp0,
       :must_pass=>
        [{:test=>"kind_of? Float or kind_of? Integer",
          :explanation=>
           "This variable must be a floating point number (an integer is also acceptable: it will be converted into a floating point number)."}],
       :type=>:Float,
       :code_name=>:tperp0,
       :autoscanned_defaults=>[]},
     :tpar0=>
      {:should_include=>"true",
       :description=>nil,
       :help=>nil,
       :tests=>["Tst::FLOAT"],
       :gs2_name=>:tpar0,
       :must_pass=>
        [{:test=>"kind_of? Float or kind_of? Integer",
          :explanation=>
           "This variable must be a floating point number (an integer is also acceptable: it will be converted into a floating point number)."}],
       :type=>:Float,
       :code_name=>:tpar0,
       :autoscanned_defaults=>[]},
     :source=>
      {:should_include=>"true",
       :description=>
        "Normalised alpha source. If set -ve  automatically adjusted to give specified alpha density.",
       :help=>
        "Sets the normalised source for alphas. If set negative will be automatically adjusted to give the specified alpha density.",
       :code_name=>:source,
       :must_pass=>
        [{:test=>"kind_of? Numeric",
          :explanation=>
           "This variable must be a floating point number (an integer is also acceptable: it will be converted into a floating point number)."}],
       :type=>:Float,
       :autoscanned_defaults=>[]},
     :sprim=>
      {:should_include=>"true",
       :description=>"Gradient of normalised source.",
       :help=>"Gradient of normalised source.",
       :code_name=>:sprim,
       :must_pass=>
        [{:test=>"kind_of? Numeric",
          :explanation=>
           "This variable must be a floating point number (an integer is also acceptable: it will be converted into a floating point number)."}],
       :type=>:Float,
       :autoscanned_defaults=>[]},
     :gamma_ai=>
      {:should_include=>"true",
       :description=>
        "Alpha ion collion rate. Should be roughly the same as nu_ii.",
       :help=>
        "Alpha ion collion rate. Normalisation chosen so that this parameter should be roughly the same as nu_ii.",
       :code_name=>:gamma_ai,
       :must_pass=>
        [{:test=>"kind_of? Numeric",
          :explanation=>
           "This variable must be a floating point number (an integer is also acceptable: it will be converted into a floating point number)."}],
       :type=>:Float,
       :autoscanned_defaults=>[]},
     :gamma_ae=>
      {:should_include=>"true",
       :description=>
        "Alpha electron collion rate. Should be roughly the same as nu_ee.",
       :help=>
        "Alpha electron collion rate. Normalisation chosen so that this parameter should be roughly the same as nu_ee.",
       :code_name=>:gamma_ae,
       :must_pass=>
        [{:test=>"kind_of? Numeric",
          :explanation=>
           "This variable must be a floating point number (an integer is also acceptable: it will be converted into a floating point number)."}],
       :type=>:Float,
       :autoscanned_defaults=>[]}}},
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
     :zero_restart_avg=>
      {:should_include=>"true",
       :description=>nil,
       :help=>nil,
       :code_name=>:zero_restart_avg,
       :must_pass=>
        [{:test=>"kind_of? String",
          :explanation=>"This variable must be a string."}],
       :type=>:String,
       :autoscanned_defaults=>["off"]},
     :no_zderiv_covering=>
      {:should_include=>"true",
       :description=>nil,
       :help=>nil,
       :code_name=>:no_zderiv_covering,
       :must_pass=>
        [{:test=>"kind_of? String",
          :explanation=>"This variable must be a string."}],
       :type=>:String,
       :autoscanned_defaults=>["off"]},
     :no_omegad=>
      {:should_include=>"true",
       :description=>nil,
       :help=>nil,
       :code_name=>:no_omegad,
       :must_pass=>
        [{:test=>"kind_of? String",
          :explanation=>"This variable must be a string."}],
       :type=>:String,
       :autoscanned_defaults=>["off"]},
     :const_curv=>
      {:should_include=>"true",
       :description=>nil,
       :help=>nil,
       :code_name=>:const_curv,
       :must_pass=>
        [{:test=>"kind_of? String",
          :explanation=>"This variable must be a string."}],
       :type=>:String,
       :autoscanned_defaults=>["off"]},
     :varenna=>
      {:should_include=>"true",
       :description=>"",
       :help=>
        "If \"on\", use the closure from the Beer et. al. Varenna paper.",
       :code_name=>:varenna,
       :must_pass=>
        [{:test=>"kind_of? String",
          :explanation=>"This variable must be a string."}],
       :type=>:String,
       :autoscanned_defaults=>["off"]},
     :nlpm=>
      {:should_include=>"true",
       :description=>nil,
       :help=>nil,
       :code_name=>:nlpm,
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
     :smagorinsky=>
      {:should_include=>"true",
       :description=>nil,
       :help=>nil,
       :code_name=>:smagorinsky,
       :must_pass=>
        [{:test=>"kind_of? String",
          :explanation=>"This variable must be a string."}],
       :type=>:String,
       :autoscanned_defaults=>["off"]},
     :hyper=>
      {:should_include=>"true",
       :description=>nil,
       :help=>nil,
       :code_name=>:hyper,
       :must_pass=>
        [{:test=>"kind_of? String",
          :explanation=>"This variable must be a string."}],
       :type=>:String,
       :autoscanned_defaults=>["off"]},
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
     :debug=>
      {:should_include=>"true",
       :description=>nil,
       :help=>nil,
       :code_name=>:debug,
       :must_pass=>
        [{:test=>"kind_of? String",
          :explanation=>"This variable must be a string."}],
       :type=>:String,
       :autoscanned_defaults=>["off"]},
     :s_alpha=>
      {:should_include=>"true",
       :description=>nil,
       :help=>"Use s_alpha geometry if \"on\".   ",
       :code_name=>:s_alpha,
       :must_pass=>
        [{:test=>"kind_of? String",
          :explanation=>"This variable must be a string."}],
       :type=>:String,
       :autoscanned_defaults=>["on"]},
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
     :write_phi=>
      {:should_include=>"true",
       :description=>nil,
       :help=>nil,
       :code_name=>:write_phi,
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
       :autoscanned_defaults=>[1]}}},
 :collision_knobs=>
  {:description=>"",
   :should_include=>"true",
   :variables=>
    {:collision_model=>
      {:should_include=>"true",
       :description=>nil,
       :help=>nil,
       :code_name=>:collision_model,
       :must_pass=>
        [{:test=>"kind_of? String",
          :explanation=>"This variable must be a string."}],
       :type=>:String,
       :autoscanned_defaults=>["none"]}}}}
