%% Declaring your first Matlab variable!
% In Matlab, "numbers" as we know it are stored as "doubles" in matrices by
% default. That's why it's called Matlab! Matrix Laboratory! Let's take a
% look at the example below. The variable 'x1' and 'x2' are initialized
% and assigned a value of 5.71. The "=" is also known as an assignment.

x1 = 5.71;
x2 = [5.71];

% However, in Matlab, these two expressions are actually the same in value
% even though x2 is declared with matrix brackets while x1 isn't! The
% semi-colon at the end of the line merely indicates that the variable
% will not be printed at the end of the line. You can try and see what
% happens in the command window if you delete the semi-colons above.

% You can also perform computations during the declaration of a variable.
% These are also known as expressions.
x3 = x1 + x2;

% This line below is used to print out what the value of x3 is for you.
% Alternatively, you could also remove the semi-colon in Line 17 above.
disp([ 'Line 18: x3 = ', num2str(x3) ]);
