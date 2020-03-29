
M=dlmread('dataset leucemia.txt');
for i=1:5000
    for j=1:38
        if M(i,j)<20
            M(i,j)=20;
        end
    end
end
        
     
W=M'*M;%MATRICE DI PESI
s=0;

for i=1:38
  s=0;
  for j=1:38
      s=s+W(i,j);
  end
  D(i,i)=s;
end

L=(D^(-0.5))*(D-W)*(D^(-0.5));%LAPLACIANO
[V,E] =eig(L);

Fieldersvector=(D^(-0.5))*V(:,2);
k=3;
idx = spectralcluster(W,k,'distance','precomputed','LaplacianNormalization','symmetric');
% E' un metodo alternativo per calcolare il vettore che fa da indice di
% clustering al posto del vettore di fielder
campioni=linspace(1,38,38);
dati=[1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 2 2 2 2 2 2 2 2 3 3 3 3 3 3 3 3 3 3 3 ];


gscatter(campioni,Fieldersvector,dati,'','xos');
legend('ALL-B','ALL-T','AML');