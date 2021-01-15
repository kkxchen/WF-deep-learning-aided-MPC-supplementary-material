function [Wp] = layoutSet_25turb_case()

Wp = struct('description','5 NREL 5MW turbines case, myself');

Wp.sim = struct(...
    'h',1.0,... % timestep (s)
    'startUniform',true ... % Start from a uniform flow field (T) or from a fully developed waked flow field (F).
    );

Wp.turbine = struct(...
    'Crx',[250,250+6*126,250+12*126,250+18*126,250+24*126,...   % X-coordinates of turbines (m)
          250,250+6*126,250+12*126,250+18*126,250+24*126,...
          250,250+6*126,250+12*126,250+18*126,250+24*126,...
          250,250+6*126,250+12*126,250+18*126,250+24*126,...
          250,250+6*126,250+12*126,250+18*126,250+24*126],...
    'Cry',[200,200,200,200,200,...
     200+4*126,200+4*126,200+4*126,200+4*126,200+4*126,...
     200+8*126,200+8*126,200+8*126,200+8*126,200+8*126,...
     200+12*126,200+12*126,200+12*126,200+12*126,200+12*126,...
     200+16*126,200+16*126,200+16*126,200+16*126,200+16*126],... % Y-coordinates of turbines (m)
    'Drotor',126,... % Rotor diameter (m), note that WFSim only supports a uniform Drotor for now
    'powerscale',0.99,... % Turbine power scaling
    'forcescale',1.5 ... % Turbine force scaling
    );

Wp.site = struct(...
    'u_Inf',10,... % Initial long. wind speed in m/s
    'v_Inf',0.0,... % Initial lat. wind speed in m/s
    'p_init',0.0,... % Initial values for pressure terms (Pa)
    'lm_slope',0.05,... % Mixing length in x-direction (m)
    'd_lower',140.0,... % Turbulence model gridding property
    'd_upper',1000.0,... % Turbulence model gridding property
    'Rho',1.20 ... % Air density
    );

Wp.mesh = struct(...
    'Lx',3500.0,... % Domain length in x-direction
    'Ly',2416.0,... % Domain length in y-direction
    'Nx',100,... % Number of cells in x-direction
    'Ny',82 ... % Number of cells in y-direction
    );


end