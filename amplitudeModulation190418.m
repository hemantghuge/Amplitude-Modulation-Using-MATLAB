%% AMPLITUDE MODULATION USING MATLAB

% 19th April 2018 

% Hemant Goraksh Ghuge
% MATLAB & SIMULINK USER
% Second Year
% Electronics and Telecommunication Engineering
% Government College of Engineering & Research, Avasari Khurd

%%  
clc;    % clear the command window
clear all;  % clear the workspace
close all;  % close the windows

%% modulation index or modulation factor

m=input('Enter modulation index \n');

if (m<0||m>1)
    error('modulation index must be between 0 and 1 for NO DISTORTION IN SIGNAL');
end

%% message signal or modulating signal

Em=input('Enter amplitude of modulating signal \n');   % eg:- Em=8
fm=input('Enter frequency of modulating signal \n');   % eg:- fm=2000
T=1/fm;

t=0:T/1000:10*T; % Total no. of samples for simulation
em=Em*sin(2*pi*fm*t);   % Equation of modulating signal

subplot(3,1,1); % subplot(row,column,position)
plot(t,em);     % plot(x,y)

title('modulating signal');
xlabel('time');
ylabel('amplitude');

%% carrier signal

Ec=Em/m;    % Using modulation index formula, amplitude of carrier signal is calculated

fc=10*fm;   % fc must be greater than fm
ec=Ec*sin(2*pi*fc*t);   % Equation of carrier signal

subplot(3,1,2);
plot(t,ec);

title('carrier signal');
xlabel('time');
ylabel('amplitude');


%% amplitude modulated signal

Eam=Ec*(1+m*sin(2*pi*fm*t)).*sin(2*pi*fc*t);
% Equation of AMPLITUDE MODULATED SIGNAL

subplot(3,1,3);
plot(t,Eam);

title('amplitude modulated signal');
xlabel('time');
ylabel('amplitude');
