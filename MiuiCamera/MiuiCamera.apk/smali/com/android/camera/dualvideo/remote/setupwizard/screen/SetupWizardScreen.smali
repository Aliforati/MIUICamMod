.class public abstract Lcom/android/camera/dualvideo/remote/setupwizard/screen/SetupWizardScreen;
.super Landroidx/fragment/app/DialogFragment;
.source ""

# interfaces
.implements Lcom/android/camera/dualvideo/remote/AvailabilityCallback;
.implements Lcom/android/camera/dualvideo/remote/ConnectivityCallback;


# static fields
.field public static final BUTTON_NEGATIVE:I = -0x2

.field public static final BUTTON_POSITIVE:I = -0x1


# instance fields
.field public final mHandler:Landroid/os/Handler;

.field public mRemoteDeviceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/camera/dualvideo/remote/RemoteDevice;",
            ">;"
        }
    .end annotation
.end field

.field public mSelectedRemoteDeviceId:I

.field public mSetupWizard:Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/SetupWizardScreen;->mHandler:Landroid/os/Handler;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/SetupWizardScreen;->mSelectedRemoteDeviceId:I

    return-void
.end method


# virtual methods
.method public getRemoteDeviceById(I)Lcom/android/camera/dualvideo/remote/RemoteDevice;
    .locals 4

    iget-object v0, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/SetupWizardScreen;->mRemoteDeviceList:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/SetupWizardScreen;->mRemoteDeviceList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/dualvideo/remote/RemoteDevice;

    if-eqz v2, :cond_1

    iget v3, v2, Lcom/android/camera/dualvideo/remote/RemoteDevice;->id:I

    if-ne v3, p1, :cond_1

    return-object v2

    :cond_2
    :goto_0
    return-object v1
.end method

.method public getSelectedRemoteDeviceId()I
    .locals 1

    iget v0, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/SetupWizardScreen;->mSelectedRemoteDeviceId:I

    return v0
.end method

.method public onAvailabilityStateChanged(Lcom/android/camera/dualvideo/remote/RemoteDevice;)V
    .locals 0

    return-void
.end method

.method public onConnectivityStateChanged(Lcom/android/camera/dualvideo/remote/RemoteDevice;)V
    .locals 0

    return-void
.end method

.method public onPause()V
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    return-void
.end method

.method public onPrepareDialog(Landroid/app/Dialog;)V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera/dualvideo/remote/setupwizard/screen/SetupWizardScreen;->onPrepareDialog(Landroid/app/Dialog;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public setRemoteDeviceList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/camera/dualvideo/remote/RemoteDevice;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/SetupWizardScreen;->mRemoteDeviceList:Ljava/util/List;

    return-void
.end method

.method public setSetupWizard(Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/SetupWizardScreen;->mSetupWizard:Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard;

    return-void
.end method
