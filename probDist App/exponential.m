function exponential(app)

x = app.xExponential.Value;

lambda = app.lambdaExponential.Value;

app.ExpectedValExponential.Value = 1/lambda;

app.VarienceExponential.Value = 1/lambda^2;

app.fxExponential.Value = lambda * exp(-lambda * x);

switch app.PDFButton_3.Value
    case 1
        x1 = 0:01:lambda*5;
        y = exppdf(x1, lambda);
        plot(app.exponentialAxes, x1, y)
        xlabel(app.exponentialAxes, 'Observation')
        ylabel(app.exponentialAxes, 'Probability Density')
        title(app.exponentialAxes, 'Exponential PDF')
    case 0
        x1 = 0:01:lambda*5;
        y = expcdf(x1, lambda);
        plot(app.exponentialAxes, x1, y)
        xlabel(app.exponentialAxes,'Observation')
        ylabel(app.exponentialAxes,'Cumulative Probability')
        title(app.exponentialAxes, "Exponential CDF")
end