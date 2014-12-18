<?xml version="1.0" ?>
<MiddleVR>
    <Kernel LogLevel="2" LogInSimulationFolder="0" EnableCrashHandler="0" Version="1.4.2.f1" />
    <DeviceManager>
        <Driver Type="vrDriverDirectInput" />
        <Driver Type="vrDriverKinect" />
        <Driver Type="vrDriverOculusRift" />
        <Wand Name="Wand0" Driver="0" Axis="0" HorizontalAxis="0" HorizontalAxisScale="1" VerticalAxis="1" VerticalAxisScale="1" Buttons="0" Button0="0" Button1="1" Button2="2" Button3="3" Button4="4" Button5="5" />
    </DeviceManager>
    <DisplayManager Fullscreen="0" WindowBorders="0" ShowMouseCursor="0" VSync="0" AntiAliasing="0" ForceHideTaskbar="0" SaveRenderTarget="0">
        <Node3D Name="CenterNode" Parent="VRRootNode" Tracker="0" IsFiltered="0" Filter="0" PositionLocal="0.000000,2.200000,0.750000" OrientationLocal="0.000000,0.000000,0.000000,1.000000" />
        <Node3D Name="Kinect0.RootNode" Parent="CenterNode" Tracker="0" IsFiltered="0" Filter="0" PositionLocal="0.000000,0.000000,0.000000" OrientationLocal="0.000000,0.000000,0.000000,1.000000" />
        <Node3D Name="Kinect0.User0.HipCenter_Node" Parent="Kinect0.RootNode" Tracker="Kinect0.User0.HipCenter" IsFiltered="0" Filter="0" UseTrackerX="1" UseTrackerY="1" UseTrackerZ="1" UseTrackerYaw="1" UseTrackerPitch="1" UseTrackerRoll="1" />
        <Node3D Name="Kinect0.User0.Spine_Node" Parent="Kinect0.RootNode" Tracker="Kinect0.User0.Spine" IsFiltered="0" Filter="0" UseTrackerX="1" UseTrackerY="1" UseTrackerZ="1" UseTrackerYaw="1" UseTrackerPitch="1" UseTrackerRoll="1" />
        <Node3D Name="Kinect0.User0.ShoulderCenter_Node" Parent="Kinect0.RootNode" Tracker="Kinect0.User0.ShoulderCenter" IsFiltered="0" Filter="0" UseTrackerX="1" UseTrackerY="1" UseTrackerZ="1" UseTrackerYaw="1" UseTrackerPitch="1" UseTrackerRoll="1" />
        <Node3D Name="Kinect0.User0.Head_Node" Parent="Kinect0.RootNode" Tracker="Kinect0.User0.Head" IsFiltered="0" Filter="0" UseTrackerX="1" UseTrackerY="1" UseTrackerZ="1" UseTrackerYaw="1" UseTrackerPitch="1" UseTrackerRoll="1" />
        <Node3D Name="HeadNode" Tag="Head" Parent="Kinect0.User0.Head_Node" Tracker="0" IsFiltered="0" Filter="0" PositionLocal="0.000000,0.000000,0.000000" OrientationLocal="0.000000,0.000000,0.000000,1.000000" />
        <Camera Name="Camera0" Parent="HeadNode" Tracker="0" IsFiltered="0" Filter="0" PositionLocal="0.000000,0.000000,0.000000" OrientationLocal="0.000000,0.000000,0.000000,1.000000" VerticalFOV="60" Near="0.1" Far="1000" Screen="0" ScreenDistance="1" UseViewportAspectRatio="1" AspectRatio="1.33333" />
        <CameraStereo Name="CameraStereo0" Parent="HeadNode" Tracker="OculusRift.Tracker" IsFiltered="0" Filter="0" UseTrackerX="1" UseTrackerY="1" UseTrackerZ="1" UseTrackerYaw="1" UseTrackerPitch="1" UseTrackerRoll="1" VerticalFOV="60" Near="0.1" Far="1000" Screen="0" ScreenDistance="1" UseViewportAspectRatio="1" AspectRatio="1.33333" InterEyeDistance="0.065" LinkConvergence="0" />
        <Node3D Name="Kinect0.User0.Left_Shoulder_Node" Parent="Kinect0.RootNode" Tracker="Kinect0.User0.Left_Shoulder" IsFiltered="0" Filter="0" UseTrackerX="1" UseTrackerY="1" UseTrackerZ="1" UseTrackerYaw="1" UseTrackerPitch="1" UseTrackerRoll="1" />
        <Node3D Name="Kinect0.User0.Left_Elbow_Node" Parent="Kinect0.RootNode" Tracker="Kinect0.User0.Left_Elbow" IsFiltered="0" Filter="0" UseTrackerX="1" UseTrackerY="1" UseTrackerZ="1" UseTrackerYaw="1" UseTrackerPitch="1" UseTrackerRoll="1" />
        <Node3D Name="Kinect0.User0.Left_Wrist_Node" Parent="Kinect0.RootNode" Tracker="Kinect0.User0.Left_Wrist" IsFiltered="0" Filter="0" UseTrackerX="1" UseTrackerY="1" UseTrackerZ="1" UseTrackerYaw="1" UseTrackerPitch="1" UseTrackerRoll="1" />
        <Node3D Name="Kinect0.User0.Left_Hand_Node" Parent="Kinect0.RootNode" Tracker="Kinect0.User0.Left_Hand" IsFiltered="0" Filter="0" UseTrackerX="1" UseTrackerY="1" UseTrackerZ="1" UseTrackerYaw="1" UseTrackerPitch="1" UseTrackerRoll="1" />
        <Node3D Name="Kinect0.User0.Right_Shoulder_Node" Parent="Kinect0.RootNode" Tracker="Kinect0.User0.Right_Shoulder" IsFiltered="0" Filter="0" UseTrackerX="1" UseTrackerY="1" UseTrackerZ="1" UseTrackerYaw="1" UseTrackerPitch="1" UseTrackerRoll="1" />
        <Node3D Name="Kinect0.User0.Right_Elbow_Node" Parent="Kinect0.RootNode" Tracker="Kinect0.User0.Right_Elbow" IsFiltered="0" Filter="0" UseTrackerX="1" UseTrackerY="1" UseTrackerZ="1" UseTrackerYaw="1" UseTrackerPitch="1" UseTrackerRoll="1" />
        <Node3D Name="ElbowNode" Parent="Kinect0.User0.Right_Elbow_Node" Tracker="0" IsFiltered="0" Filter="0" PositionLocal="0.000000,0.000000,0.000000" OrientationLocal="0.000000,0.000000,0.000000,1.000000" />
        <Node3D Name="Kinect0.User0.Right_Wrist_Node" Parent="Kinect0.RootNode" Tracker="Kinect0.User0.Right_Wrist" IsFiltered="0" Filter="0" UseTrackerX="1" UseTrackerY="1" UseTrackerZ="1" UseTrackerYaw="1" UseTrackerPitch="1" UseTrackerRoll="1" />
        <Node3D Name="WristNode" Parent="Kinect0.User0.Right_Wrist_Node" Tracker="0" IsFiltered="0" Filter="0" PositionLocal="0.000000,0.000000,0.000000" OrientationLocal="0.000000,0.000000,0.000000,1.000000" />
        <Node3D Name="Kinect0.User0.Right_Hand_Node" Parent="Kinect0.RootNode" Tracker="Kinect0.User0.Right_Hand" IsFiltered="0" Filter="0" UseTrackerX="1" UseTrackerY="1" UseTrackerZ="1" UseTrackerYaw="1" UseTrackerPitch="1" UseTrackerRoll="1" />
        <Node3D Name="HandNode" Tag="Hand" Parent="Kinect0.User0.Right_Hand_Node" Tracker="0" IsFiltered="0" Filter="0" PositionLocal="0.000000,0.000000,0.000000" OrientationLocal="0.000000,0.000000,0.000000,1.000000" />
        <Node3D Name="Kinect0.User0.Left_Hip_Node" Parent="Kinect0.RootNode" Tracker="Kinect0.User0.Left_Hip" IsFiltered="0" Filter="0" UseTrackerX="1" UseTrackerY="1" UseTrackerZ="1" UseTrackerYaw="1" UseTrackerPitch="1" UseTrackerRoll="1" />
        <Node3D Name="Kinect0.User0.Left_Knee_Node" Parent="Kinect0.RootNode" Tracker="Kinect0.User0.Left_Knee" IsFiltered="0" Filter="0" UseTrackerX="1" UseTrackerY="1" UseTrackerZ="1" UseTrackerYaw="1" UseTrackerPitch="1" UseTrackerRoll="1" />
        <Node3D Name="Kinect0.User0.Left_Ankle_Node" Parent="Kinect0.RootNode" Tracker="Kinect0.User0.Left_Ankle" IsFiltered="0" Filter="0" UseTrackerX="1" UseTrackerY="1" UseTrackerZ="1" UseTrackerYaw="1" UseTrackerPitch="1" UseTrackerRoll="1" />
        <Node3D Name="Kinect0.User0.Left_Foot_Node" Parent="Kinect0.RootNode" Tracker="Kinect0.User0.Left_Foot" IsFiltered="0" Filter="0" UseTrackerX="1" UseTrackerY="1" UseTrackerZ="1" UseTrackerYaw="1" UseTrackerPitch="1" UseTrackerRoll="1" />
        <Node3D Name="Kinect0.User0.Right_Hip_Node" Parent="Kinect0.RootNode" Tracker="Kinect0.User0.Right_Hip" IsFiltered="0" Filter="0" UseTrackerX="1" UseTrackerY="1" UseTrackerZ="1" UseTrackerYaw="1" UseTrackerPitch="1" UseTrackerRoll="1" />
        <Node3D Name="Kinect0.User0.Right_Knee_Node" Parent="Kinect0.RootNode" Tracker="Kinect0.User0.Right_Knee" IsFiltered="0" Filter="0" UseTrackerX="1" UseTrackerY="1" UseTrackerZ="1" UseTrackerYaw="1" UseTrackerPitch="1" UseTrackerRoll="1" />
        <Node3D Name="Kinect0.User0.Right_Ankle_Node" Parent="Kinect0.RootNode" Tracker="Kinect0.User0.Right_Ankle" IsFiltered="0" Filter="0" UseTrackerX="1" UseTrackerY="1" UseTrackerZ="1" UseTrackerYaw="1" UseTrackerPitch="1" UseTrackerRoll="1" />
        <Node3D Name="Kinect0.User0.Right_Foot_Node" Parent="Kinect0.RootNode" Tracker="Kinect0.User0.Right_Foot" IsFiltered="0" Filter="0" UseTrackerX="1" UseTrackerY="1" UseTrackerZ="1" UseTrackerYaw="1" UseTrackerPitch="1" UseTrackerRoll="1" />
        <Viewport Name="Viewport0" Left="1920" Top="0" Width="1280" Height="800" Camera="CameraStereo0" Stereo="1" StereoMode="3" CompressSideBySide="0" StereoInvertEyes="0" OculusRiftWarping="1" UseHomography="0" />
    </DisplayManager>
    <ClusterManager NVidiaSwapLock="0" DisableVSyncOnServer="1" ForceOpenGLConversion="0" BigBarrier="0" SimulateClusterLag="0" />
</MiddleVR>
