function normal(app)

mu = app.muNormal.Value;

sigma2rd = app.sigmasquaredNormal.Value;

sigma = sqrt(sigma2rd);

x = app.xNormal.Value;

app.ExpectedValNormal.Value = mu;
app.VarienceNormal.Value = sigma2rd;
app.fxNormal.Value = (1/(sigma * sqrt(2 * pi))) * exp(-((x - mu)^2) / (2 * sigma2rd));

switch app.PDFButton_2.Value
    case 1
        x = [mu-10:.1:mu+10];
        y = normpdf(x, mu, sigma);
        plot(app.normalAxes, x, y)
        xlabel(app.normalAxes, 'Observation')
        ylabel(app.normalAxes, 'Probability Density')
        title(app.normalAxes, 'Normal PDF')
    case 0
        x = [mu-10:.1:mu+10];
        y = normcdf(x, mu, sigma);
        plot(app.normalAxes, x, y)
        xlabel(app.bernoulliAxes,'Observation')
        ylabel(app.bernoulliAxes,'Cumulative Probability')
        title(app.bernoulliAxes, "Normal CDF")
end