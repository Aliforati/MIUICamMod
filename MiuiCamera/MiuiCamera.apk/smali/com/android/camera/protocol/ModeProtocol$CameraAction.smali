.class public interface abstract Lcom/android/camera/protocol/ModeProtocol$CameraAction;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/protocol/ModeProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CameraAction"
.end annotation


# static fields
.field public static final TYPE_TAG:I = 0xa1


# virtual methods
.method public abstract isBlockSnap()Z
.end method

.method public abstract isDoingAction()Z
.end method

.method public abstract isRecording()Z
.end method

.method public isRecordingPaused()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onCameraPickerClicked(Landroid/view/View;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public abstract onReviewCancelClicked()V
.end method

.method public abstract onReviewDoneClicked()V
.end method

.method public abstract onShutterButtonClick(I)V
.end method

.method public abstract onShutterButtonFocus(ZI)V
.end method

.method public abstract onShutterButtonLongClick()Z
.end method

.method public abstract onShutterButtonLongClickCancel(Z)V
.end method

.method public abstract onThumbnailClicked(Landroid/view/View;)V
.end method
