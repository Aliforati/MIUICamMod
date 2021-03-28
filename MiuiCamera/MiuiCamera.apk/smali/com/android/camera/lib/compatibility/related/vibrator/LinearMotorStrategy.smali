.class public Lcom/android/camera/lib/compatibility/related/vibrator/LinearMotorStrategy;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/camera/lib/compatibility/related/vibrator/IViberatorStrategy;


# static fields
.field public static final TAG:Ljava/lang/String; = "LinearMotorStrategy"


# instance fields
.field public final mHapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lmiui/util/HapticFeedbackUtil;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lmiui/util/HapticFeedbackUtil;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/android/camera/lib/compatibility/related/vibrator/LinearMotorStrategy;->mHapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;

    return-void
.end method


# virtual methods
.method public performBokehAdjust()V
    .locals 3

    const-string v0, "LinearMotorStrategy"

    const-string v1, "performBokehAdjust: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/lib/compatibility/related/vibrator/LinearMotorStrategy;->mHapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;

    const/4 v1, 0x0

    const-string v2, "mesh_light"

    invoke-virtual {v0, v2, v1, v1}, Lmiui/util/HapticFeedbackUtil;->performHapticFeedback(Ljava/lang/String;ZI)Z

    return-void
.end method

.method public performBurstCapture()V
    .locals 3

    const-string v0, "LinearMotorStrategy"

    const-string v1, "performBurstCapture: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/lib/compatibility/related/vibrator/LinearMotorStrategy;->mHapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;

    const/4 v1, 0x0

    const-string v2, "flick_light"

    invoke-virtual {v0, v2, v1, v1}, Lmiui/util/HapticFeedbackUtil;->performHapticFeedback(Ljava/lang/String;ZI)Z

    return-void
.end method

.method public performEVChange()V
    .locals 2

    const-string v0, "LinearMotorStrategy"

    const-string v1, "performEVChange: ignore..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public performFocusValueLargeChangedInManual()V
    .locals 3

    const-string v0, "LinearMotorStrategy"

    const-string v1, "performFocusValueLargeChangedInManual: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/lib/compatibility/related/vibrator/LinearMotorStrategy;->mHapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;

    const/4 v1, 0x0

    const-string v2, "mesh_normal"

    invoke-virtual {v0, v2, v1, v1}, Lmiui/util/HapticFeedbackUtil;->performHapticFeedback(Ljava/lang/String;ZI)Z

    return-void
.end method

.method public performFocusValueLightChangedInManual()V
    .locals 3

    const-string v0, "LinearMotorStrategy"

    const-string v1, "performFocusValueLightChangedInManual: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/lib/compatibility/related/vibrator/LinearMotorStrategy;->mHapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;

    const/4 v1, 0x0

    const-string v2, "mesh_light"

    invoke-virtual {v0, v2, v1, v1}, Lmiui/util/HapticFeedbackUtil;->performHapticFeedback(Ljava/lang/String;ZI)Z

    return-void
.end method

.method public performModeSwitch()V
    .locals 3

    const-string v0, "LinearMotorStrategy"

    const-string v1, "performModeSwitch: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/lib/compatibility/related/vibrator/LinearMotorStrategy;->mHapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;

    const-string v1, "mesh_normal"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lmiui/util/HapticFeedbackUtil;->performHapticFeedback(Ljava/lang/String;Z)Z

    return-void
.end method

.method public performSelectZoomLight()V
    .locals 3

    const-string v0, "LinearMotorStrategy"

    const-string v1, "performSelectZoomLight: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/lib/compatibility/related/vibrator/LinearMotorStrategy;->mHapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;

    const/4 v1, 0x0

    const-string v2, "mesh_light"

    invoke-virtual {v0, v2, v1, v1}, Lmiui/util/HapticFeedbackUtil;->performHapticFeedback(Ljava/lang/String;ZI)Z

    return-void
.end method

.method public performSelectZoomNormal()V
    .locals 3

    const-string v0, "LinearMotorStrategy"

    const-string v1, "performSelectZoomNormal: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/lib/compatibility/related/vibrator/LinearMotorStrategy;->mHapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;

    const/4 v1, 0x0

    const-string v2, "mesh_normal"

    invoke-virtual {v0, v2, v1, v1}, Lmiui/util/HapticFeedbackUtil;->performHapticFeedback(Ljava/lang/String;ZI)Z

    return-void
.end method

.method public performSlideScaleNormal()V
    .locals 3

    const-string v0, "LinearMotorStrategy"

    const-string v1, "performSlideScaleNormal: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/lib/compatibility/related/vibrator/LinearMotorStrategy;->mHapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;

    const/4 v1, 0x0

    const-string v2, "mesh_normal"

    invoke-virtual {v0, v2, v1, v1}, Lmiui/util/HapticFeedbackUtil;->performHapticFeedback(Ljava/lang/String;ZI)Z

    return-void
.end method

.method public performSnapClick()V
    .locals 4

    const-string v0, "LinearMotorStrategy"

    const-string v1, "performSnapClick: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/lib/compatibility/related/vibrator/LinearMotorStrategy;->mHapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;

    const-string v1, "flick_light"

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Lmiui/util/HapticFeedbackUtil;->performHapticFeedback(Ljava/lang/String;ZI)Z

    return-void
.end method

.method public performSwitchCamera()V
    .locals 3

    const-string v0, "LinearMotorStrategy"

    const-string v1, "performSwitchCamera: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/lib/compatibility/related/vibrator/LinearMotorStrategy;->mHapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;

    const/4 v1, 0x0

    const-string v2, "flick_light"

    invoke-virtual {v0, v2, v1, v1}, Lmiui/util/HapticFeedbackUtil;->performHapticFeedback(Ljava/lang/String;ZI)Z

    return-void
.end method
