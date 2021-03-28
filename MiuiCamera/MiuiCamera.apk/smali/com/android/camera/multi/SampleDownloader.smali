.class public Lcom/android/camera/multi/SampleDownloader;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/iqiyi/android/qigsaw/core/splitdownload/Downloader;


# static fields
.field public static final HIGH_PRIORITY:I = 0xa

.field public static final LOW_PRIORITY:I = 0x0

.field public static final TAG:Ljava/lang/String; = "Split:SampleDownloader"


# instance fields
.field public mCallbackList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadCallback;",
            ">;"
        }
    .end annotation
.end field

.field public final mDisposableList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lio/reactivex/disposables/Disposable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/camera/multi/SampleDownloader;->mDisposableList:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/camera/multi/SampleDownloader;->mCallbackList:Landroid/util/SparseArray;

    return-void
.end method

.method public static synthetic OooO00o(Ljava/lang/String;Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadCallback;Lcom/android/camera/multi/PluginInfo;)Lio/reactivex/ObservableSource;
    .locals 2

    new-instance v0, Lcom/android/camera/resource/SimpleNetworkDownloadRequest;

    invoke-virtual {p2}, Lcom/android/camera/multi/PluginInfo;->getDownloadUrl()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/android/camera/resource/SimpleNetworkDownloadRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, 0x78

    invoke-virtual {v0, p0}, Lcom/android/camera/resource/SimpleNetworkDownloadRequest;->observableProgress(I)Lio/reactivex/Observable;

    move-result-object p0

    new-instance v1, LOooO0O0/OooO0OO/OooO00o/OooOoO/OooO0O0;

    invoke-direct {v1, p1}, LOooO0O0/OooO0OO/OooO00o/OooOoO/OooO0O0;-><init>(Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadCallback;)V

    invoke-virtual {p0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    invoke-virtual {v0, p2}, Lcom/android/camera/resource/BaseObservableRequest;->startObservable(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic OooO00o(Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadCallback;Ljava/lang/Long;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-interface {p0, v0, v1}, Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadCallback;->onProgress(J)V

    return-void
.end method

.method public static synthetic OooO0O0(Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadCallback;Ljava/lang/Long;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-interface {p0, v0, v1}, Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadCallback;->onProgress(J)V

    return-void
.end method

.method private onFinish(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/multi/SampleDownloader;->mCallbackList:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    iget-object v0, p0, Lcom/android/camera/multi/SampleDownloader;->mDisposableList:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    iget-object v0, p0, Lcom/android/camera/multi/SampleDownloader;->mDisposableList:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public synthetic OooO00o(Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadCallback;ILcom/android/camera/multi/PluginInfo;)V
    .locals 0

    invoke-interface {p1}, Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadCallback;->onCompleted()V

    invoke-direct {p0, p2}, Lcom/android/camera/multi/SampleDownloader;->onFinish(I)V

    return-void
.end method

.method public synthetic OooO00o(Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadCallback;ILjava/lang/Throwable;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "install error:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Split:SampleDownloader"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p3}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/android/camera/statistic/CameraStatUtils;->trackFeatureInstallError(Ljava/lang/String;)V

    const/16 p3, 0x101

    invoke-interface {p1, p3}, Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadCallback;->onError(I)V

    invoke-direct {p0, p2}, Lcom/android/camera/multi/SampleDownloader;->onFinish(I)V

    return-void
.end method

.method public cancelDownloadSync(I)Z
    .locals 1

    iget-object v0, p0, Lcom/android/camera/multi/SampleDownloader;->mCallbackList:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadCallback;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadCallback;->onCanceled()V

    invoke-direct {p0, p1}, Lcom/android/camera/multi/SampleDownloader;->onFinish(I)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public deferredDownload(ILjava/util/List;Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadCallback;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadRequest;",
            ">;",
            "Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadCallback;",
            "Z)V"
        }
    .end annotation

    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "not supported yet"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getDownloadSizeThresholdWhenUsingMobileData()J
    .locals 2

    const-wide/32 v0, 0x3e800000

    return-wide v0
.end method

.method public isDeferredDownloadOnlyWhenUsingWifiData()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public startDownload(ILjava/util/List;Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadRequest;",
            ">;",
            "Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadCallback;",
            ")V"
        }
    .end annotation

    invoke-interface {p3}, Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadCallback;->onStart()V

    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadRequest;

    invoke-virtual {p2}, Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadRequest;->getUrl()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadRequest;->getFileDir()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadRequest;->getFileName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadRequest;->getModuleName()Ljava/lang/String;

    iget-object p2, p0, Lcom/android/camera/multi/SampleDownloader;->mCallbackList:Landroid/util/SparseArray;

    invoke-virtual {p2, p1, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const-string p2, "http"

    invoke-virtual {v0, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    new-instance p2, Lcom/android/camera/resource/SimpleNetworkDownloadRequest;

    invoke-direct {p2, v0, v1}, Lcom/android/camera/resource/SimpleNetworkDownloadRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x78

    invoke-virtual {p2, v1}, Lcom/android/camera/resource/SimpleNetworkDownloadRequest;->observableProgress(I)Lio/reactivex/Observable;

    move-result-object v1

    new-instance v2, LOooO0O0/OooO0OO/OooO00o/OooOoO/OooO00o;

    invoke-direct {v2, p3}, LOooO0O0/OooO0OO/OooO00o/OooOoO/OooO00o;-><init>(Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadCallback;)V

    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    new-instance v1, Lcom/android/camera/multi/PluginInfo;

    invoke-direct {v1, v0}, Lcom/android/camera/multi/PluginInfo;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Lcom/android/camera/resource/BaseObservableRequest;->startObservable(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p2

    goto :goto_0

    :cond_0
    new-instance p2, Lcom/android/camera/multi/PluginInfoRequest;

    invoke-direct {p2, v0}, Lcom/android/camera/multi/PluginInfoRequest;-><init>(Ljava/lang/String;)V

    const-class v0, Lcom/android/camera/multi/PluginInfo;

    invoke-virtual {p2, v0}, Lcom/android/camera/resource/BaseObservableRequest;->startObservable(Ljava/lang/Class;)Lio/reactivex/Observable;

    move-result-object p2

    new-instance v0, LOooO0O0/OooO0OO/OooO00o/OooOoO/OooO0OO;

    invoke-direct {v0, v1, p3}, LOooO0O0/OooO0OO/OooO00o/OooOoO/OooO0OO;-><init>(Ljava/lang/String;Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadCallback;)V

    invoke-virtual {p2, v0}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p2

    :goto_0
    new-instance v0, LOooO0O0/OooO0OO/OooO00o/OooOoO/OooO0Oo;

    invoke-direct {v0, p0, p3, p1}, LOooO0O0/OooO0OO/OooO00o/OooOoO/OooO0Oo;-><init>(Lcom/android/camera/multi/SampleDownloader;Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadCallback;I)V

    new-instance v1, LOooO0O0/OooO0OO/OooO00o/OooOoO/OooO0o0;

    invoke-direct {v1, p0, p3, p1}, LOooO0O0/OooO0OO/OooO00o/OooOoO/OooO0o0;-><init>(Lcom/android/camera/multi/SampleDownloader;Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadCallback;I)V

    invoke-virtual {p2, v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p2

    iget-object p3, p0, Lcom/android/camera/multi/SampleDownloader;->mDisposableList:Landroid/util/SparseArray;

    invoke-virtual {p3, p1, p2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    return-void
.end method
