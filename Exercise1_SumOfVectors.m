% Hello! In this little exercise, you can try to see how vector addition is
% done in Matlab, and how you can then plot your vectors. We are going to
% see how to sum analog signals (i.e. radio frequency signals, acoustic
% signals etc) to create a "digital-like" signal.

% Student input below: generate a vector representing time, starting from
% t = 0 seconds to t = 5 seconds! You can refer to these examples:

% x4 = [1 2 3];         % This creates a vector [ 1 2 3 ].
% x5 = [1,2,3];         % This is an identical vector.
% x6 = 1:1:3;           % Also an identical vector.
% x7 = linspace(1,3,3); % Still an identical vector!

time = ... % STUDENT INPUT REQUIRED HERE.

% Now we can try to generate some component signals.

s1 = (1/1) * sin( 1*pi*time );
s2 = (1/3) * sin( 3*pi*time );
s3 = (1/5) * sin( 5*pi*time );
s4 = (1/7) * sin( 7*pi*time );
s5 = (1/9) * sin( 9*pi*time );

fullSignal = ... % STUDENT INPUT REQUIRED HERE

plot( time, fullSignal );
title("Plot of a composite signal using vector addition!");
xlabel("Time (seconds)");
ylabel("Amplitude");

% Question, what if you tried plotting time against each individual
% component of the signal? Uncomment below to find out!

% hold('on');
% plot( time, s1 );
% plot( time, s2 );
% plot( time, s3 );
% plot( time, s4 );
% plot( time, s5 );
