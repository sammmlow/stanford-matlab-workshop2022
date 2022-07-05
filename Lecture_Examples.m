%% FIRST NOTE:
% Hi! This Matlab code file contains all the examples discussed in lecture.
% Please note that if you run this file, you will run everything that is
% being covered and your command window will be flooded with a bunch of
% print outs. Don't be scared of them! Matlab is your friend =)

% Now, let's get started!

%% Declaring your first Matlab variable!
% =========================================================================
% In Matlab, numbers as we know it are stored as "doubles" in matrices by
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
disp([ 'Line 16: x1 = ', num2str(x1) ]);
disp([ 'Line 17: x2 = ', num2str(x2) ]);
disp([ 'Line 27: x3 = ', num2str(x3) ]);

%% Getting familiar with vectors!
% =========================================================================
% The power of Matlab is that it has tons of useful built-in operators that
% work well not only for single-valued variables such as doubles and
% integers, but also for vectors and even matrices. Let's take a look at
% vectors and how we can create them in a few ways.

x4 = [1 2 3];         % This creates a vector [ 1 2 3 ].
x5 = [1,2,3];         % This is an identical vector.
x6 = 1:1:3;           % Also an identical vector.
x7 = linspace(1,3,3); % Still an identical vector!

% In the above examples are 4 different ways of creating the same vector.

% In the variable x6, the line "1:1:3" means create a vector that starts
% at 1, increases in steps of 1, and ends (inclusively) at the value 3.
% In the variable x7, linspace can achieve the same vector, except it
% means to start at 1, end (inclusively) at 3, and the length of the
% vector is 3. In all cases, we get vectors [ 1 2 3 ].

disp([ 'Line 42: x4 = [ ', num2str(x4), ' ]' ]);
disp([ 'Line 43: x5 = [ ', num2str(x5), ' ]' ]);
disp([ 'Line 44: x6 = [ ', num2str(x6), ' ]' ]);
disp([ 'Line 45: x7 = [ ', num2str(x7), ' ]' ]);

% Now let's take a look at the various ways in which we can transpose a 
% row vector into a column vector! Spaces between values in a vector
% delineate the columns, while semi-colons between values delineate rows.
% First let’s take a look at transposing…
x8 = [1;2;3];   % Transposing a vector
x9 = [1 2 3]';  % Also transposing a vector
x10 = transpose([1 2 3]); % This works too!

% Now lets take a look at strings. Single quotation marks denote character
% vectors, while double quotation marks denote a single string object.
% However, if you do a Boolean evaluation, Matlab will tell you that they
% are the same! This means: (example_char == example_strg) = true

example_char = 'Hello world!'; % Character vector
example_strg = "Hello world!"; % A single string object

%% Getting familiar with operators!
% =========================================================================
% Let us now take a look at how we can apply basic operators in Matlab! 

% Common operators include:
% - addition (+)
% - subtraction (-)
% - multiplication (*)
% - division (/)
% - exponentiation (^).

x11 = 4*(x1);  % This should evaluate to 22.84.
x12 = exp(x2); % This should evaluate to 301.8711.

disp([ 'Line 87: x11 = ', num2str(x11) ]);
disp([ 'Line 88: x12 = ', num2str(x12) ]);

% Here are some built-in functions you can use in Matlab:
% Trigonometry: sin(), cos(), tan(), atan()
% Squares and Exponentials: exp(), log(), sqrt()
% Complex numbers: abs(), imag(), real(), conj()
% Rounding: round(), ceil(), fix()

% For vectors, if you want to apply an operator on every element in the
% vector rather than on the entire vector itself, you can prefix the
% operators with a period (.) for element-wise operations. Here's an
% example of 2 different ways of performing a square root.

x13 = [ 1 4 9 16 25 ]; % Original vector
x14 = sqrt(x13);       % Square-rooted vector
x15 = x13.^0.5;        % Also a square-rooted vector.

disp([ 'Line 104: x13 = [ ', num2str(x13), ' ]' ]);
disp([ 'Line 105: x14 = [ ', num2str(x14), ' ]' ]);
disp([ 'Line 106: x15 = [ ', num2str(x15), ' ]' ]);

%% Getting familiar with scripts and functions!
% =========================================================================
% Functions are useful to abstract away or perform repetitive computations
% that would otherwise have consumed many "lines of text"! You could build
% a function as simple as computing the area of a circle given a radius, 
% up to a function so complex that it can compute and predict with very
% high precision the motion of planets in our solar system! Here's an
% example of how to call a function, called "Mystery_Function", given an
% input which we will use the vector 'x13'.

x16 = Mystery_Function(x13);
disp([ 'Line 122: Output of Mystery Function = ', num2str(x16) ]);

% In Matlab, functions are (most commonly) a file on their own, where the
% function implementation exists solely within the file, and the name of
% the function must match the name of the file. A typical function
% signature looks like this:

% function <output_variable> = function_name( <input_variable> )
%     { <initialize and compute cool stuff into output_variable> }
% end

% Question: What do you think the mystery function does?

% Here's an example of a simple function used to compute a circle's area!
% Notice it can work on both scalars and vectors (try to see why!)
x17 = CircleArea(10);
x18 = CircleArea([ 1 2 3 4 5 ]);

disp([ 'Line 138: Area x17 = ' num2str(x17) ]);
disp([ 'Line 139: Area(s) x18 = [ ', num2str(x18), ' ]' ]);

%% Getting familiar with plotting!
% =========================================================================
% Now we have the basics of vectors under our arms, we can go ahead to do
% some plotting. You can refer to the rest of the slides for this part!

% You can define a new figure by using the command ‘figure’
% Figures can be numbered such as figure(1), figure(2), …
% To plot multiple graphs in the same figure use ‘hold on’
% ‘xlabel’, ‘ylabel’, ‘zlabel’ are used to label the axes
% Numerical functions: use the command ‘plot(x,y)’
% Other types of plots: bar, scatter, 3D
% Plotting options: ‘LineStyle’, ‘Color’, ‘Linewidth’, ‘MarkerSize’, ...

% Here is the most basic plotting example for a quadratic curve y=x^2!
x19 = linspace(1,100);
x20 = x19.^2; % Let's square every term in the x19 variable.
plot(x19,x20);

