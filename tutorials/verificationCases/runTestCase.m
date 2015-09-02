%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Copyright 2014 the National Renewable Energy Laboratory and Sandia Corporation
% 
% Licensed under the Apache License, Version 2.0 (the "License");
% you may not use this file except in compliance with the License.
% You may obtain a copy of the License at
% 
%     http://www.apache.org/licenses/LICENSE-2.0
% 
% Unless required by applicable law or agreed to in writing, software
% distributed under the License is distributed on an "AS IS" BASIS,
% WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
% See the License for the specific language governing permissions and
% limitations under the License.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% Run and Load Simulations


cd RegularWaves;
try
    delete('regular.mat', 'regularCIC.mat','regularSS.mat')
end
runLoadSimulations;
cd ..

cd IrregularWaves;
try
    delete('irregularCIC.mat','irregularSS.mat')
end
runLoadSimulations;
cd ..

%% Plot Comparisons
cd RegularWaves;
printPlot;
try
    delete('regular.mat', 'regularCIC.mat','regularSS.mat')
end
cd ..

cd IrregularWaves;
printPlot;
try
    delete('irregularCIC.mat','irregularSS.mat')
end
cd ..

