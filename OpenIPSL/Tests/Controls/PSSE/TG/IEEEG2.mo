within OpenIPSL.Tests.Controls.PSSE.TG;
<<<<<<< Updated upstream
model IEEEG2 "SMIB system to test functionality of IEEEG2 model"
=======
model IEEEG2 "Simple Machine Infinite Bus with Machine and Governor"
//  import IEEEG2;
>>>>>>> Stashed changes
  extends OpenIPSL.Tests.BaseClasses.SMIB;
  OpenIPSL.Electrical.Machines.PSSE.GENSAL gENSAL(
    P_0=40000000,
    Q_0=5415812,
    angle_0=0.070619983433093,
    M_b=115000000,
    Tpd0=4.1,
    Tppd0=0.05,
    Tppq0=0.06,
    H=1.4631,
    D=0,
    Xd=0.852,
    Xq=0.61,
    Xpd=0.395,
    Xppd=0.293,
    Xppq=0.293,
    Xl=0.237,
    S10=0.11,
    S12=0.48)
    annotation (Placement(transformation(extent={{-88,-16},{-58,16}})));
<<<<<<< Updated upstream
  Electrical.Controls.PSSE.TG.IEEEG2 iEEEG2(
    T_4=1,
    P_MAX=1.19,
    P_MIN=0) annotation (Placement(transformation(extent={{-86,32},{-48,66}})));
equation
  connect(gENSAL.p, GEN1.p)
    annotation (Line(points={{-58,0},{-30,0}}, color={0,0,255}));
  connect(gENSAL.SPEED, iEEEG2.SPEED) annotation (Line(points={{-56.5,11.2},{
          -44,11.2},{-44,20},{-98,20},{-98,59.2},{-82.2,59.2}},
        color={0,0,127}));
  connect(gENSAL.PMECH0, iEEEG2.PMECH0) annotation (Line(points={{-56.5,8},{-40,
          8},{-40,22},{-90,22},{-90,38.8},{-82.2,38.8}},                color={
          0,0,127}));
  connect(iEEEG2.PMECH, gENSAL.PMECH) annotation (Line(points={{-46.1,49},{-36,
          49},{-36,28},{-96,28},{-96,9.6},{-91,9.6}},                color={0,0,
=======
  Electrical.Controls.PSSE.TG.IEEEG2
         iEEEG2_1(
    T_4=1,
    P_MAX=1.19,
    P_MIN=0) annotation (Placement(transformation(extent={{-96,32},{-58,66}})));
equation
  connect(gENSAL.p, GEN1.p)
    annotation (Line(points={{-58,0},{-30,0}}, color={0,0,255}));
  connect(gENSAL.SPEED, iEEEG2_1.SPEED) annotation (Line(points={{-56.5,11.2},{
          -52,11.2},{-52,20},{-106,20},{-106,59.2},{-92.2,59.2}},
        color={0,0,127}));
  connect(gENSAL.PMECH0, iEEEG2_1.PMECH0) annotation (Line(points={{-56.5,8},{
          -50,8},{-50,22},{-100,22},{-100,38.8},{-92.2,38.8}},          color={
          0,0,127}));
  connect(iEEEG2_1.PMECH, gENSAL.PMECH) annotation (Line(points={{-56.1,49},{-52,
          49},{-52,26},{-96,26},{-96,9.6},{-91,9.6}},                color={0,0,
>>>>>>> Stashed changes
          127}));
  connect(gENSAL.EFD0, gENSAL.EFD) annotation (Line(points={{-56.5,-8},{-50,-8},
          {-50,-20},{-98,-20},{-98,-9.6},{-91,-9.6}},
                                                  color={0,0,127}));
<<<<<<< Updated upstream
  annotation (Icon(coordinateSystem(preserveAspectRatio=false, extent={{-100,
            -100},{100,100}})),                                  Diagram(
        coordinateSystem(preserveAspectRatio=false, extent={{-100,-100},{100,
=======
  annotation (Icon(coordinateSystem(preserveAspectRatio=false, extent={{-120,
            -100},{120,100}})),                                  Diagram(
        coordinateSystem(preserveAspectRatio=false, extent={{-120,-100},{120,
>>>>>>> Stashed changes
            100}})),
    experiment(
      StopTime=10,
      Interval=0.0001,
      Tolerance=1e-06,
<<<<<<< Updated upstream
      __Dymola_Algorithm="Dassl"),
    uses(OpenIPSL(version="3.1.0-dev")));
=======
      __Dymola_Algorithm="Dassl"));
>>>>>>> Stashed changes
end IEEEG2;
