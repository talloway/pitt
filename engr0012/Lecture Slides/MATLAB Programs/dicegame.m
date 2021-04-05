% Avery Team L03
clear all;
clc;

% Shuffle random number seed
rng('shuffle');

% dice{1} = imread('die1.png'); % Curly brackets make cell array
% dice{2} = imread('die2.png');
% dice{3} = imread('die3.png');
% dice{4} = imread('die4.png');
% dice{5} = imread('die5.png');
% dice{6} = imread('die6.png');

choice = 1;
losses = 0;
while choice == 1


    for i = 1:6
        dice{i} = imread(['die',num2str(i)],'PNG');
    end
    
    close all; % Close all open figure windows
    numdice = menu('How many dice do you want to roll?', 'One', 'Two', 'Three');
    usernum = input('Enter your guess: ');
    
    switch numdice
        case 1
            while usernum < 1 || usernum > 6
                usernum = input('Enter your guess');
            end
            roll = randperm(6);
            subplot(2,1,1);
            hold on;
            for i = roll
                imshow(dice{roll(i)});
                pause(0.05);
            end
            if usernum == roll(i)
                subplot(2,1,2)
                axis off;
                text(0,0,'You won');
            else
                subplot(2,1,2)
                axis off;
                text(0,0, 'You lose');
            end
            
        case 2
            while usernum < 2 || usernum > 12
                usernum = input('Enter your guess');
            end
            
            roll = randi(6,2,6);
            for i = 1:6
                subplot(2,2,1)
                imshow(dice{roll(1,i)});
                subplot(2,2,2)
                imshow(dice{roll(2,i)});
                pause(0.05);
            end
            
        case 3
            while usernum < 3 || usernum > 18
                usernum = input('Enter your guess');
            end
          
            roll = randi(6, 3, 1);
            
    end
    choice = menu('Do you want to continue? ', 'Yes', 'No');
end
close all;