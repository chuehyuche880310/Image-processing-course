%값픚팒쬍픚
h1 = (1/9)*[1 1 1;1 1 1;1 1 1]; %Low pass
h2=(1/9)*[1 0 -1;2 0 -2;1 0 -1]; %High pass

% H = fft2(h);
% H2=fft2(h2);

h_pad_zero_1 = zeros(256,256);
h_pad_zero_2 = zeros(256,256);

h_pad_zero_1(1:3,1:3) = h1;
h_pad_zero_2(1:3,1:3) = h2;
H1 = fft2(h_pad_zero_1);
H2 = fft2(h_pad_zero_2);
figure;
subplot(1,2,1); mesh(abs(H1));
subplot(1,2,2); mesh(abs(H2));


%---------------