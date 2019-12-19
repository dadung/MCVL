function [dataset_dir, work_dir, sequences, sequence_lengths, ...
    sequence_numbers] = configRobotCar(route)
%CONFIGDATASETS configures necessary parameters for experiment of Oxford
%RobotCar dataset
    %% directories
    dataset_dir = 'dataset'; % dataset directory
    
    work_dir = 'work_dir'; % working directory

    %% sequences information
    switch route
        case 'alternate'
            sequences = {'2014-06-23-15-41-25', '2014-06-26-08-53-56', ...
                '2014-06-26-09-24-58'}; % sequence name
            sequence_lengths = [3306, 3040, 3164]; % length of sequence
        case 'full'
            error('full route is coming soon');
        otherwise
            error('Please provide a valid route for RobotCar');
    end
   
    % check valid
    assert(length(sequences) == length(sequence_lengths));

    sequence_numbers = length(sequences); % number of sequences

end

