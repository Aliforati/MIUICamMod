.class public interface abstract Lcom/xiaomi/protocol/ICameraBackStageService;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/protocol/ICameraBackStageService$Stub;
    }
.end annotation


# virtual methods
.method public abstract addCapturePath(Ljava/lang/String;)V
.end method

.method public abstract configCaptureOutputBuffer(Ljava/util/List;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaomi/protocol/IImageReaderParameterSets;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/view/Surface;",
            ">;"
        }
    .end annotation
.end method

.method public abstract configCaptureSession(Lcom/xiaomi/engine/BufferFormat;)V
.end method

.method public abstract needWaitProcess()Z
.end method

.method public abstract onCaptureCompleted(Ljava/util/List;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaomi/protocol/ICustomCaptureResult;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public abstract onCaptureFailed(Ljava/lang/String;I)V
.end method
