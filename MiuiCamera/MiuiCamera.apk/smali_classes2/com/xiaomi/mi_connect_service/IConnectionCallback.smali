.class public interface abstract Lcom/xiaomi/mi_connect_service/IConnectionCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/mi_connect_service/IConnectionCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract onDisconnected()V
.end method

.method public abstract onFailure([B)V
.end method

.method public abstract onSuccess([B)V
.end method
