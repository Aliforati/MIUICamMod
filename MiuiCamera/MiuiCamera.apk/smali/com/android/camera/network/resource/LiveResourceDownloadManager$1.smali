.class public Lcom/android/camera/network/resource/LiveResourceDownloadManager$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/camera/network/download/GalleryDownloadManager$OnCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/network/resource/LiveResourceDownloadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/network/resource/LiveResourceDownloadManager;


# direct methods
.method public constructor <init>(Lcom/android/camera/network/resource/LiveResourceDownloadManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/network/resource/LiveResourceDownloadManager$1;->this$0:Lcom/android/camera/network/resource/LiveResourceDownloadManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRequestComplete(Lcom/android/camera/network/download/Request;I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "download finish "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LiveResourceDownloadManager"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/android/camera/network/download/Request;->getTag()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/android/camera/network/resource/LiveResourceDownloadManager$1;->this$0:Lcom/android/camera/network/resource/LiveResourceDownloadManager;

    invoke-static {v0}, Lcom/android/camera/network/resource/LiveResourceDownloadManager;->access$100(Lcom/android/camera/network/resource/LiveResourceDownloadManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/camera/network/resource/LiveResourceDownloadManager$1;->this$0:Lcom/android/camera/network/resource/LiveResourceDownloadManager;

    invoke-static {v1}, Lcom/android/camera/network/resource/LiveResourceDownloadManager;->access$200(Lcom/android/camera/network/resource/LiveResourceDownloadManager;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/android/camera/network/resource/LiveResourceDownloadManager$1;->this$0:Lcom/android/camera/network/resource/LiveResourceDownloadManager;

    const/4 v0, 0x3

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/android/camera/network/resource/LiveResourceDownloadManager$1;->this$0:Lcom/android/camera/network/resource/LiveResourceDownloadManager;

    const/4 v0, 0x4

    :goto_0
    invoke-static {p2, p1, v0}, Lcom/android/camera/network/resource/LiveResourceDownloadManager;->access$300(Lcom/android/camera/network/resource/LiveResourceDownloadManager;Ljava/lang/String;I)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
