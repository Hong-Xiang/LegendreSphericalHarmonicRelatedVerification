function p = HG1D(mu, g)
%HG1D differential cross section of Henyey-Greenstein Scattering function
%   normailzed as \int_-1^1 HG1D(mu,g) dmu = 1
    p = 1/2*(1-g.^2)./(1+g.^2-2*g.*mu).^(3/2);
end

