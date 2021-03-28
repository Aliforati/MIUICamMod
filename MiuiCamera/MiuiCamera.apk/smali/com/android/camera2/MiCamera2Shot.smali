.class public abstract Lcom/android/camera2/MiCamera2Shot;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final DEFAULT_TASK_DATA_TIMESTAMP:J = 0x0L

.field public static final SHUTTER_FRAMENUM_CAPTUREING:I = 0x1

.field public static final SHUTTER_FRAMENUM_NONE:I = 0x0

.field public static final SHUTTER_FRAMENUM_SHUTTERED:I = 0x2


# instance fields
.field public mCameraHandler:Landroid/os/Handler;

.field public mDeparted:Z

.field public mMagneticDetectedCallback:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/camera2/Camera2Proxy$MagneticDetectedCallback;",
            ">;"
        }
    .end annotation
.end field

.field public mMiCamera:Lcom/android/camera2/MiCamera2;

.field public mParallelCallback:Lcom/xiaomi/camera/core/ParallelCallback;

.field public mPictureCallback:Lcom/android/camera2/Camera2Proxy$PictureCallback;

.field public mPreviewThumbnailHash:I

.field public mQuickShotAnimation:Z

.field public mShotBoostParams:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public mShutterFrameNum:I


# direct methods
.method public constructor <init>(Lcom/android/camera2/MiCamera2;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera2/MiCamera2Shot;->mPreviewThumbnailHash:I

    iput-object p1, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {p1}, Lcom/android/camera2/MiCamera2;->getCameraHandler()Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera2/MiCamera2Shot;->mCameraHandler:Landroid/os/Handler;

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/camera2/MiCamera2Shot;->mShutterFrameNum:I

    return-void
.end method


# virtual methods
.method public abstract generateCaptureCallback()Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
.end method

.method public final generateParallelTaskData(J)Lcom/xiaomi/camera/core/ParallelTaskData;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/camera2/MiCamera2Shot;->generateParallelTaskData(JZ)Lcom/xiaomi/camera/core/ParallelTaskData;

    move-result-object p1

    return-object p1
.end method

.method public final generateParallelTaskData(JZ)Lcom/xiaomi/camera/core/ParallelTaskData;
    .locals 10

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2Shot;->getPictureCallback()Lcom/android/camera2/Camera2Proxy$PictureCallback;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "null callback is not allowed!"

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance v9, Lcom/xiaomi/camera/core/ParallelTaskData;

    iget-object v1, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v1}, Lcom/android/camera2/Camera2Proxy;->getId()I

    move-result v2

    iget-object v1, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v1}, Lcom/android/camera2/MiCamera2;->getCameraConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera2/CameraConfigs;->getShotType()I

    move-result v5

    iget-object v1, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v1}, Lcom/android/camera2/MiCamera2;->getCameraConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera2/CameraConfigs;->getShotPath()Ljava/lang/String;

    move-result-object v6

    iget-object v1, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v1}, Lcom/android/camera2/MiCamera2;->getCameraConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera2/CameraConfigs;->getCaptureTime()J

    move-result-wide v7

    move-object v1, v9

    move-wide v3, p1

    invoke-direct/range {v1 .. v8}, Lcom/xiaomi/camera/core/ParallelTaskData;-><init>(IJILjava/lang/String;J)V

    iget-object p1, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {p1}, Lcom/android/camera2/MiCamera2;->getPictureSize()Lcom/android/camera/CameraSize;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2Shot;->isQuickShotAnimation()Z

    move-result v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v4, p3

    invoke-interface/range {v0 .. v6}, Lcom/android/camera2/Camera2Proxy$PictureCallback;->onCaptureStart(Lcom/xiaomi/camera/core/ParallelTaskData;Lcom/android/camera/CameraSize;ZZZZ)Lcom/xiaomi/camera/core/ParallelTaskData;

    move-result-object p1

    return-object p1
.end method

.method public abstract generateRequestBuilder()Landroid/hardware/camera2/CaptureRequest$Builder;
.end method

.method public getMagneticDetectedCallback()Lcom/android/camera2/Camera2Proxy$MagneticDetectedCallback;
    .locals 1

    iget-object v0, p0, Lcom/android/camera2/MiCamera2Shot;->mMagneticDetectedCallback:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera2/Camera2Proxy$MagneticDetectedCallback;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getParallelCallback()Lcom/xiaomi/camera/core/ParallelCallback;
    .locals 1

    iget-object v0, p0, Lcom/android/camera2/MiCamera2Shot;->mParallelCallback:Lcom/xiaomi/camera/core/ParallelCallback;

    return-object v0
