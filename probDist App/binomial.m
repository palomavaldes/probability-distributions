function binomial(app)

p = app.pBinomial.Value;
n = app.nBinomial.Value;

% expected value
app.ExpectedValBinomial.Value = n*p;

% varience
app.VarienceBinomial.Value = (n * p)*(1 - p);

% probability
x = app.xBinomialEditField.Value;

app.pxBinomial.Value = nchoosek(n,x)* p^(x)*(1-p)^(n-x);

%pmf and cdf graph



switch app.PMFButton_2.Value
    case 1
        x1 = 0:n;
        y = binopdf(x1, n, p);
        bar(app.binomialAxes, x1, y, 1)
        xlabel(app.binomialAxes, 'Observation')
        ylabel(app.binomialAxes, 'Probability')
        title(app.binomialAxes, 'Binomial PMF')
    case 0
        x1 = 0:n;
        y = binocdf(x1, n, p);
        stairs(app.binomialAxes,x1,y)
        xlabel(app.binomialAxes,'Observation')
        ylabel(app.binomialAxes,'Cumulative Probability')
        title(app.binomialAxes, "Binomial CDF")
end
