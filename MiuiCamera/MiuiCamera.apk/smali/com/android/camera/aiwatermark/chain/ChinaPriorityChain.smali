.class public Lcom/android/camera/aiwatermark/chain/ChinaPriorityChain;
.super Lcom/android/camera/aiwatermark/chain/AbstractPriorityChain;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/aiwatermark/chain/AbstractPriorityChain;-><init>()V

    return-void
.end method


# virtual methods
.method public createASDChain(Landroid/content/Context;)Lcom/android/camera/aiwatermark/handler/AbstractHandler;
    .locals 2

    new-instance v0, Lcom/android/camera/aiwatermark/handler/ChinaCityHandler;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p1}, Lcom/android/camera/aiwatermark/handler/ChinaCityHandler;-><init>(ZLandroid/content/Context;)V

    new-instance p1, Lcom/android/camera/aiwatermark/handler/ChinaTimeHandler;

    invoke-direct {p1, v1}, Lcom/android/camera/aiwatermark/handler/ChinaTimeHandler;-><init>(Z)V

    invoke-virtual {v0, p1}, Lcom/android/camera/aiwatermark/handler/AbstractHandler;->setNextHandler(Lcom/android/camera/aiwatermark/handler/AbstractHandler;)V

    return-object v0
.end method

.method public createChain(Landroid/content/Context;)Lcom/android/camera/aiwatermark/handler/AbstractHandler;
    .locals 5

    new-instance v0, Lcom/android/camera/aiwatermark/handler/ChinaScenicSpotsHandler;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/camera/aiwatermark/handler/ChinaScenicSpotsHandler;-><init>(Z)V

    new-instance v2, Lcom/android/camera/aiwatermark/handler/ChinaFestivalHandler;

    invoke-direct {v2, v1}, Lcom/android/camera/aiwatermark/handler/ChinaFestivalHandler;-><init>(Z)V

    new-instance v3, Lcom/android/camera/aiwatermark/handler/ChinaASDHandler;

    invoke-direct {v3, v1, p1}, Lcom/android/camera/aiwatermark/handler/ChinaASDHandler;-><init>(ZLandroid/content/Context;)V

    new-instance v4, Lcom/android/camera/aiwatermark/handler/ChinaCityHandler;

    invoke-direct {v4, v1, p1}, Lcom/android/camera/aiwatermark/handler/ChinaCityHandler;-><init>(ZLandroid/content/Context;)V

    new-instance p1, Lcom/android/camera/aiwatermark/handler/ChinaTimeHandler;

    invoke-direct {p1, v1}, Lcom/android/camera/aiwatermark/handler/ChinaTimeHandler;-><init>(Z)V

    invoke-virtual {v0, v2}, Lcom/android/camera/aiwatermark/handler/AbstractHandler;->setNextHandler(Lcom/android/camera/aiwatermark/handler/AbstractHandler;)V

    invoke-virtual {v2, v3}, Lcom/android/camera/aiwatermark/handler/AbstractHandler;->setNextHandler(Lcom/android/camera/aiwatermark/handler/AbstractHandler;)V

    invoke-virtual {v3, v4}, Lcom/android/camera/aiwatermark/handler/AbstractHandler;->setNextHandler(Lcom/android/camera/aiwatermark/handler/AbstractHandler;)V

    invoke-virtual {v4, p1}, Lcom/android/camera/aiwatermark/handler/AbstractHandler;->setNextHandler(Lcom/android/camera/aiwatermark/handler/AbstractHandler;)V

    return-object v0
.end method
