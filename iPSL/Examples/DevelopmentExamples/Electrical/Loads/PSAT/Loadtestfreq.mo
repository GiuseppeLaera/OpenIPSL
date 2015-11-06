within iPSL.Examples.DevelopmentExamples.Electrical.Loads.PSAT;
model Loadtestfreq
  import PowerSystems = iPSL;

  PowerSystems.Electrical.Branches.PwLine pwLine1(
    X=0.1,
    R=0.01,
    G=0,
    B=0.001/2) annotation (Placement(visible=true, transformation(
        origin={39.8634,-35.6714},
        extent={{-10.0,-10.0},{10.0,10.0}},
        rotation=0)));
  PowerSystems.Electrical.Branches.PwLine pwLine2(
    B=0.001/2,
    G=0,
    R=0.01,
    X=0.1) annotation (Placement(visible=true, transformation(
        origin={39.8634,-15.6714},
        extent={{-10.0,-10.0},{10.0,10.0}},
        rotation=0)));
  PowerSystems.Electrical.Branches.PwLine pwLine3(
    B=0.001/2,
    G=0,
    R=0.01,
    X=0.1) annotation (Placement(visible=true, transformation(
        origin={85.0,-35.0},
        extent={{-10.0,-10.0},{10.0,10.0}},
        rotation=0)));
  PowerSystems.Electrical.Branches.PwLine pwLine4(
    B=0.001/2,
    G=0,
    R=0.01,
    X=0.1) annotation (Placement(visible=true, transformation(
        origin={85.0,-15.0},
        extent={{-10.0,-10.0},{10.0,10.0}},
        rotation=0)));
  Modelica.Blocks.Math.Add3 add31 annotation(Placement(visible = true, transformation(origin = {-45.0, 13.9829}, extent = {{-10.0, -10.0}, {10.0, 10.0}}, rotation = 0)));
  Modelica.Blocks.Math.Add add1 annotation(Placement(visible = true, transformation(origin = {-79.1062, 34.6621}, extent = {{-6.3229, -6.3229}, {6.3229, 6.3229}}, rotation = 0)));
  Modelica.Blocks.Sources.Step step1(height = 0.0005, startTime = 2) annotation(Placement(visible = true, transformation(origin = {-107.7833, 40.985}, extent = {{-5.0, -5.0}, {5.0, 5.0}}, rotation = 0)));
  Modelica.Blocks.Sources.Step step2(height = -0.0005, startTime = 2.1) annotation(Placement(visible = true, transformation(origin = {-107.7833, 25.985}, extent = {{-5.0, -5.0}, {5.0, 5.0}}, rotation = 0)));
  Modelica.Blocks.Sources.Sine sine1(amplitude = 0.001, freqHz = 0.2) annotation(Placement(visible = true, transformation(origin = {-107.7833, 10.4652}, extent = {{-4.4802, -4.4802}, {4.4802, 4.4802}}, rotation = 0)));
  Modelica.Blocks.Math.Add add2(k2 = -1) annotation(Placement(visible = true, transformation(origin = {-79.1062, 14.6621}, extent = {{-6.3229, -6.3229}, {6.3229, 6.3229}}, rotation = 0)));
  Modelica.Blocks.Sources.Sine sine2(amplitude = 0.001, freqHz = 0.2, startTime = 5) annotation(Placement(visible = true, transformation(origin = {-107.3823, -5.5198}, extent = {{-4.4802, -4.4802}, {4.4802, 4.4802}}, rotation = 0)));
  Modelica.Blocks.Sources.Sine sine3(amplitude = 0.001, freqHz = 0.2, startTime = 10) annotation(Placement(visible = true, transformation(origin = {-107.3823, -76.5048}, extent = {{-4.4802, -4.4802}, {4.4802, 4.4802}}, rotation = 0)));
  Modelica.Blocks.Math.Add add3(k2 = -1) annotation(Placement(visible = true, transformation(origin = {-79.1062, -56.3229}, extent = {{-6.3229, -6.3229}, {6.3229, 6.3229}}, rotation = 0)));
  Modelica.Blocks.Sources.Sine sine4(amplitude = 0.001, freqHz = 0.2, startTime = 5) annotation(Placement(visible = true, transformation(origin = {-107.7833, -60.5198}, extent = {{-4.4802, -4.4802}, {4.4802, 4.4802}}, rotation = 0)));
  Modelica.Blocks.Sources.Step step3(height = -0.0005, startTime = 7.1) annotation(Placement(visible = true, transformation(origin = {-107.7833, -45.0}, extent = {{-5.0, -5.0}, {5.0, 5.0}}, rotation = 0)));
  Modelica.Blocks.Sources.Step step4(height = 0.0005, startTime = 7) annotation(Placement(visible = true, transformation(origin = {-107.7833, -30.0}, extent = {{-5.0, -5.0}, {5.0, 5.0}}, rotation = 0)));
  Modelica.Blocks.Math.Add add4 annotation(Placement(visible = true, transformation(origin = {-79.1062, -36.3229}, extent = {{-6.3229, -6.3229}, {6.3229, 6.3229}}, rotation = 0)));
  Modelica.Blocks.Math.Add3 add32 annotation(Placement(visible = true, transformation(origin = {-45.0, -57.0021}, extent = {{-10.0, -10.0}, {10.0, 10.0}}, rotation = 0)));
  PowerSystems.Electrical.Machines.PSAT.ThirdOrder.Order3
    order3_Inputs_Outputs1(
    P_0=0.0800989878477798,
    Q_0=0.0570163388727956,
    Sn=20,
    V_b=400,
    V_0=1,
    angle_0=0,
    Vn=400,
    ra=0.001,
    xd1=0.302,
    M=10,
    D=0,
    xd=1.9,
    Td10=8,
    xq=1.7) annotation (Placement(visible=true, transformation(
        origin={3.3113,-20.7513},
        extent={{-10.0,-10.0},{10.0,10.0}},
        rotation=0)));
  PowerSystems.Electrical.Loads.PSAT.FrequencyDependentLoad frequencyDependentLoad1(alpha_p = 0, beta_p = 1, beta_q = 1, Sn = 10, V_0 = 0.993325452568749, angle_0 = -0.00746932024404292, alpha_q = 0, Tf = 0.1,
    P_0=0.8,
    Q_0=0.6)                                                                                                     annotation(Placement(visible = true, transformation(origin = {123.3697, -45.0}, extent = {{-10.0, -10.0}, {10.0, 10.0}}, rotation = 0)));
  inner PowerSystems.Electrical.SystemBase SysData
    annotation (Placement(transformation(extent={{100,80},{125,100}})));
