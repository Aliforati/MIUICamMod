.class public Lcom/xiaomi/Video2GifEditer/MediaTrim;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/Video2GifEditer/MediaTrim$Callback;
    }
.end annotation


# static fields
.field public static TAG:Ljava/lang/String; = "MediaTrim"


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static MediaTrim(Ljava/lang/String;Ljava/lang/String;JJIILcom/xiaomi/Video2GifEditer/MediaTrim$Callback;)I
    .locals 2

    sget-object v0, Lcom/xiaomi/Video2GifEditer/MediaTrim;->TAG:Ljava/lang/String;

    const-string v1, "MediaTrim"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static/range {p0 .. p8}, Lcom/xiaomi/Video2GifEditer/MediaTrim;->MediaTrimJni(Ljava/lang/String;Ljava/lang/String;JJIILcom/xiaomi/Video2GifEditer/MediaTrim$Callback;)I

    move-result p0

    return p0
.end method

.method public static native MediaTrimJni(Ljava/lang/String;Ljava/lang/String;JJIILcom/xiaomi/Video2GifEditer/MediaTrim$Callback;)I
.end method

.method public static cancelMediaTrim(Ljava/lang/String;)I
    .locals 2

    sget-object v0, Lcom/xiaomi/Video2GifEditer/MediaTrim;->TAG:Ljava/lang/String;

    const-string v1, "cancel MediaTrim "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/xiaomi/Video2GifEditer/MediaTrim;->cancelmediatrimJni(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static native cancelmediatrimJni(Ljava/lang/String;)I
.end method
