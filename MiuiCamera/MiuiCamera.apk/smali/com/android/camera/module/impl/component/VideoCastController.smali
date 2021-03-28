.class public Lcom/android/camera/module/impl/component/VideoCastController;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/camera/protocol/ModeProtocol$VideoCastProtocol;


# static fields
.field public static final TAG:Ljava/lang/String; = "VideoCastController"


# instance fields
.field public mPausedStated:Z

.field public mRecordingStated:Z

.field public mVideoRecordedDuration:J


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/module/impl/component/VideoCastController;->mPausedStated:Z

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/camera/module/impl/component/VideoCastController;->mVideoRecordedDuration:J

    iput-boolean v0, p0, Lcom/android/camera/module/impl/component/VideoCastController;->mRecordingStated:Z

    return-void
.end method

.method public static create()Lcom/android/camera/module/impl/component/VideoCastController;
    .locals 1

    new-instance v0, Lcom/android/camera/module/impl/component/VideoCastController;

    invoke-direct {v0}, Lcom/android/camera/module/impl/component/VideoCastController;-><init>()V

    return-object v0
.end method


# virtual methods
.method public getVideoCastPausedState()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/module/impl/component/VideoCastController;->mPausedStated:Z

    return v0
.end method

.method public getVideoCastRecordedDuration()J
    .locals 2

    iget-wide v0, p0, Lcom/android/camera/module/impl/component/VideoCastController;->mVideoRecordedDuration:J

    return-wide v0
.end method

.method public getVideoCastRecordingState()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/module/impl/component/VideoCastController;->mRecordingStated:Z

    return v0
.end method

.method public registerProtocol()V
    .locals 2

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0x3b6

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->attachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    return-void
.end method

.method public setVideoCastPausedState(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/module/impl/component/VideoCastController;->mPausedStated:Z

    return-void
.end method

.method public setVideoCastRecordedDuration(J)V
    .locals 0

    iput-wide p1, p0, Lcom/android/camera/module/impl/component/VideoCastController;->mVideoRecordedDuration:J

    return-void
.end method

.method public setVideoCastRecordingState(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/module/impl/component/VideoCastController;->mRecordingStated:Z

    return-void
.end method

.method public unRegisterProtocol()V
    .locals 2

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0x3b6

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->detachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    return-void
.end method
