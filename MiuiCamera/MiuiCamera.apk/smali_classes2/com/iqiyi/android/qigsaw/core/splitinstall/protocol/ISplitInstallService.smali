.class public interface abstract Lcom/iqiyi/android/qigsaw/core/splitinstall/protocol/ISplitInstallService;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iqiyi/android/qigsaw/core/splitinstall/protocol/ISplitInstallService$Stub;
    }
.end annotation


# virtual methods
.method public abstract cancelInstall(Ljava/lang/String;ILandroid/os/Bundle;Lcom/iqiyi/android/qigsaw/core/splitinstall/protocol/ISplitInstallServiceCallback;)V
.end method

.method public abstract deferredInstall(Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;Lcom/iqiyi/android/qigsaw/core/splitinstall/protocol/ISplitInstallServiceCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;",
            "Landroid/os/Bundle;",
            "Lcom/iqiyi/android/qigsaw/core/splitinstall/protocol/ISplitInstallServiceCallback;",
            ")V"
        }
    .end annotation
.end method

.method public abstract deferredUninstall(Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;Lcom/iqiyi/android/qigsaw/core/splitinstall/protocol/ISplitInstallServiceCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;",
            "Landroid/os/Bundle;",
            "Lcom/iqiyi/android/qigsaw/core/splitinstall/protocol/ISplitInstallServiceCallback;",
            ")V"
        }
    .end annotation
.end method

.method public abstract getSessionState(Ljava/lang/String;ILcom/iqiyi/android/qigsaw/core/splitinstall/protocol/ISplitInstallServiceCallback;)V
.end method

.method public abstract getSessionStates(Ljava/lang/String;Lcom/iqiyi/android/qigsaw/core/splitinstall/protocol/ISplitInstallServiceCallback;)V
.end method

.method public abstract startInstall(Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;Lcom/iqiyi/android/qigsaw/core/splitinstall/protocol/ISplitInstallServiceCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;",
            "Landroid/os/Bundle;",
            "Lcom/iqiyi/android/qigsaw/core/splitinstall/protocol/ISplitInstallServiceCallback;",
            ")V"
        }
    .end annotation
.end method
