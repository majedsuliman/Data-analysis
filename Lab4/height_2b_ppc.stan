data {
    int N;
    real weight[N];
}

generated quantities {
        alpha ~ normal(178,20);
        beta ~ lognormal(0,1);
        sigma ~ exponential(0.067);
        heights ~ normal(mu,sigm);
        real heights[N];
        for (i in 1:N){
            height[i] = normal_rng(weight[i]*beta+alpha,sigma);
    }
}