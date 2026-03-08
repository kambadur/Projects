model untitled
  Modelica.Blocks.Math.Gain gain(k = 10)  annotation(
    Placement(transformation(origin = {-12, 2}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Sources.Constant const(k = 1)  annotation(
    Placement(transformation(origin = {-84, 2}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Discrete.Sampler sampler(samplePeriod = 0.001)  annotation(
    Placement(transformation(origin = {-50, 2}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Discrete.ZeroOrderHold zeroOrderHold(samplePeriod = 0.001)  annotation(
    Placement(transformation(origin = {18, 2}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Interaction.Show.RealValue realValue annotation(
    Placement(transformation(origin = {52, 2}, extent = {{-10, -10}, {10, 10}})));
equation
  connect(const.y, sampler.u) annotation(
    Line(points = {{-73, 2}, {-63, 2}}, color = {0, 0, 127}));
  connect(sampler.y, gain.u) annotation(
    Line(points = {{-39, 2}, {-25, 2}}, color = {0, 0, 127}));
  connect(gain.y, zeroOrderHold.u) annotation(
    Line(points = {{-1, 2}, {5, 2}}, color = {0, 0, 127}));
  connect(zeroOrderHold.y, realValue.numberPort) annotation(
    Line(points = {{29, 2}, {39, 2}}, color = {0, 0, 127}));
  annotation(
    uses(Modelica(version = "4.1.0")),
  Diagram(coordinateSystem(extent = {{-80, 20}, {40, -20}})),
  version = "");
end untitled;