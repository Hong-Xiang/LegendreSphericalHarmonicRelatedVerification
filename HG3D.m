function p = HG3D(mu, g)
%HG3D differential cross section of Henyey-Greenstein Scattering function
%   normailzed as \int_S^2 HG3D(OmegaOmega',g) dOmega' = 1
    p = 1/4/pi*(1-g.^2)./(1+g.^2-2*g.*mu).^(3/2);
end

