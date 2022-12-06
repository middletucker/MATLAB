%% Guess a random number in 5 tries or less

clear all;

% generate teh random number
number = floor(rand(1)*99.99999); % 0-99

% initialize while loop params
flag_continue = true;
Max_tries = 5;
n_attempts = 0;

while flag_continue && (n_attempts < Max_tries)
    
    n_attempts = n_attempts + 1; % update to current attempt
    
    % prompt user for a guess
    guess = input('Try to guess the number between 0-99. Enter an int: ');

    if guess < number
        disp('Too small!')
        disp(['You have ' num2str(Max_tries - n_attempts) ' attempts left.']);
    
    elseif guess > number
        disp('Too big!')
        disp(['You have ' num2str(Max_tries - n_attempts) ' attempts left.']);
    
    else
        flag_continue = false;
        disp('YAYYYYYY. You are a winner!')
        disp(':-D *dance, dance* ')
    end
    
end

disp(['The number was ' num2str(number)])