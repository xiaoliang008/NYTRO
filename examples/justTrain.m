load breastcancer

% Customize configuration
config = config_set('filter.fixedIterations' , 100 , ...  % Set a fixed number of iterations (no cross validation is performed in this case)
                    'kernel.m' , 200 , ...                % Modify the subsampling level (default m = 100)
                    'kernel.kernelParameters' , 0.9 );    % Change gaussian kernel parameter (sigma)

% Perform default cross validation
[ training_output ] = nytro_train( Xtr , Ytr , config);

% Perform predictions on the test set and evaluate results
[ prediction_output ] = nytro_test( Xtr , Xte , Yte , training_output);