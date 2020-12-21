%%Problem parameters
Ainit = 3; %Initial acceleration (pedal command) (m/s^2)
Vinit_kmh=90;%Speed in km/h
Dist_init=100;%Distance in meters


%%Parameters for distance membership functions
sigma_dist=2;%in m
mean_dist=35;%in m
mindistL=40;%in m
maxdistp=25;%in m
% figure(1);
% u = linspace(0,100,1000);
% close_maxDist=1./(1+exp(-(-u+maxdistp)));
% plot(u,close_maxDist);
% hold on
% mean = exp(-(u-mean_dist).^2/2/sigma_dist^2);
% plot(u,mean)
% hold on
% far_minDist = 1./(1+exp(-(u-mindistL)));
% plot(u,far_minDist);
% hold off
% legend('maxDist','mean','minDist')

%fact_dist=;

%%Parameters for speed membership functions
sigma_speed_kmh=3;%in km/h
mean_speed_kmh=43;%in km/h
maxspeeds_kmh=40;%in km/h
minspeedf_kmh=52;%in km/h
% figure(2);
% u = linspace(0,90/3.6,1000);
% minspeedfS=1./(1+exp(-(u-minspeedf)));
% plot(u,minspeedfS);
% hold on
% meanS = exp(-(u-mean_speed).^2/2/sigma_speed^2);
% plot(u,meanS)
% hold on
% maxspeedsS = 1./(1+exp(-(-u+maxspeeds)));
% plot(u,maxspeedsS);
% hold on
% legend('minSpeed','mean','maxSpeed')
%fact_speed_kmh=;%in km/h

G_unfuzzy=1000;%Gain for unfuzzyfication



%%
%Computation of speeds in m/s
sigma_speed=sigma_speed_kmh/3.6;
mean_speed=mean_speed_kmh/3.6;
maxspeeds=maxspeeds_kmh/3.6;
minspeedf=minspeedf_kmh/3.6;
%fact_speed=fact_speed_kmh/3.6;
Vinit=Vinit_kmh/3.6;

