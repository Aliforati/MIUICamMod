.class public interface abstract Lmiui/popupcamera/IPopupCameraManager;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/popupcamera/IPopupCameraManager$Stub;,
        Lmiui/popupcamera/IPopupCameraManager$Default;
    }
.end annotation


# virtual methods
.method public abstract calibrationMotor()V
.end method

.method public abstract getMotorStatus()I
.end method

.method public abstract notifyCameraStatus(IILjava/lang/String;)Z
.end method

.method public abstract popupMotor()Z
.end method

.method public abstract takebackMotor()Z
.end method
