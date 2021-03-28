.class public interface abstract Lcom/xiaomi/mi_connect_service/IIDMClientCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/mi_connect_service/IIDMClientCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract onAccountChanged([B)V
.end method

.method public abstract onDiscoveryResult([B)V
.end method

.method public abstract onEvent([B)V
.end method

.method public abstract onInvitationAccepted([B)V
.end method

.method public abstract onInviteConnection([B)V
.end method

.method public abstract onResponse([B)V
.end method

.method public abstract onServiceConnectStatus([B)V
.end method

.method public abstract onServiceFound([B)V
.end method

.method public abstract onServiceLost([B)V
.end method
