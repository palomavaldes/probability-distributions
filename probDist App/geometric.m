function geometric(app)

x = app.xGeometricEditField.Value;

p = app.pGeometric.Value;

app.ExpectedValGeometric.Value = 1/p;

app.VarienceGeometric.Value = (1-p)/(p^2);

app.pxGeometric.Value = ((1-p)^(x))*p;

switch app.PMFButton_3.Value
    case 1
        x1 = 0:p*100;
        y = geopdf(x1, p);
        bar(app.geometricAxes, x1, y, 1)
        xlabel(app.geometricAxes, 'Observation')
        ylabel(app.geometricAxes, 'Probability')
        title(app.geometricAxes, 'Geometric PMF')
    case 0
        x1 = 0:p*100;
        y = geocdf(x1, p);
        stairs(app.geometricAxes,x1,y)
        xlabel(app.geometricAxes,'Observation')
        ylabel(app.geometricAxes,'Cumulative Probability')
        title(app.geometricAxes, "Geometric CDF")
end