.class public abstract Lcom/android/camera/resource/SimpleParseRequest;
.super Lcom/android/camera/resource/BaseObservableRequest;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/android/camera/resource/BaseResourceCacheable;",
        ">",
        "Lcom/android/camera/resource/BaseObservableRequest<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/resource/BaseObservableRequest;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract processParse(Lcom/android/camera/resource/BaseResourceCacheable;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public scheduleRequest(Lcom/android/camera/resource/ResponseListener;Lcom/android/camera/resource/BaseResourceCacheable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/resource/ResponseListener<",
            "TT;>;TT;)V"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0, p2}, Lcom/android/camera/resource/SimpleParseRequest;->processParse(Lcom/android/camera/resource/BaseResourceCacheable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1, p2, v0}, Lcom/android/camera/resource/ResponseListener;->onResponse(Ljava/lang/Object;Z)V

    return-void

    :catch_0
    move-exception p2

    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p2, 0x0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic scheduleRequest(Lcom/android/camera/resource/ResponseListener;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/android/camera/resource/BaseResourceCacheable;

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/resource/SimpleParseRequest;->scheduleRequest(Lcom/android/camera/resource/ResponseListener;Lcom/android/camera/resource/BaseResourceCacheable;)V

    return-void
.end method
