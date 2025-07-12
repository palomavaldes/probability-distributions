function poisson(app)

% expected value
app.ExpectedVal.Value = app.lambda;

% varience
app.Varience.Value = app.lambda;

% probability
x = app.xEditField.Value;

app.px.Value = (exp(-app.lambda) * app.lambda^(x))/ (factorial(x));

% pmf and cdf

switch app.PMFButton.Value
    case 1
        x_vals = 0:(app.lambda+20);
        y_vals =  poisspdf(x_vals, app.lambda);
        bar(app.poissonAxes, x_vals, y_vals, 1)
        xlabel(app.poissonAxes, 'Observation')
        ylabel(app.poissonAxes, 'Probability')
        title(app.poissonAxes, "Poisson PMF")
    case 0
        x_vals = 0:(app.lambda+20);
        y_vals = poisscdf(x_vals,app.lambda);
        stairs(app.poissonAxes,x_vals,y_vals)
        xlabel(app.poissonAxes,'Observation')
        ylabel(app.poissonAxes,'Cumulative Probability')
        title(app.poissonAxes, "Poisson CDF")
end