.end method

.method public getPictureCallback()Lcom/android/camera2/Camera2Proxy$PictureCallback;
    .locals 1

    iget-object v0, p0, Lcom/android/camera2/MiCamera2Shot;->mPictureCallback:Lcom/android/camera2/Camera2Proxy$PictureCallback;

    return-object v0
.end method

.method public getShotBoostParams()Ljava/util/function/Consumer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/camera2/MiCamera2Shot;->mShotBoostParams:Ljava/util/function/Consumer;

    return-object v0
.end method

.method public abstract getTag()Ljava/lang/String;
.end method

.method public isInQcfaMode()Z
    .locals 2

    iget-object v0, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v0}, Lcom/android/camera2/MiCamera2;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/CameraCapabilities;->isSupportedQcfa()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v0}, Lcom/android/camera2/MiCamera2;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/CameraCapabilities;->getOperatingMode()I

    move-result v0

    const v1, 0x8007

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v0}, Lcom/android/camera2/MiCamera2;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/CameraCapabilities;->getOperatingMode()I

    move-result v0

    const v1, 0x80f5

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v0}, Lcom/android/camera2/MiCamera2;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/CameraCapabilities;->getOperatingMode()I

    move-result v0

    const v1, 0x80f3

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isQuickShotAnimation()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera2/MiCamera2Shot;->mQuickShotAnimation:Z

    return v0
.end method

.method public isShutterReturned()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public makeClobber()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera2/MiCamera2Shot;->mDeparted:Z

    return-void
.end method

.method public abstract notifyResultData(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public onCaptureShutter()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2Shot;->getPictureCallback()Lcom/android/camera2/Camera2Proxy$PictureCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2, v2, v2}, Lcom/android/camera2/Camera2Proxy$PictureCallback;->onCaptureShutter(ZZZZ)V

    :cond_0
    return-void
.end method

.method public abstract onImageReceived(Landroid/media/Image;I)V
.end method

.method public onPreviewComing()Z
    .locals 4

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2Shot;->isQuickShotAnimation()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget v0, p0, Lcom/android/camera2/MiCamera2Shot;->mShutterFrameNum:I

    if-nez v0, :cond_1

    return v1

    :cond_1
    const/4 v2, 0x1

    const/4 v3, 0x2

    if-lt v0, v3, :cond_2

    return v2

    :cond_2
    add-int/2addr v0, v2

    iput v0, p0, Lcom/android/camera2/MiCamera2Shot;->mShutterFrameNum:I

    if-eq v0, v3, :cond_3

    return v1

    :cond_3
    iput v3, p0, Lcom/android/camera2/MiCamera2Shot;->mShutterFrameNum:I

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2Shot;->onCaptureShutter()V

    return v2
.end method

.method public final onPreviewThumbnailReceived(Lcom/android/camera/Thumbnail;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    iput p1, p0, Lcom/android/camera2/MiCamera2Shot;->mPreviewThumbnailHash:I

    return-void
.end method

.method public abstract prepare()V
.end method

.method public setMagneticDetectedCallback(Lcom/android/camera2/Camera2Proxy$MagneticDetectedCallback;)V
    .locals 1

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/camera2/MiCamera2Shot;->mMagneticDetectedCallback:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public setParallelCallback(Lcom/xiaomi/camera/core/ParallelCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera2/MiCamera2Shot;->mParallelCallback:Lcom/xiaomi/camera/core/ParallelCallback;

    return-void
.end method

.method public setPictureCallback(Lcom/android/camera2/Camera2Proxy$PictureCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera2/MiCamera2Shot;->mPictureCallback:Lcom/android/camera2/Camera2Proxy$PictureCallback;

    return-void
.end method

.method public setQuickShotAnimation(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera2/MiCamera2Shot;->mQuickShotAnimation:Z

    return-void
.end method

.method public abstract startSessionCapture()V
.end method

.method public final startShot()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2Shot;->getTag()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    const-string/jumbo v2, "startShot"

    invoke-static {v1, v0, v2}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2Shot;->prepare()V

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2Shot;->startSessionCapture()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/camera2/MiCamera2Shot;->mShutterFrameNum:I

    return-void
.end method
