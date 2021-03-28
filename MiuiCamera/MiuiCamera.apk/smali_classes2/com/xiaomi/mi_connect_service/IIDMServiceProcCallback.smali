.class public interface abstract Lcom/xiaomi/mi_connect_service/IIDMServiceProcCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/mi_connect_service/IIDMServiceProcCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract onAdvertisingResult([B)V
.end method

.method public abstract onConnectServiceStatus([B)V
.end method

.method public abstract onRequest([B)V
.end method

.method public abstract onServiceChanged([B)V
.end method

.method public abstract onSetEventCallback([B)I
.end method
