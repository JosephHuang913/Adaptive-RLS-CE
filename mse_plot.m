close; 
clear;
set(gca, 'fontsize', 12)

load MSE_RLS_CE.log;
semilogy(MSE_RLS_CE(:,1), MSE_RLS_CE(:,2), '-ro',  'LineWidth', 1.6, 'MarkerSIze', 8);
hold on;
grid on;

title('MSE Performance of Adaptive RLS CE with 4-QAM in Multipath ISI Channel');
xlabel('E_b/N_0 (dB)');
ylabel('MSE');
axis([0 30 1e-6 1]);

legend('4-QAM, 3-path Fading Channel', 1);
%print -djpeg100 MSE_CE_RLS_4QAM.jpg;
