.class public Lcom/android/camera/multi/downloader/DeleteDownloadedFilesTask$DeleteFileFilter;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/FilenameFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/multi/downloader/DeleteDownloadedFilesTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DeleteFileFilter"
.end annotation


# instance fields
.field public isPrefix:Z

.field public regEx:Ljava/lang/String;

.field public final synthetic this$0:Lcom/android/camera/multi/downloader/DeleteDownloadedFilesTask;


# direct methods
.method public constructor <init>(Lcom/android/camera/multi/downloader/DeleteDownloadedFilesTask;ZLjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/multi/downloader/DeleteDownloadedFilesTask$DeleteFileFilter;->this$0:Lcom/android/camera/multi/downloader/DeleteDownloadedFilesTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p2, p0, Lcom/android/camera/multi/downloader/DeleteDownloadedFilesTask$DeleteFileFilter;->isPrefix:Z

    iput-object p3, p0, Lcom/android/camera/multi/downloader/DeleteDownloadedFilesTask$DeleteFileFilter;->regEx:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 0

    iget-boolean p1, p0, Lcom/android/camera/multi/downloader/DeleteDownloadedFilesTask$DeleteFileFilter;->isPrefix:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/camera/multi/downloader/DeleteDownloadedFilesTask$DeleteFileFilter;->regEx:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/camera/multi/downloader/DeleteDownloadedFilesTask$DeleteFileFilter;->regEx:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    :goto_0
    return p1
.end method
