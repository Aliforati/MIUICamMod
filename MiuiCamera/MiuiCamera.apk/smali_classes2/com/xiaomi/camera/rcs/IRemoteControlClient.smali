.class public interface abstract Lcom/xiaomi/camera/rcs/IRemoteControlClient;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/camera/rcs/IRemoteControlClient$Stub;
    }
.end annotation


# virtual methods
.method public abstract customCallback(Ljava/lang/String;Landroid/os/Bundle;)V
.end method

.method public abstract streamingServerStatus(ILandroid/os/Bundle;)V
.end method

.method public abstract streamingSessionStatus(ILandroid/os/Bundle;)V
.end method
