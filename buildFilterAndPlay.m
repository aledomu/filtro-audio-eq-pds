L = 1001;

[x, Fm] = audioread("music.wav");

eq1 = getLowPassFilterIR(L, Fm, 500) * 10.0;
eq2 = getBandPassFilterIR(L, Fm, 500, 700) * 0.35;
eq3 = getBandPassFilterIR(L, Fm, 700, 3000) * 3.0;
eq4 = getBandPassFilterIR(L, Fm, 3000, 12000) * 0.5;
eq5 = getHighPassFilterIR(L, Fm, 12000) * 5.0;

% Suma de impulsos de respuesta y aplicación de filtro en un solo paso
yRaw = filter(eq1 + eq2 + eq3 + eq4 + eq5, 1, x);

% Normalización
y = (0.95 / max(max(abs(yRaw)))) .* yRaw;

%p = audioplayer(y, Fm, 16);

audiowrite("music_with_eq.wav", y, Fm);

%play(p);
