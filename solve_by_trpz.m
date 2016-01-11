function m = solve_by_trpz(f,tRange,initVal)

m    = zeros(size(tRange));
m(1) = initVal;

for kk = 2:(numel(tRange)-1)
    h=tRange(kk) - tRange(kk-1);
    m(kk) = m(kk-1) + h * 0.5 * ( f( tRange(kk-1) , m(kk-1)) + f( tRange(kk+1) , m(kk-1) ));
end

end % function
