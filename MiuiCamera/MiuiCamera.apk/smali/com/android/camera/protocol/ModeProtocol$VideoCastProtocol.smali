.class public interface abstract Lcom/android/camera/protocol/ModeProtocol$VideoCastProtocol;
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
    name = "VideoCastProtocol"
.end annotation


# static fields
.field public static final TYPE_TAG:I = 0x3b6


# virtual methods
.method public abstract getVideoCastPausedState()Z
.end method

.method public abstract getVideoCastRecordedDuration()J
.end method

.method public abstract getVideoCastRecordingState()Z
.end method

.method public abstract setVideoCastPausedState(Z)V
.end method

.method public abstract setVideoCastRecordedDuration(J)V
.end method

.method public abstract setVideoCastRecordingState(Z)V
.end method
