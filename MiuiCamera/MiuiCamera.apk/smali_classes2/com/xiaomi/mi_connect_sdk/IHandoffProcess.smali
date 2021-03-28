.class public interface abstract Lcom/xiaomi/mi_connect_sdk/IHandoffProcess;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/mi_connect_sdk/IHandoffProcess$Stub;
    }
.end annotation


# virtual methods
.method public abstract destroy()V
.end method

.method public abstract notifyHandoffEvent([B)V
.end method

.method public abstract registerClient(Lcom/xiaomi/mi_connect_sdk/IHandoffProcessCallback;)V
.end method
