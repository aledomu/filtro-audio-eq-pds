function ir = getLowPassFilterIR (L, Fm, Fc)
  M = (L - 1) / 2;
  m = 0 : (L - 1);
  wc = 2 * Fc / Fm;
  h = wc * sinc(wc * (m - M));
  hannWindow = (1 + cos(2 * pi * (m - M) / (L - 1))) / 2;
  ir = h .* hannWindow;
end
