.class public final Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatLibraryLoader;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatLibraryLoader$V25;,
        Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatLibraryLoader$V23;,
        Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatLibraryLoader$V14;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "SplitCompatLibraryLoader"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static load(Ljava/lang/ClassLoader;Ljava/io/File;)V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-string v2, "SplitCompatLibraryLoader"

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_2

    :cond_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v4, 0x2

    const/16 v5, 0x19

    if-ne v3, v5, :cond_1

    sget v3, Landroid/os/Build$VERSION;->PREVIEW_SDK_INT:I

    if-nez v3, :cond_2

    :cond_1
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v3, v5, :cond_3

    :cond_2
    :try_start_0
    invoke-static {p0, p1}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatLibraryLoader$V25;->access$000(Ljava/lang/ClassLoader;Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v3

    new-array v4, v4, [Ljava/lang/Object;

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v1

    const-string v0, "load, v25 fail, sdk: %d, error: %s, try to fallback to V23"

    invoke-static {v2, v0, v4}, Lcom/iqiyi/android/qigsaw/core/common/SplitLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p0, p1}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatLibraryLoader$V23;->access$100(Ljava/lang/ClassLoader;Ljava/io/File;)V

    goto :goto_1

    :cond_3
    const/16 v5, 0x17

    if-lt v3, v5, :cond_4

    :try_start_1
    invoke-static {p0, p1}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatLibraryLoader$V23;->access$100(Ljava/lang/ClassLoader;Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v3

    new-array v4, v4, [Ljava/lang/Object;

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v1

    const-string v0, "load, v23 fail, sdk: %d, error: %s, try to fallback to V14"

    invoke-static {v2, v0, v4}, Lcom/iqiyi/android/qigsaw/core/common/SplitLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    const/16 v0, 0xe

    if-lt v3, v0, :cond_5

    :goto_0
    invoke-static {p0, p1}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatLibraryLoader$V14;->access$200(Ljava/lang/ClassLoader;Ljava/io/File;)V

    :goto_1
    return-void

    :cond_5
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "don\'t support under SDK version 14!"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    :goto_2
    new-array p0, v1, [Ljava/lang/Object;

    aput-object p1, p0, v0

    const-string p1, "load, folder %s is illegal"

    invoke-static {v2, p1, p0}, Lcom/iqiyi/android/qigsaw/core/common/SplitLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
