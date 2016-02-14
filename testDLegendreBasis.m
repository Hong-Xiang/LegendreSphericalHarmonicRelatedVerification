LMax = 10;

NX = 1000;
x = linspace(-1, 1, NX);
dx = x(2)-x(1);
MAXERROR = 1e-1;
for l = 0 : LMax
    p = LegendreBasis(l, x);
%     p2 = JacobiP(x, 0, 0, l);
    dl = DLegendreBasis(l, x);
    dl = GradJacobiP(x, 0, 0, l);
    dlc = zeros(size(p));
    dlc(1:end-1) = (p(2:end) - p(1:end-1))/dx;
    dlc(end) = dlc(end-1);
    error = norm(dl-dlc);
%     dl = p1; dlc = p2;
%     dl = JacobiP(x, 1, 1, l);
%     dlc = jacobiP(l, 1, 1, x);
    plot(x, dl, x, dlc)
    c = norm(dl)/norm(dlc)
%     c = c*c
%     assert(error < MAXERROR);
end