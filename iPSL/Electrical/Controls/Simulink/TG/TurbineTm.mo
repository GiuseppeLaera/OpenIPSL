within iPSL.Electrical.Controls.Simulink.TG;
model TurbineTm "Hydraulic turbine model. Mechanical torque as output"

  Modelica.Blocks.Interfaces.RealInput z "Gate openning" annotation(Placement(transformation(extent = {{-95, 2}, {-88, 10}}), iconTransformation(extent = {{-92, 20}, {-78, 34}})));
  iPSL.NonElectrical.Math.ImSum2 Sum(
    a0=0,
    a1=-1,
    a2=1) annotation (Placement(transformation(extent={{-56,-10},{-24,24}})));
  iPSL.NonElectrical.Math.ImSetPoint Hs(V=1)
    annotation (Placement(transformation(extent={{-78,-14},{-58,6}})));
  iPSL.NonElectrical.Math.ImGain Tw(K=1/1) "Water time constant"
    annotation (Placement(transformation(extent={{-34,-10},{10,24}})));
  iPSL.NonElectrical.Continuous.ImIntegrator imIntegrator(K=1, nStartValue=
        init_Turbine_V1)
    annotation (Placement(transformation(extent={{0,-12},{36,26}})));
  iPSL.NonElectrical.Math.ImMult2 Mult(
    a0=0,
    a1=1,
    a2=1) annotation (Placement(transformation(extent={{28,-8},{62,28}})));
  iPSL.NonElectrical.Math.ImDiv2 Div(
    a0=0,
    a1=1,
    a2=1,
    nStartValue=0)
    annotation (Placement(transformation(extent={{56,-14},{90,26}})));
  Modelica.Blocks.Interfaces.RealInput Omega "Rotor speed in p.u" annotation(Placement(transformation(extent = {{-96, -26}, {-90, -18}}), iconTransformation(extent = {{-92, -22}, {-78, -8}})));
  Modelica.Blocks.Interfaces.RealInput Tm "Mechanical Torque Tm as output" annotation(Placement(transformation(extent = {{88, 2}, {94, 10}}), iconTransformation(extent = {{30, -4}, {46, 14}})));
  parameter Real init_Turbine_V1;
  iPSL.NonElectrical.Math.ImDiv3 imDiv3_1(
    a0=0,
    a1=1,
    a2=1,
    nStartValue=0)
    annotation (Placement(transformation(extent={{-90,-12},{-52,32}})));
