N = 100;
Ns = 3;
V = 1;
SNR = -10:10;
BER = zeros(1, length(SNR));

% create alternating array [1, -1, 1, -1, ...]
out = zeros(1, 33); % make this correct with N/Ns

for a = 1:length(out)
    out(a) = randi([0, 1]);
    if out(a) == 0
        out(a) = -1*V;
    end
end

% extend it by Ns to get [1, 1, 1, -1, -1, -1, ...]
transmitted = repelem(out, Ns);

for c = 1:length(SNR)
    time = 1:99;
    received = zeros(1, (N-1));
    recovered = zeros(1, (N-1));
    val = 1;
    
    % simulate received signal with awgn - examine this
    for d = 1:(N-1)
        received(d) = awgn(transmitted(d), SNR(c));
    end
    
    % plot received signal if SNR = -10 or 10
%     if SNR(c) == -10 || SNR(c) == 10
%       plot(time, received);
%       xlabel("Time (s)");
%       ylabel("Received signal after noise");
%       title("SNR = " + SNR(c));
%     end
    
    % recover bits from received signal
    for e = 1:3:(N-1)
        avg = (received(e) + received(e+1) + received(e+2)) / 3;
        
        if avg < 0
            val = -1;
        end
        
        recovered(e) = val;
        recovered(e+1) = val;
        recovered(e+2) = val;
    end
    
    % calculate BER
    sample_BER = 0;
    for f = 1:(N-1)
        if transmitted(f) ~= recovered(f)
            BER(c) = BER(c) + 1;
        end
    end
    
    BER(c) = BER(c) / N;
end

plot(SNR, BER);
title("SNR vs BER");
xlabel("SNR");
ylabel("BER (error bits / total bits)");