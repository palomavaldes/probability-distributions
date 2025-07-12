function bernoulli(app)

x = app.xBernoulliEditField.Value;

p = app.pBernoulli.Value;

app.ExpectedValBernoulli.Value = p;

app.VarienceBernoulli.Value = p * (1-p);

app.pxBernoulli.Value = p^(x) * (1-p)^(1-x);

switch app.PMFButton_4.Value
    case 1
        x1 = 0:1;
        y = binopdf(x1, 1, p);
        bar(app.bernoulliAxes, x1, y, 1)
        xlabel(app.bernoulliAxes, 'Observation')
        ylabel(app.bernoulliAxes, 'Probability')
        title(app.bernoulliAxes, 'Bernoulli PMF')
    case 0
        y = binocdf(-1:2, 1, p);
        stairs(app.bernoulliAxes,-1:2,y)
        xlabel(app.bernoulliAxes,'Observation')
        ylabel(app.bernoulliAxes,'Cumulative Probability')
        title(app.bernoulliAxes, "Bernoulli CDF")
end