.class public interface abstract Lcom/google/android/play/core/splitinstall/protocol/ISplitInstallServiceProxy;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/IInterface;


# virtual methods
.method public abstract cancelInstall(Ljava/lang/String;ILandroid/os/Bundle;Lcom/google/android/play/core/splitinstall/protocol/ISplitInstallServiceCallbackProxy;)V
.end method

.method public abstract deferredInstall(Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;Lcom/google/android/play/core/splitinstall/protocol/ISplitInstallServiceCallbackProxy;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;",
            "Landroid/os/Bundle;",
            "Lcom/google/android/play/core/splitinstall/protocol/ISplitInstallServiceCallbackProxy;",
            ")V"
        }
    .end annotation
.end method

.method public abstract deferredUninstall(Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;Lcom/google/android/play/core/splitinstall/protocol/ISplitInstallServiceCallbackProxy;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;",
            "Landroid/os/Bundle;",
            "Lcom/google/android/play/core/splitinstall/protocol/ISplitInstallServiceCallbackProxy;",
            ")V"
        }
    .end annotation
.end method

.method public abstract getSessionState(Ljava/lang/String;ILcom/google/android/play/core/splitinstall/protocol/ISplitInstallServiceCallbackProxy;)V
.end method

.method public abstract getSessionStates(Ljava/lang/String;Lcom/google/android/play/core/splitinstall/protocol/ISplitInstallServiceCallbackProxy;)V
.end method

.method public abstract startInstall(Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;Lcom/google/android/play/core/splitinstall/protocol/ISplitInstallServiceCallbackProxy;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;",
            "Landroid/os/Bundle;",
            "Lcom/google/android/play/core/splitinstall/protocol/ISplitInstallServiceCallbackProxy;",
            ")V"
        }
    .end annotation
.end method