equation
  connect(pwLine3.n, frequencyDependentLoad1.p) annotation(Line(visible = true, origin = {105.7773, -40.0}, points={{
          -13.7773,5},{3.5924,5},{3.5924,6},{17.5924,6}}));
  connect(pwLine4.n, pwLine3.n) annotation(Line(visible = true, origin = {92.0, -25.0}, points = {{0.0, 10.0}, {0.0, -10.0}}));
  connect(pwLine3.p, pwLine4.p) annotation(Line(visible = true, origin = {78.0, -25.0}, points = {{0.0, -10.0}, {0.0, 10.0}}));
  connect(pwLine1.n, pwLine3.p) annotation(Line(visible = true, origin = {67.2159, -35.3357}, points = {{-20.3525, -0.3357}, {4.7841, -0.3357}, {4.7841, 0.3357}, {10.7841, 0.3357}}));
  connect(pwLine2.n, pwLine4.p) annotation(Line(visible = true, origin = {67.2159, -15.3357}, points = {{-20.3525, -0.3357}, {4.7841, -0.3357}, {4.7841, 0.3357}, {10.7841, 0.3357}}));
  connect(order3_Inputs_Outputs1.pm0, add32.u3) annotation(Line(visible = true, origin = {-19.0108, -51.4898}, points={{14.3221,
          19.7385},{41.1619,19.7385},{41.1619,-23.5102},{-38.8284,-23.5102},{-38.8284,
          -13.5123},{-37.9892,-13.5123}},                                                                                                    color = {0, 0, 127}));
  connect(order3_Inputs_Outputs1.vf0, add31.u3) annotation(Line(visible = true, origin = {-21.3443, -2.9483}, points={{16.6556,
          -6.803},{38.6557,-6.803},{38.6557,-0.1282},{-38.6557,-0.1282},{-38.6557,8.9312},
          {-35.6557,8.9312}},                                                                                                    color = {0, 0, 127}));
  connect(add31.y, order3_Inputs_Outputs1.vf) annotation(Line(visible = true, origin = {-28.1135, -5.371}, points={{-5.8865,
          19.3539},{-2.8865,19.3539},{-2.8865,-9.629},{-3.8826,-9.629},{
          -3.8826,-10.3803},{21.4248,-10.3803}},                                                                                  color = {0, 0, 127}));
  connect(add32.y, order3_Inputs_Outputs1.pm) annotation(Line(visible = true, origin = {-28.216, -45.5845}, points={{-5.784,
          -11.4176},{-2.784,-11.4176},{-2.784,-9.4155},{-4.0877,-9.4155},{-4.0877,19.8332},
          {21.5273,19.8332}},                                                                                                    color = {0, 0, 127}));
  connect(step3.y, add4.u2) annotation(Line(visible = true, origin = {-92.0911, -42.5583}, points = {{-10.1922, -2.4417}, {2.3974, -2.4417}, {2.3974, 2.44166}, {5.39742, 2.44166}}, color = {0, 0, 127}));
  connect(add3.y, add32.u2) annotation(Line(visible = true, origin = {-62.2878, -56.6625}, points = {{-9.86321, 0.3396}, {2.2878, 0.3396}, {2.2878, -0.3396}, {5.2878, -0.3396}}, color = {0, 0, 127}));
  connect(step4.y, add4.u1) annotation(Line(visible = true, origin = {-92.0911, -31.2646}, points = {{-10.1922, 1.2646}, {2.3974, 1.2646}, {2.3974, -1.26456}, {5.39742, -1.26456}}, color = {0, 0, 127}));
  connect(add4.y, add32.u1) annotation(Line(visible = true, origin = {-62.2878, -42.6625}, points = {{-9.86321, 6.3396}, {2.2878, 6.3396}, {2.2878, -6.3396}, {5.2878, -6.3396}}, color = {0, 0, 127}));
  connect(add3.u2, sine3.y) annotation(Line(visible = true, origin = {-95.6692, -69.1821}, points = {{8.97552, 9.06546}, {2.2971, 9.06546}, {2.2971, -5.4041}, {-6.78488, -5.4041}, {-6.78488, -7.3227}}, color = {0, 0, 127}));
  connect(sine4.y, add3.u1) annotation(Line(visible = true, origin = {-93.5606, -55.5207}, points = {{-9.29448, -4.9991}, {-1.4394, -0.9841}, {3.8669, 2.9916}, {6.86692, 2.99154}}, color = {0, 0, 127}));
  connect(sine1.y, add2.u1) annotation(Line(visible = true, origin = {-93.5606, 15.4643}, points = {{-9.29448, -4.9991}, {-1.4394, -0.9841}, {3.8669, 2.9916}, {6.86692, 2.99154}}, color = {0, 0, 127}));
  connect(add2.u2, sine2.y) annotation(Line(visible = true, origin = {-95.6692, 1.8029}, points = {{8.97552, 9.06546}, {2.2971, 9.06546}, {2.2971, -5.4041}, {-6.78488, -5.4041}, {-6.78488, -7.3227}}, color = {0, 0, 127}));
  connect(step2.y, add1.u2) annotation(Line(visible = true, origin = {-92.0911, 28.4267}, points = {{-10.1922, -2.4417}, {2.3974, -2.4417}, {2.3974, 2.44166}, {5.39742, 2.44166}}, color = {0, 0, 127}));
  connect(step1.y, add1.u1) annotation(Line(visible = true, origin = {-92.0911, 39.7204}, points = {{-10.1922, 1.2646}, {2.3974, 1.2646}, {2.3974, -1.26456}, {5.39742, -1.26456}}, color = {0, 0, 127}));
  connect(add1.y, add31.u1) annotation(Line(visible = true, origin = {-62.2878, 28.3225}, points = {{-9.86321, 6.3396}, {2.2878, 6.3396}, {2.2878, -6.3396}, {5.2878, -6.3396}}, color = {0, 0, 127}));
  connect(add2.y, add31.u2) annotation(Line(visible = true, origin = {-62.2878, 14.3225}, points = {{-9.86321, 0.3396}, {2.2878, 0.3396}, {2.2878, -0.3396}, {5.2878, -0.3396}}, color = {0, 0, 127}));
  connect(order3_Inputs_Outputs1.p, pwLine2.p) annotation(Line(visible = true, origin = {25.2254, -18.2865}, points={{
          -10.9141,-2.41516},{1.638,-2.41516},{1.638,2.6151},{7.638,2.6151}}));
  connect(pwLine1.n, pwLine2.n) annotation(Line(visible = true, origin = {46.8634, -25.6714}, points = {{-0.0, -10.0}, {-0.0, 10.0}}));
  connect(pwLine2.p, pwLine1.p) annotation(Line(visible = true, origin = {32.8634, -25.6714}, points = {{0.0, 10.0}, {0.0, -10.0}}));
  annotation(Diagram(coordinateSystem(extent = {{-148.5, -105.0}, {148.5, 105.0}}, preserveAspectRatio = true, initialScale = 0.1, grid = {5, 5}), graphics={  Text(visible=  true, origin=  {39.8634, 3.4703},
            fillPattern=                                                                                                    FillPattern.Solid, extent=  {{-35.0, -5.8583}, {35.0, 5.8583}}, textString=  "SystemSbase=100 MVA", fontName=  "Arial")}),
      Documentation(info="<html>
<p><span style=\"font-family: MS Shell Dlg 2;\">&LT;iPSL: iTesla Power System Library&GT;</span></p>
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
end Loadtestfreq;
