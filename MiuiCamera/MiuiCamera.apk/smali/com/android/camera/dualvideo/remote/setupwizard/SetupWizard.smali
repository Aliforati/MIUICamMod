.class public Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/camera/dualvideo/remote/AvailabilityCallback;
.implements Lcom/android/camera/dualvideo/remote/ConnectivityCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard$Type;
    }
.end annotation


# instance fields
.field public mCurrentlyShownScreenType:Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard$Type;

.field public final mFragmentManager:Landroidx/fragment/app/FragmentManager;

.field public final mRemoteDeviceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/camera/dualvideo/remote/RemoteDevice;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/fragment/app/FragmentManager;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard;->mRemoteDeviceList:Ljava/util/List;

    iput-object p1, p0, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "FragmentManager must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public dismiss()V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard;->mCurrentlyShownScreenType:Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard$Type;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_1

    const-class v1, Lcom/android/camera/dualvideo/remote/setupwizard/screen/SetupWizardScreen;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1

    check-cast v0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/SetupWizardScreen;

    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    :cond_1
    return-void
.end method

.method public onAvailabilityStateChanged(Lcom/android/camera/dualvideo/remote/RemoteDevice;)V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard;->mCurrentlyShownScreenType:Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard$Type;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_1

    const-class v1, Lcom/android/camera/dualvideo/remote/setupwizard/screen/SetupWizardScreen;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1

    check-cast v0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/SetupWizardScreen;

    invoke-virtual {v0, p1}, Lcom/android/camera/dualvideo/remote/setupwizard/screen/SetupWizardScreen;->onAvailabilityStateChanged(Lcom/android/camera/dualvideo/remote/RemoteDevice;)V

    :cond_1
    return-void
.end method

.method public onConnectivityStateChanged(Lcom/android/camera/dualvideo/remote/RemoteDevice;)V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard;->mCurrentlyShownScreenType:Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard$Type;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_1

    const-class v1, Lcom/android/camera/dualvideo/remote/setupwizard/screen/SetupWizardScreen;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1

    check-cast v0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/SetupWizardScreen;

    invoke-virtual {v0, p1}, Lcom/android/camera/dualvideo/remote/setupwizard/screen/SetupWizardScreen;->onConnectivityStateChanged(Lcom/android/camera/dualvideo/remote/RemoteDevice;)V

    :cond_1
    return-void
.end method

.method public show(Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard$Type;)V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard;->mCurrentlyShownScreenType:Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard$Type;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_1

    const-class v1, Lcom/android/camera/dualvideo/remote/setupwizard/screen/SetupWizardScreen;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1

    check-cast v0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/SetupWizardScreen;

    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    :cond_1
    sget-object v0, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard$1;->$SwitchMap$com$android$camera$dualvideo$remote$setupwizard$SetupWizard$Type:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    new-instance v0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/L;

    invoke-direct {v0}, Lcom/android/camera/dualvideo/remote/setupwizard/screen/L;-><init>()V

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown SetupWizardScreen type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/C;

    invoke-direct {v0}, Lcom/android/camera/dualvideo/remote/setupwizard/screen/C;-><init>()V

    goto :goto_0

    :cond_4
    new-instance v0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/S;

    invoke-direct {v0}, Lcom/android/camera/dualvideo/remote/setupwizard/screen/S;-><init>()V

    goto :goto_0

    :cond_5
    new-instance v0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/H;

    invoke-direct {v0}, Lcom/android/camera/dualvideo/remote/setupwizard/screen/H;-><init>()V

    :goto_0
    iput-object p1, p0, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard;->mCurrentlyShownScreenType:Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard$Type;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {v0, p0}, Lcom/android/camera/dualvideo/remote/setupwizard/screen/SetupWizardScreen;->setSetupWizard(Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard;)V

    iget-object v1, p0, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard;->mRemoteDeviceList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/android/camera/dualvideo/remote/setupwizard/screen/SetupWizardScreen;->setRemoteDeviceList(Ljava/util/List;)V

    iget-object v1, p0, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :cond_6
    return-void
.end method
