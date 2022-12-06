%% CSCI 130 EXAMPLE
% clear workspaces and close all figures
close all;
clear all;

%% Is it prime? Check user input
disp('This code checks to see if a number is prime.');

n = 7;
%n = input('Enter a test number greater than 0: ');

prime_status = primeFinder(n);

if prime_status == 1
	disp(['The number ' num2str(n) ' is prime']);
else
    disp(['The number ' num2str(n) ' is NOT prime']);
end

%% User-Defined Function
function checker = primeFinder(n)

    if n == 1 
        checker = true;
        
    elseif n == 2
        checker = true;
        
    else
        % asssume checker is true unless we show otherwise
        checker = true;
        
        for i = 2:1:(n-1)
            if mod(n,i) == 0
                checker = false;
                break;
            end
        end
    end
end
