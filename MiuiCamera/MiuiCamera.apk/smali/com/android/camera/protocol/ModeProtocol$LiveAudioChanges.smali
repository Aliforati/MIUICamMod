.class public interface abstract Lcom/android/camera/protocol/ModeProtocol$LiveAudioChanges;
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
    name = "LiveAudioChanges"
.end annotation


# static fields
.field public static final TYPE_TAG:I = 0xd3


# virtual methods
.method public abstract clearAudio()V
.end method

.method public getAudioPath()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract setAudioPath(Ljava/lang/String;)V
.end method
