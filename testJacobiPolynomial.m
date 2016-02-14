%% Test Benchmark of JacobiPolynomail vs JacobiP

x = -1 : 0.001 : 1;

MaxN = 10;

for n = 0 : MaxN
    for alpha = 0 : 1
        for beta = 0 : 1
            p1 = JacobiPolynomial(n, alpha, beta, x);
            p2 = JacobiP(x, alpha, beta, n);
            er = abs(p1-p2);
            assert(max(er(:)<10*eps), ['Test Failed with: n = ', num2str(n), ' alpha = ', num2str(alpha), ' beta = ', num2str(beta)]);
        end
    end
end