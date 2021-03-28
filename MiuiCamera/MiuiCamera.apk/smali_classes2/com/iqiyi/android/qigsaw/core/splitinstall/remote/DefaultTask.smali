.class public abstract Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/DefaultTask;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;
.implements Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/SplitInstallSupervisor$Callback;


# static fields
.field public static final TAG:Ljava/lang/String; = "Split:DefaultTask"


# instance fields
.field public final installSupervisor:Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/SplitInstallSupervisor;

.field public final mCallback:Lcom/iqiyi/android/qigsaw/core/splitinstall/protocol/ISplitInstallServiceCallback;


# direct methods
.method public constructor <init>(Lcom/iqiyi/android/qigsaw/core/splitinstall/protocol/ISplitInstallServiceCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/DefaultTask;->mCallback:Lcom/iqiyi/android/qigsaw/core/splitinstall/protocol/ISplitInstallServiceCallback;

    invoke-static {}, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitApkInstaller;->getSplitInstallSupervisor()Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/SplitInstallSupervisor;

    move-result-object p1

    iput-object p1, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/DefaultTask;->installSupervisor:Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/SplitInstallSupervisor;

    return-void
.end method


# virtual methods
.method public abstract execute(Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/SplitInstallSupervisor;)V
.end method

.method public onCancelInstall(ILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onDeferredInstall(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onDeferredUninstall(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onError(Landroid/os/Bundle;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/DefaultTask;->mCallback:Lcom/iqiyi/android/qigsaw/core/splitinstall/protocol/ISplitInstallServiceCallback;

    invoke-interface {v0, p1}, Lcom/iqiyi/android/qigsaw/core/splitinstall/protocol/ISplitInstallServiceCallback;->onError(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onGetSession(ILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onGetSessionStates(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onStartInstall(ILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/DefaultTask;->installSupervisor:Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/SplitInstallSupervisor;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/DefaultTask;->execute(Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/SplitInstallSupervisor;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/DefaultTask;->mCallback:Lcom/iqiyi/android/qigsaw/core/splitinstall/protocol/ISplitInstallServiceCallback;

    const/16 v1, -0x65

    invoke-static {v1}, Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/SplitInstallSupervisor;->bundleErrorCode(I)Landroid/os/Bundle;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/iqiyi/android/qigsaw/core/splitinstall/protocol/ISplitInstallServiceCallback;->onError(Landroid/os/Bundle;)V

    const-string v0, "Split:DefaultTask"

    const-string v1, "Have you call Qigsaw#onApplicationCreated method?"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/iqiyi/android/qigsaw/core/common/SplitLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method
