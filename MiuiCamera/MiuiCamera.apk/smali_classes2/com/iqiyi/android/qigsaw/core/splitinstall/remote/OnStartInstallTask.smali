.class public final Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/OnStartInstallTask;
.super Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/DefaultTask;
.source ""


# instance fields
.field public final mModuleNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/iqiyi/android/qigsaw/core/splitinstall/protocol/ISplitInstallServiceCallback;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iqiyi/android/qigsaw/core/splitinstall/protocol/ISplitInstallServiceCallback;",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/DefaultTask;-><init>(Lcom/iqiyi/android/qigsaw/core/splitinstall/protocol/ISplitInstallServiceCallback;)V

    iput-object p2, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/OnStartInstallTask;->mModuleNames:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public execute(Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/SplitInstallSupervisor;)V
    .locals 1

    iget-object v0, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/OnStartInstallTask;->mModuleNames:Ljava/util/List;

    invoke-virtual {p1, v0, p0}, Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/SplitInstallSupervisor;->startInstall(Ljava/util/List;Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/SplitInstallSupervisor$Callback;)V

    return-void
.end method

.method public onStartInstall(ILandroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/DefaultTask;->onStartInstall(ILandroid/os/Bundle;)V

    :try_start_0
    iget-object v0, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/DefaultTask;->mCallback:Lcom/iqiyi/android/qigsaw/core/splitinstall/protocol/ISplitInstallServiceCallback;

    invoke-interface {v0, p1, p2}, Lcom/iqiyi/android/qigsaw/core/splitinstall/protocol/ISplitInstallServiceCallback;->onStartInstall(ILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method
