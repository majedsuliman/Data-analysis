data {
    int<lower=1> N;
    int<lower=1> M;
    matrix[M,N] x;
    array[N] real y;

}


parameters {
    vector[M] beta;
    real alpha;
    real<lower=0> sigma;



}

model {

    beta  ~ double_exponential(0,1);
    alpha  ~ normal(0,2);
    sigma  ~ normal(0,2);


    y ~ normal(x' * beta + alpha, sigma);

   }