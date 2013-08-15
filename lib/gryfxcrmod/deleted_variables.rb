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
   :autoscanned_defaults=>[1.0]},
 :beta=>
  {:should_include=>"true",
   :description=>"",
   :help=>"",
   :code_name=>:beta,
   :must_pass=>
    [{:test=>"kind_of? Numeric",
      :explanation=>
       "This variable must be a floating point number (an integer is also acceptable: it will be converted into a floating point number)."}],
   :type=>:Float},
 :zeff=>
  {:should_include=>"true",
   :description=>"",
   :help=>"",
   :code_name=>:zeff,
   :must_pass=>
    [{:test=>"kind_of? Numeric",
      :explanation=>
       "This variable must be a floating point number (an integer is also acceptable: it will be converted into a floating point number)."}],
   :type=>:Float},
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
   :autoscanned_defaults=>[]},
 :itor=>
  {:should_include=>"true",
   :description=>"",
   :help=>"",
   :code_name=>:itor,
   :must_pass=>
    [{:test=>"kind_of? Integer",
      :explanation=>"This variable must be an integer."}],
   :type=>:Integer},
 :iflux=>
  {:should_include=>"true",
   :description=>"",
   :help=>"",
   :code_name=>:iflux,
   :must_pass=>
    [{:test=>"kind_of? Integer",
      :explanation=>"This variable must be an integer."}],
   :type=>:Integer},
 :ppl_eq=>
  {:should_include=>"true",
   :description=>"",
   :help=>"",
   :code_name=>:ppl_eq,
   :must_pass=>
    [{:test=>"kind_of? String and FORTRAN_BOOLS.include? self",
      :explanation=>
       "This variable must be a fortran boolean. (In Ruby this is represented as a string: e.g. '.true.')"}],
   :type=>:Fortran_Bool},
 :gen_eq=>
  {:should_include=>"true",
   :description=>"",
   :help=>"",
   :code_name=>:gen_eq,
   :must_pass=>
    [{:test=>"kind_of? String and FORTRAN_BOOLS.include? self",
      :explanation=>
       "This variable must be a fortran boolean. (In Ruby this is represented as a string: e.g. '.true.')"}],
   :type=>:Fortran_Bool},
 :efit_eq=>
  {:should_include=>"true",
   :description=>"",
   :help=>"",
   :code_name=>:efit_eq,
   :must_pass=>
    [{:test=>"kind_of? String and FORTRAN_BOOLS.include? self",
      :explanation=>
       "This variable must be a fortran boolean. (In Ruby this is represented as a string: e.g. '.true.')"}],
   :type=>:Fortran_Bool},
 :delrho=>
  {:should_include=>"true",
   :description=>"",
   :help=>"",
   :code_name=>:delrho,
   :must_pass=>
    [{:test=>"kind_of? Numeric",
      :explanation=>
       "This variable must be a floating point number (an integer is also acceptable: it will be converted into a floating point number)."}],
   :type=>:Float},
 :isym=>
  {:should_include=>"true",
   :description=>"",
   :help=>"",
   :code_name=>:isym,
   :must_pass=>
    [{:test=>"kind_of? Integer",
      :explanation=>"This variable must be an integer."}],
   :type=>:Integer}}