equation
  connect(Hs.n1, Sum.p2) annotation(Line(points = {{-63.1, -4}, {-54, -4}, {-54, 3.6}, {-48.16, 3.6}}, color = {0, 0, 127}, smooth = Smooth.None));
  connect(Tw.n1, imIntegrator.p1) annotation(Line(points = {{-1.22, 7}, {8.82, 7}}, color = {0, 0, 127}, smooth = Smooth.None));
  connect(Sum.n1, Tw.p1) annotation(Line(points = {{-32.16, 7}, {-23.22, 7}}, color = {0, 0, 127}, smooth = Smooth.None));
  connect(imIntegrator.n1, Mult.p2) annotation(Line(points = {{26.82, 7}, {31.41, 7}, {31.41, 6.04}, {36.33, 6.04}}, color = {0, 0, 127}, smooth = Smooth.None));
  connect(Mult.n1, Div.p1) annotation(Line(points = {{53.33, 10}, {64.33, 10}}, color = {0, 0, 127}, smooth = Smooth.None));
  connect(Omega, Div.p2) annotation(Line(points = {{-93, -22}, {58, -22}, {58, 2}, {64.33, 2}}, color = {0, 0, 127}, smooth = Smooth.None));
  connect(Div.n1, Tm) annotation(Line(points = {{81.33, 6}, {91, 6}}, color = {0, 0, 127}, smooth = Smooth.None));
  connect(z, imDiv3_1.p2) annotation(Line(points = {{-91.5, 6}, {-85.145, 6}, {-85.145, 7.8}, {-78.79, 7.8}}, color = {0, 0, 127}, smooth = Smooth.None));
  connect(imIntegrator.n1, imDiv3_1.p1) annotation(Line(points = {{26.82, 7}, {26.82, 36}, {-90, 36}, {-90, 16.6}, {-78.79, 16.6}}, color = {0, 0, 127}, smooth = Smooth.None));
  connect(imDiv3_1.n1, Sum.p1) annotation(Line(points = {{-59.79, 12.2}, {-53.895, 12.2}, {-53.895, 10.4}, {-48.16, 10.4}}, color = {0, 0, 127}, smooth = Smooth.None));
  connect(imDiv3_1.n1, Mult.p1) annotation(Line(points = {{-59.79, 12.2}, {-59.79, 20}, {-60, 20}, {-60, 28}, {36.33, 28}, {36.33, 13.96}}, color = {0, 0, 127}, smooth = Smooth.None));
  annotation(Icon(coordinateSystem(preserveAspectRatio = false, extent = {{-100, -100}, {100, 100}}), graphics={  Rectangle(extent=  {{-78, 46}, {32, -44}}, lineColor=  {0, 0, 255}), Text(extent=  {{-78, 32}, {-64, 20}}, lineColor=  {0, 0, 255}, textString=  "z"), Text(extent=  {{-76, -8}, {-56, -28}}, lineColor=  {0, 0, 255}, textString=  "omega"), Text(extent=  {{18, 14}, {28, 0}}, lineColor=  {0, 0, 255}, textString=  "Tm"), Text(extent=  {{-52, 18}, {8, -20}}, lineColor=  {0, 0, 255}, textString=  "Hy turbine")}), Diagram(coordinateSystem(preserveAspectRatio = false, extent = {{-100, -100}, {100, 100}}), graphics={  Text(extent=  {{-40, 26}, {-26, 24}}, lineColor=  {0, 0, 127}, textString=  "H (head)"), Text(extent=  {{-34, 40}, {-18, 38}}, lineColor=  {0, 0, 127}, textString=  "q (water flow)"), Text(extent=  {{-96, 0}, {-80, -2}}, lineColor=  {0, 0, 127}, textString=  "z (gate opening)"), Text(extent=  {{-96, -28}, {-80, -30}}, lineColor=  {0, 0, 127}, textString=  "w (rotor speed)"), Text(extent=  {{84, 14}, {110, 12}}, lineColor=  {0, 0, 127}, textString=  "Tm (mech. torque)"), Text(extent=  {{52, 14}, {70, 14}}, lineColor=  {0, 0, 127}, textString=  "Pm (mech. power)"), Text(extent=  {{-26, -2}, {4, -4}}, lineColor=  {0, 0, 127}, textString=  "1/Tw (water time constant)")}),
    Documentation(info="<html>
<p><br><span style=\"font-family: MS Shell Dlg 2;\">&LT;iPSL: iTesla Power System Library&GT;</span></p>
<p><span style=\"font-family: MS Shell Dlg 2;\">Copyright 2015 RTE (France), AIA (Spain), KTH (Sweden) and DTU (Denmark)</span></p>
<ul>
<li><span style=\"font-family: MS Shell Dlg 2;\">RTE: http://www.rte-france.com/ </span></li>
<li><span style=\"font-family: MS Shell Dlg 2;\">AIA: http://www.aia.es/en/energy/</span></li>
<li><span style=\"font-family: MS Shell Dlg 2;\">KTH: https://www.kth.se/en</span></li>
<li><span style=\"font-family: MS Shell Dlg 2;\">DTU:http://www.dtu.dk/english</span></li>
</ul>
<p><span style=\"font-family: MS Shell Dlg 2;\">The authors can be contacted by email: info at itesla-ipsl dot org</span></p>
<p><span style=\"font-family: MS Shell Dlg 2;\">This package is part of the iTesla Power System Library (&QUOT;iPSL&QUOT;) .</span></p>
<p><span style=\"font-family: MS Shell Dlg 2;\">The iPSL is free software: you can redistribute it and/or modify it under the terms of the GNU Lesser General Public License as published by the Free Software Foundation, either version 3 of the License, or (at your option) any later version.</span></p>
<p><span style=\"font-family: MS Shell Dlg 2;\">The iPSL is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU Lesser General Public License for more details.</span></p>
<p><span style=\"font-family: MS Shell Dlg 2;\">You should have received a copy of the GNU Lesser General Public License along with the iPSL. If not, see &LT;http://www.gnu.org/licenses/&GT;.</span></p>
</html>"));
end TurbineTm;
