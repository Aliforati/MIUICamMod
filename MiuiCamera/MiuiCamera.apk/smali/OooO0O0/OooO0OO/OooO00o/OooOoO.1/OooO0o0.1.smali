.class public final synthetic LOooO0O0/OooO0OO/OooO00o/OooOoO/OooO0o0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field private final synthetic OooO00o:Lcom/android/camera/multi/SampleDownloader;

.field private final synthetic OooO0O0:Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadCallback;

.field private final synthetic OooO0OO:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/multi/SampleDownloader;Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadCallback;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO0O0/OooO0OO/OooO00o/OooOoO/OooO0o0;->OooO00o:Lcom/android/camera/multi/SampleDownloader;

    iput-object p2, p0, LOooO0O0/OooO0OO/OooO00o/OooOoO/OooO0o0;->OooO0O0:Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadCallback;

    iput p3, p0, LOooO0O0/OooO0OO/OooO00o/OooOoO/OooO0o0;->OooO0OO:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, LOooO0O0/OooO0OO/OooO00o/OooOoO/OooO0o0;->OooO00o:Lcom/android/camera/multi/SampleDownloader;

    iget-object v1, p0, LOooO0O0/OooO0OO/OooO00o/OooOoO/OooO0o0;->OooO0O0:Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadCallback;

    iget v2, p0, LOooO0O0/OooO0OO/OooO00o/OooOoO/OooO0o0;->OooO0OO:I

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/camera/multi/SampleDownloader;->OooO00o(Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadCallback;ILjava/lang/Throwable;)V

    return-void
.end method
