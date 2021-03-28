.class public Lcom/android/camera2/MiCamera2ShotParallelRepeating$1;
.super Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera2/MiCamera2ShotParallelRepeating;->generateCaptureCallback()Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public mCaptureTimestamp:J

.field public final synthetic this$0:Lcom/android/camera2/MiCamera2ShotParallelRepeating;


# direct methods
.method public constructor <init>(Lcom/android/camera2/MiCamera2ShotParallelRepeating;)V
    .locals 2

    iput-object p1, p0, Lcom/android/camera2/MiCamera2ShotParallelRepeating$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelRepeating;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/camera2/MiCamera2ShotParallelRepeating$1;->mCaptureTimestamp:J

    return-void
.end method


# virtual methods
.method public onCaptureCompleted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 2

    invoke-super {p0, p1, p2, p3}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;->onCaptureCompleted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onCaptureCompleted: frameNumber="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/hardware/camera2/TotalCaptureResult;->getFrameNumber()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ParallelRepeating"

    invoke-static {p2, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/camera2/MiCamera2ShotParallelRepeating$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelRepeating;

    invoke-static {p1, p3}, Lcom/android/camera2/MiCamera2ShotParallelRepeating;->access$602(Lcom/android/camera2/MiCamera2ShotParallelRepeating;Landroid/hardware/camera2/CaptureResult;)Landroid/hardware/camera2/CaptureResult;

    iget-object p1, p0, Lcom/android/camera2/MiCamera2ShotParallelRepeating$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelRepeating;

    invoke-static {p1}, Lcom/android/camera2/MiCamera2ShotParallelRepeating;->access$600(Lcom/android/camera2/MiCamera2ShotParallelRepeating;)Landroid/hardware/camera2/CaptureResult;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaomi/camera/base/CameraDeviceUtil;->getCustomCaptureResult(Landroid/hardware/camera2/CaptureResult;)Lcom/xiaomi/protocol/ICustomCaptureResult;

    move-result-object p1

    invoke-static {}, Lcom/android/camera/parallel/AlgoConnector;->getInstance()Lcom/android/camera/parallel/AlgoConnector;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/camera/parallel/AlgoConnector;->getLocalBinder()Lcom/android/camera/LocalParallelService$LocalBinder;

    move-result-object p3

    const/4 v0, 0x1

    invoke-virtual {p3, p1, v0}, Lcom/android/camera/LocalParallelService$LocalBinder;->onCaptureCompleted(Lcom/xiaomi/protocol/ICustomCaptureResult;Z)V

    invoke-static {}, LOooO0O0/OooO0o0/OooO00o/OooO0OO;->OoooOO0()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, LOooO0O0/OooO0o0/OooO00o/OooO0O0;->o0O00O()LOooO0O0/OooO0o0/OooO00o/OooO0O0;

    move-result-object p1

    invoke-virtual {p1}, LOooO0O0/OooO0o0/OooO00o/OooO0O0;->o00O0oo0()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/camera2/MiCamera2ShotParallelRepeating$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelRepeating;

    invoke-static {p1}, Lcom/android/camera2/MiCamera2ShotParallelRepeating;->access$300(Lcom/android/camera2/MiCamera2ShotParallelRepeating;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/camera2/MiCamera2ShotParallelRepeating$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelRepeating;

    iget-object p1, p1, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {p1}, Lcom/android/camera2/MiCamera2;->isMultiSnapStopRequest()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/camera2/MiCamera2ShotParallelRepeating$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelRepeating;

    invoke-static {p1}, Lcom/android/camera2/MiCamera2ShotParallelRepeating;->access$500(Lcom/android/camera2/MiCamera2ShotParallelRepeating;)I

    move-result p3

    invoke-static {p1, p3}, Lcom/android/camera2/MiCamera2ShotParallelRepeating;->access$402(Lcom/android/camera2/MiCamera2ShotParallelRepeating;I)I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onCaptureCompleted: latestSequenceId: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/camera2/MiCamera2ShotParallelRepeating$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelRepeating;

    invoke-static {p3}, Lcom/android/camera2/MiCamera2ShotParallelRepeating;->access$400(Lcom/android/camera2/MiCamera2ShotParallelRepeating;)I

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/camera2/MiCamera2ShotParallelRepeating$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelRepeating;

    invoke-virtual {p1}, Lcom/android/camera2/MiCamera2ShotParallelRepeating;->startSessionCapture()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onCaptureFailed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureFailure;)V
    .locals 2

    invoke-super {p0, p1, p2, p3}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;->onCaptureFailed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureFailure;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onCaptureFailed: reason="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/hardware/camera2/CaptureFailure;->getReason()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " timestamp="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/android/camera2/MiCamera2ShotParallelRepeating$1;->mCaptureTimestamp:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " frameNumber="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/hardware/camera2/CaptureFailure;->getFrameNumber()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ParallelRepeating"

    invoke-static {p2, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/camera2/MiCamera2ShotParallelRepeating$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelRepeating;

    const/4 p2, 0x0

    const/4 v0, -0x1

    invoke-static {p1, p2, v0}, Lcom/android/camera2/MiCamera2ShotParallelRepeating;->access$700(Lcom/android/camera2/MiCamera2ShotParallelRepeating;ZI)V

    iget-wide p1, p0, Lcom/android/camera2/MiCamera2ShotParallelRepeating$1;->mCaptureTimestamp:J

    const-wide/16 v0, -0x1

    cmp-long p1, p1, v0

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/android/camera/parallel/AlgoConnector;->getInstance()Lcom/android/camera/parallel/AlgoConnector;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/parallel/AlgoConnector;->getLocalBinder()Lcom/android/camera/LocalParallelService$LocalBinder;

    move-result-object p1

    iget-wide v0, p0, Lcom/android/camera2/MiCamera2ShotParallelRepeating$1;->mCaptureTimestamp:J

    invoke-virtual {p3}, Landroid/hardware/camera2/CaptureFailure;->getReason()I

    move-result p2

    invoke-virtual {p1, v0, v1, p2}, Lcom/android/camera/LocalParallelService$LocalBinder;->onCaptureFailed(JI)V

    :cond_0
    return-void
.end method

.method public onCaptureProgressed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V
    .locals 2

    invoke-super {p0, p1, p2, p3}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;->onCaptureProgressed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onCaptureProgressed: frameNumber="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/hardware/camera2/CaptureResult;->getFrameNumber()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ParallelRepeating"

    invoke-static {p2, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/camera2/MiCamera2ShotParallelRepeating$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelRepeating;

    invoke-static {p1}, Lcom/android/camera2/MiCamera2ShotParallelRepeating;->access$300(Lcom/android/camera2/MiCamera2ShotParallelRepeating;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {p3}, Lcom/android/camera2/CaptureResultParser;->isP2doneReady(Landroid/hardware/camera2/CaptureResult;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/camera2/MiCamera2ShotParallelRepeating$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelRepeating;

    iget-object p1, p1, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {p1}, Lcom/android/camera2/MiCamera2;->isMultiSnapStopRequest()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/camera2/MiCamera2ShotParallelRepeating$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelRepeating;

    invoke-static {p1}, Lcom/android/camera2/MiCamera2ShotParallelRepeating;->access$500(Lcom/android/camera2/MiCamera2ShotParallelRepeating;)I

    move-result p3

    invoke-static {p1, p3}, Lcom/android/camera2/MiCamera2ShotParallelRepeating;->access$402(Lcom/android/camera2/MiCamera2ShotParallelRepeating;I)I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onCaptureProgressed:  latestSequenceId: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/camera2/MiCamera2ShotParallelRepeating$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelRepeating;

    invoke-static {p3}, Lcom/android/camera2/MiCamera2ShotParallelRepeating;->access$400(Lcom/android/camera2/MiCamera2ShotParallelRepeating;)I

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/camera2/MiCamera2ShotParallelRepeating$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelRepeating;

    invoke-virtual {p1}, Lcom/android/camera2/MiCamera2ShotParallelRepeating;->startSessionCapture()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onCaptureSequenceAborted(Landroid/hardware/camera2/CameraCaptureSession;I)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;->onCaptureSequenceAborted(Landroid/hardware/camera2/CameraCaptureSession;I)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onCaptureSequenceAborted: sequenceId="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ParallelRepeating"

    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/camera2/MiCamera2ShotParallelRepeating$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelRepeating;

    const/4 v0, 0x0

    invoke-static {p1, v0, p2}, Lcom/android/camera2/MiCamera2ShotParallelRepeating;->access$700(Lcom/android/camera2/MiCamera2ShotParallelRepeating;ZI)V

    invoke-static {}, Lcom/xiaomi/camera/imagecodec/ImagePool;->getInstance()Lcom/xiaomi/camera/imagecodec/ImagePool;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaomi/camera/imagecodec/ImagePool;->trimPoolBuffer()V

    return-void
.end method

.method public onCaptureSequenceCompleted(Landroid/hardware/camera2/CameraCaptureSession;IJ)V
    .locals 1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onCaptureSequenceCompleted: sequenceId="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " latestSequenceId= "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/camera2/MiCamera2ShotParallelRepeating$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelRepeating;

    invoke-static {v0}, Lcom/android/camera2/MiCamera2ShotParallelRepeating;->access$400(Lcom/android/camera2/MiCamera2ShotParallelRepeating;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " frameNumber="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "ParallelRepeating"

    invoke-static {p3, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, LOooO0O0/OooO0o0/OooO00o/OooO0OO;->OoooOO0()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, LOooO0O0/OooO0o0/OooO00o/OooO0O0;->o0O00O()LOooO0O0/OooO0o0/OooO00o/OooO0O0;

    move-result-object p1

    invoke-virtual {p1}, LOooO0O0/OooO0o0/OooO00o/OooO0O0;->o00O0oo0()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/camera2/MiCamera2ShotParallelRepeating$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelRepeating;

    invoke-static {p1}, Lcom/android/camera2/MiCamera2ShotParallelRepeating;->access$400(Lcom/android/camera2/MiCamera2ShotParallelRepeating;)I

    move-result p1

    if-ne p1, p2, :cond_1

    :cond_0
    iget-object p1, p0, Lcom/android/camera2/MiCamera2ShotParallelRepeating$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelRepeating;

    const/4 p3, 0x1

    invoke-static {p1, p3, p2}, Lcom/android/camera2/MiCamera2ShotParallelRepeating;->access$700(Lcom/android/camera2/MiCamera2ShotParallelRepeating;ZI)V

    invoke-static {}, Lcom/xiaomi/camera/imagecodec/ImagePool;->getInstance()Lcom/xiaomi/camera/imagecodec/ImagePool;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaomi/camera/imagecodec/ImagePool;->trimPoolBuffer()V

    :cond_1
    return-void
.end method

.method public onCaptureStarted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;JJ)V
    .locals 7

    invoke-super/range {p0 .. p6}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;->onCaptureStarted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;JJ)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onCaptureStarted: timestamp="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " frameNumber="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ParallelRepeating"

    invoke-static {p2, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/camera2/MiCamera2ShotParallelRepeating;->access$000()I

    move-result p1

    const/4 p5, 0x0

    const/4 p6, 0x1

    if-lez p1, :cond_2

    iget-object p1, p0, Lcom/android/camera2/MiCamera2ShotParallelRepeating$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelRepeating;

    invoke-static {p1}, Lcom/android/camera2/MiCamera2ShotParallelRepeating;->access$108(Lcom/android/camera2/MiCamera2ShotParallelRepeating;)I

    iget-object p1, p0, Lcom/android/camera2/MiCamera2ShotParallelRepeating$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelRepeating;

    invoke-static {p1}, Lcom/android/camera2/MiCamera2ShotParallelRepeating;->access$100(Lcom/android/camera2/MiCamera2ShotParallelRepeating;)I

    move-result p1

    invoke-static {}, Lcom/android/camera2/MiCamera2ShotParallelRepeating;->access$000()I

    move-result v0

    rem-int/2addr p1, v0

    if-nez p1, :cond_0

    move p1, p6

    goto :goto_0

    :cond_0
    move p1, p5

    :goto_0
    sget-boolean v0, LOooO0O0/OooO0o0/OooO00o/OooO0OO;->OooooO0:Z

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/android/camera2/MiCamera2ShotParallelRepeating$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelRepeating;

    invoke-static {p1}, Lcom/android/camera2/MiCamera2ShotParallelRepeating;->access$100(Lcom/android/camera2/MiCamera2ShotParallelRepeating;)I

    move-result p1

    invoke-static {}, Lcom/android/camera2/MiCamera2ShotParallelRepeating;->access$000()I

    move-result v0

    rem-int/2addr p1, v0

    if-eqz p1, :cond_2

    move p5, p6

    goto :goto_1

    :cond_1
    move p5, p1

    :cond_2
    :goto_1
    const/4 p1, 0x4

    if-eqz p5, :cond_4

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onCaptureStarted: drop task "

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-static {p2, p5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p2, Lcom/xiaomi/camera/core/ParallelTaskData;

    iget-object p5, p0, Lcom/android/camera2/MiCamera2ShotParallelRepeating$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelRepeating;

    iget-object p5, p5, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {p5}, Lcom/android/camera2/Camera2Proxy;->getId()I

    move-result v1

    iget-object p5, p0, Lcom/android/camera2/MiCamera2ShotParallelRepeating$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelRepeating;

    iget-object p5, p5, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {p5}, Lcom/android/camera2/MiCamera2;->getCameraConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object p5

    invoke-virtual {p5}, Lcom/android/camera2/CameraConfigs;->getShotType()I

    move-result v4

    const-string v5, ""

    move-object v0, p2

    move-wide v2, p3

    invoke-direct/range {v0 .. v5}, Lcom/xiaomi/camera/core/ParallelTaskData;-><init>(IJILjava/lang/String;)V

    iget-object p5, p0, Lcom/android/camera2/MiCamera2ShotParallelRepeating$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelRepeating;

    invoke-static {p5}, Lcom/android/camera2/MiCamera2ShotParallelRepeating;->access$200(Lcom/android/camera2/MiCamera2ShotParallelRepeating;)Z

    move-result p5

    invoke-virtual {p2, p5}, Lcom/xiaomi/camera/core/ParallelTaskData;->setIsSatFusionShot(Z)V

    invoke-virtual {p2, p1}, Lcom/xiaomi/camera/core/ParallelTaskData;->setAlgoType(I)V

    invoke-virtual {p2, p6}, Lcom/xiaomi/camera/core/ParallelTaskData;->setBurstNum(I)V

    invoke-static {}, LOooO0O0/OooO0o0/OooO00o/OooO0O0;->o0O00O()LOooO0O0/OooO0o0/OooO00o/OooO0O0;

    move-result-object p1

    invoke-virtual {p1}, LOooO0O0/OooO0o0/OooO00o/OooO0O0;->o00oo0()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p2, p6}, Lcom/xiaomi/camera/core/ParallelTaskData;->setRequireTuningData(Z)V

    :cond_3
    invoke-virtual {p2, p6}, Lcom/xiaomi/camera/core/ParallelTaskData;->setAbandoned(Z)V

    iput-wide p3, p0, Lcom/android/camera2/MiCamera2ShotParallelRepeating$1;->mCaptureTimestamp:J

    invoke-static {}, Lcom/android/camera/parallel/AlgoConnector;->getInstance()Lcom/android/camera/parallel/AlgoConnector;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/parallel/AlgoConnector;->getLocalBinder()Lcom/android/camera/LocalParallelService$LocalBinder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/android/camera/LocalParallelService$LocalBinder;->onCaptureStarted(Lcom/xiaomi/camera/core/ParallelTaskData;)V

    goto :goto_3

    :cond_4
    iget-object p5, p0, Lcom/android/camera2/MiCamera2ShotParallelRepeating$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelRepeating;

    invoke-virtual {p5}, Lcom/android/camera2/MiCamera2Shot;->getPictureCallback()Lcom/android/camera2/Camera2Proxy$PictureCallback;

    move-result-object v0

    if-eqz v0, :cond_6

    new-instance p5, Lcom/xiaomi/camera/core/ParallelTaskData;

    iget-object v1, p0, Lcom/android/camera2/MiCamera2ShotParallelRepeating$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelRepeating;

    iget-object v1, v1, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v1}, Lcom/android/camera2/Camera2Proxy;->getId()I

    move-result v2

    iget-object v1, p0, Lcom/android/camera2/MiCamera2ShotParallelRepeating$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelRepeating;

    iget-object v1, v1, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v1}, Lcom/android/camera2/MiCamera2;->getCameraConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera2/CameraConfigs;->getShotType()I

    move-result v5

    const/4 v6, 0x0

    move-object v1, p5

    move-wide v3, p3

    invoke-direct/range {v1 .. v6}, Lcom/xiaomi/camera/core/ParallelTaskData;-><init>(IJILjava/lang/String;)V

    iget-object v1, p0, Lcom/android/camera2/MiCamera2ShotParallelRepeating$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelRepeating;

    iget-object v2, v1, Lcom/android/camera2/MiCamera2ShotParallel;->mAlgoSize:Lcom/android/camera/CameraSize;

    invoke-virtual {v1}, Lcom/android/camera2/MiCamera2Shot;->isQuickShotAnimation()Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p5

    invoke-interface/range {v0 .. v6}, Lcom/android/camera2/Camera2Proxy$PictureCallback;->onCaptureStart(Lcom/xiaomi/camera/core/ParallelTaskData;Lcom/android/camera/CameraSize;ZZZZ)Lcom/xiaomi/camera/core/ParallelTaskData;

    move-result-object p5

    if-eqz p5, :cond_5

    iget-object p2, p0, Lcom/android/camera2/MiCamera2ShotParallelRepeating$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelRepeating;

    invoke-static {p2}, Lcom/android/camera2/MiCamera2ShotParallelRepeating;->access$200(Lcom/android/camera2/MiCamera2ShotParallelRepeating;)Z

    move-result p2

    invoke-virtual {p5, p2}, Lcom/xiaomi/camera/core/ParallelTaskData;->setIsSatFusionShot(Z)V

    invoke-virtual {p5, p1}, Lcom/xiaomi/camera/core/ParallelTaskData;->setAlgoType(I)V

    invoke-virtual {p5, p6}, Lcom/xiaomi/camera/core/ParallelTaskData;->setBurstNum(I)V

    iput-wide p3, p0, Lcom/android/camera2/MiCamera2ShotParallelRepeating$1;->mCaptureTimestamp:J

    invoke-static {}, Lcom/android/camera/parallel/AlgoConnector;->getInstance()Lcom/android/camera/parallel/AlgoConnector;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/parallel/AlgoConnector;->getLocalBinder()Lcom/android/camera/LocalParallelService$LocalBinder;

    move-result-object p1

    invoke-virtual {p1, p5}, Lcom/android/camera/LocalParallelService$LocalBinder;->onCaptureStarted(Lcom/xiaomi/camera/core/ParallelTaskData;)V

    goto :goto_3

    :cond_5
    const-string p1, "onCaptureStarted: null task data"

    goto :goto_2

    :cond_6
    const-string p1, "onCaptureStarted: null picture callback"

    :goto_2
    invoke-static {p2, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    return-void
.end method
