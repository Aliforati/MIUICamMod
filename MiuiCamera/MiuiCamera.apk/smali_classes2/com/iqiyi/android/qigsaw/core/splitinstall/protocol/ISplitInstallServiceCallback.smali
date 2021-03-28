.class public interface abstract Lcom/iqiyi/android/qigsaw/core/splitinstall/protocol/ISplitInstallServiceCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iqiyi/android/qigsaw/core/splitinstall/protocol/ISplitInstallServiceCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract onCancelInstall(ILandroid/os/Bundle;)V
.end method

.method public abstract onCompleteInstall(I)V
.end method

.method public abstract onDeferredInstall(Landroid/os/Bundle;)V
.end method

.method public abstract onDeferredUninstall(Landroid/os/Bundle;)V
.end method

.method public abstract onError(Landroid/os/Bundle;)V
.end method

.method public abstract onGetSession(ILandroid/os/Bundle;)V
.end method

.method public abstract onGetSessionStates(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onStartInstall(ILandroid/os/Bundle;)V
.end method
