function c = Coefficient(l, fv, x, w)
    p = LegendreBasis(l, x);
%     p = p';
    c = sum(p.*fv.*w);
%     c = integral(@(xt) f(xt).*LegendreBasis(l,xt), -1, 1);
end

