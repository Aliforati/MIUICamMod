.class public final synthetic LOooO0O0/OooO0OO/OooO00o/OooOoO/OooO00o;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field private final synthetic OooO00o:Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO0O0/OooO0OO/OooO00o/OooOoO/OooO00o;->OooO00o:Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadCallback;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, LOooO0O0/OooO0OO/OooO00o/OooOoO/OooO00o;->OooO00o:Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadCallback;

    check-cast p1, Ljava/lang/Long;

    invoke-static {v0, p1}, Lcom/android/camera/multi/SampleDownloader;->OooO0O0(Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadCallback;Ljava/lang/Long;)V

    return-void
.end method
