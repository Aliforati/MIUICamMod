.class public abstract Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstaller;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstaller$InstallException;,
        Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstaller$InstallResult;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract checkSplitMD5(Ljava/io/File;Ljava/lang/String;)V
.end method

.method public abstract createInstalledMark(Ljava/io/File;)Z
.end method

.method public abstract createInstalledMarkLock(Ljava/io/File;Ljava/io/File;)Z
.end method

.method public abstract extractLib(Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;Ljava/io/File;)V
.end method

.method public abstract extractMultiDex(Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;Ljava/io/File;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;",
            "Ljava/io/File;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract install(ZLcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;)Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstaller$InstallResult;
.end method

.method public abstract verifySignature(Ljava/io/File;)V
.end method
