function ir = getHighPassFilterIR (L, Fm, Fc)
  n = 0 : (L - 1);
  Fcl = (Fm / 2) - Fc;
  ir = ((-1) .^ n) .* getLowPassFilterIR(L, Fm, Fcl);
end
