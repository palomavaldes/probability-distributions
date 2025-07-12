function uniform(app)

a = app.a.Value;

b = app.b.Value;

x = app.xUniform.Value;

app.ExpectedValUniform.Value = (a+b)/2;
app.VarienceUniform.Value = (b-a)^2/12;
app.fxUniform.Value = 1/(b-a);

if b>=a
    switch app.PDFButton.Value
        case 1
            pd = makedist('Uniform','lower',a,'upper',b); 
            x1 = a-1:.01:b+1;
            pdf1 = pdf(pd,x1);
            plot(app.uniformAxes, x1,pdf1,'r','LineWidth',2); 
            xlabel(app.uniformAxes, 'Observation')
            ylabel(app.uniformAxes, 'Probability Density')
            title(app.uniformAxes, 'Uniform PDF')
        case 0
            pd = makedist('Uniform','lower',a,'upper',b); 
            x1 = a-3:.01:b+3;
            cdf1 = cdf(pd,x1);
            plot(app.uniformAxes, x1,cdf1,'r','LineWidth',2); 
            xlabel(app.uniformAxes,'Observation')
            ylabel(app.uniformAxes,'Cumulative Probability')
            title(app.uniformAxes, "Uniform CDF")
    end
end