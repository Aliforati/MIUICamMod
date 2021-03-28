.class public Lcom/faceunity/pta_helper/FUAuthCheck;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "FUP2AHelper"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native fuP2ASetAuth([B)Z
.end method

.method public static native fuP2ASetAuthInternalCheck([B)Z
.end method

.method public static native fuP2ASetAuthInternalCheckEx([B[B)Z
.end method
