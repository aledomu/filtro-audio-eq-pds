function ir = getBandPassFilterIR (L, Fm, Flc, Fhc)
  m = 0 : (L - 1);
  f0 = (Fhc + Flc) / 2;
  ir = 2 * cos(2 * pi * f0 * m) .* getLowPassFilterIR(L, Fm, (Fhc - Flc) / 2);
end
