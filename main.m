firstIteration = true; % Flag to track the first iteration

while true
    % check whether user wants to exit the system
    if firstIteration
        disp('Welcome to the unit conversion system!');
        firstIteration = false; % Set the flag to false for subsequent iterations
    else
        if handleTermination()
            % terminate the program
            break;
        end
    end
    
    % take the input value
    inValue = getInputValue();
    
    % take the convertion type from the user
    convType = getValidConversionType();
    % convert the unit
    [numout, unit, prevUnit] = myunitconv(inValue, convType);
    % print the input value with units
    disp(['input Value = ', num2str(inValue), ' ', prevUnit])
    % print the coverted value with units
    disp(['Convereted Value = ', num2str(numout), ' ', unit])
end

function exitStatus = handleTermination()
    % This function handle the termination of the program
    exitStatus = false;
    response = input('Do you want to exit from the system? (yes/no): ', 's');

    % Check the user's response
    if strcmpi(response, 'yes')
        disp('Exiting from the system...');
        exitStatus = true;
        return; % Exit the function
    elseif strcmpi(response, 'no')
        disp('Continuing...');
    else
        disp('Invalid response. Please enter "yes" or "no".');
        % Recall the function to restart the loop
        handleTermination();
        return; % Exit the function
    end  
end

function inValue = getInputValue()
    % Prompt the user to enter the value
    number = input('Please enter the value: ', 's');
    % Convert the input to a numeric value
    number = str2double(number);
    % Loop until a valid numeric input is provided
    while isnan(number)
        disp('Invalid input. Please enter a numeric value.');
        % Prompt the user again for a valid input
        number = input('Please enter the value: ', 's');
        % Convert the input to a numeric value
        number = str2double(number);
    end
    inValue = number;
end

function convType = getValidConversionType()
    % Display unit conversion options
    disp('-----Unit Conversion Types-----')
    disp('1  --> from Celsius to Fahrenheit')
    disp('2  --> from Fahrenheit to Celsius')
    disp('3  --> from Centimeter to Inch')
    disp('4  --> from Inch to Centimeter')
    disp('5  --> from Meter to Foot')
    disp('6  --> from Foot to Meter')
    disp('7  --> from Kilometer to Mile')
    disp('8  --> from Mile to Kilometer')
    disp('9  --> from Gram to Ounce')
    disp('10 --> from Ounce to Gram')
    disp('11 --> from Kilogram to Pound')
    disp('12 --> from Pound to Kilogram')
    disp('13 --> from Metric Tonne to Imperial Ton')
    disp('14 --> from Imperial Ton to Metric Tonne')
        
    % Loop until a valid conversion type is provided
    while true
        % Prompt the user to enter the conversion type
        convType = input('Please enter the corresponding conversion type number: ', 's');
        
        % Convert the input to a numeric value
        convType = str2double(convType);
        
        % Check if the input is a valid integer between 1 and 14
        if ~isnan(convType) && isnumeric(convType) && convType >= 1 && convType <= 14 && mod(convType, 1) == 0
            % Exit the loop if the input is valid
            break;
        else
            disp('Invalid input. Please enter a number between 1 and 14 according to the above table.');
        end
    end
end



