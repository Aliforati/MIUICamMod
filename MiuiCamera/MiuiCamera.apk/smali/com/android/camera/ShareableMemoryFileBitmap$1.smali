.class public final Lcom/android/camera/ShareableMemoryFileBitmap$1;
.super Lcom/xiaomi/camera/util/Singleton;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ShareableMemoryFileBitmap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaomi/camera/util/Singleton<",
        "Lcom/android/camera/ShareableMemoryFileBitmap;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/camera/util/Singleton;-><init>()V

    return-void
.end method


# virtual methods
.method public create()Lcom/android/camera/ShareableMemoryFileBitmap;
    .locals 2

    new-instance v0, Lcom/android/camera/ShareableMemoryFileBitmap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/camera/ShareableMemoryFileBitmap;-><init>(Lcom/android/camera/ShareableMemoryFileBitmap$1;)V

    return-object v0
.end method

.method public bridge synthetic create()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/android/camera/ShareableMemoryFileBitmap$1;->create()Lcom/android/camera/ShareableMemoryFileBitmap;

    move-result-object v0

    return-object v0
.end method
