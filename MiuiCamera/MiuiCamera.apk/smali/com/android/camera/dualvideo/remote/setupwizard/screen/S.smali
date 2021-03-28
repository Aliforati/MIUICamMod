.class public Lcom/android/camera/dualvideo/remote/setupwizard/screen/S;
.super Lcom/android/camera/dualvideo/remote/setupwizard/screen/SetupWizardScreen;
.source ""


# instance fields
.field public mAlert:Landroid/widget/ImageView;

.field public mAlertDialog:Landroid/app/AlertDialog;

.field public mAnimation:Landroid/view/animation/RotateAnimation;

.field public final mCancel:Ljava/lang/Runnable;

.field public mConfirmationDialog:Landroid/app/AlertDialog;

.field public mIsSuspended:Z

.field public mRotate:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/dualvideo/remote/setupwizard/screen/SetupWizardScreen;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/S;->mIsSuspended:Z

    new-instance v0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/S$3;

    invoke-direct {v0, p0}, Lcom/android/camera/dualvideo/remote/setupwizard/screen/S$3;-><init>(Lcom/android/camera/dualvideo/remote/setupwizard/screen/S;)V

    iput-object v0, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/S;->mCancel:Ljava/lang/Runnable;

    return-void
.end method

.method public static synthetic access$002(Lcom/android/camera/dualvideo/remote/setupwizard/screen/S;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/S;->mIsSuspended:Z

    return p1
.end method

.method public static synthetic access$100(Lcom/android/camera/dualvideo/remote/setupwizard/screen/S;)Landroid/app/AlertDialog;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/S;->mConfirmationDialog:Landroid/app/AlertDialog;

    return-object p0
.end method

.method public static synthetic access$102(Lcom/android/camera/dualvideo/remote/setupwizard/screen/S;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    iput-object p1, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/S;->mConfirmationDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method public static synthetic access$200(Lcom/android/camera/dualvideo/remote/setupwizard/screen/S;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/dualvideo/remote/setupwizard/screen/S;->showNextScreenIfReady()V

    return-void
.end method

.method public static synthetic access$300(Lcom/android/camera/dualvideo/remote/setupwizard/screen/S;)Landroid/app/AlertDialog;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/S;->mAlertDialog:Landroid/app/AlertDialog;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/android/camera/dualvideo/remote/setupwizard/screen/S;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/S;->mAlert:Landroid/widget/ImageView;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/android/camera/dualvideo/remote/setupwizard/screen/S;)Landroid/view/animation/RotateAnimation;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/S;->mAnimation:Landroid/view/animation/RotateAnimation;

    return-object p0
.end method

.method public static synthetic access$600(Lcom/android/camera/dualvideo/remote/setupwizard/screen/S;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/S;->mRotate:Landroid/widget/ImageView;

    return-object p0
.end method

.method private showNextScreenIfReady()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/S;->mIsSuspended:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/SetupWizardScreen;->mRemoteDeviceList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-static {}, Lcom/android/camera/dualvideo/remote/RemoteOnlineController;->current()Lcom/android/camera/dualvideo/remote/RemoteOnlineController;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/SetupWizardScreen;->mRemoteDeviceList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/android/camera/dualvideo/remote/RemoteOnlineController;->populateRemoteDeviceList(Ljava/util/List;)I

    iget-object v0, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/SetupWizardScreen;->mRemoteDeviceList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/SetupWizardScreen;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/S;->mCancel:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/SetupWizardScreen;->mSetupWizard:Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard;

    sget-object v1, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard$Type;->CONN:Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard$Type;

    invoke-virtual {v0, v1}, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard;->show(Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard$Type;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public onAvailabilityStateChanged(Lcom/android/camera/dualvideo/remote/RemoteDevice;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/dualvideo/remote/setupwizard/screen/S;->showNextScreenIfReady()V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 10

    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f10072b

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const/4 v0, 0x0

    const v1, 0x7f100296

    invoke-virtual {p1, v1, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v1, 0x7f10029c

    invoke-virtual {p1, v1, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v2, 0x0

    const v3, 0x7f0c0127

    invoke-virtual {v1, v3, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0, v0}, Lcom/android/camera/dualvideo/remote/setupwizard/screen/S;->onViewCreated(Landroid/view/View;)V

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/S;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {p1, v2}, Landroid/app/AlertDialog;->setCancelable(Z)V

    iget-object p1, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/S;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {p1, v2}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    new-instance p1, Landroid/view/animation/RotateAnimation;

    const/4 v4, 0x0

    const/high16 v5, 0x43b40000    # 360.0f

    const/4 v6, 0x1

    const/high16 v7, 0x3f000000    # 0.5f

    const/4 v8, 0x1

    const/high16 v9, 0x3f000000    # 0.5f

    move-object v3, p1

    invoke-direct/range {v3 .. v9}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    iput-object p1, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/S;->mAnimation:Landroid/view/animation/RotateAnimation;

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p1, v0}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object p1, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/S;->mAnimation:Landroid/view/animation/RotateAnimation;

    const-wide/16 v0, 0x3e8

    invoke-virtual {p1, v0, v1}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    iget-object p1, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/S;->mAnimation:Landroid/view/animation/RotateAnimation;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/view/animation/RotateAnimation;->setRepeatCount(I)V

    iget-object p1, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/S;->mAnimation:Landroid/view/animation/RotateAnimation;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/animation/RotateAnimation;->setFillAfter(Z)V

    iget-object p1, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/S;->mAnimation:Landroid/view/animation/RotateAnimation;

    invoke-virtual {p1, v0}, Landroid/view/animation/RotateAnimation;->setRepeatMode(I)V

    iget-object p1, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/S;->mAlertDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/android/camera/dualvideo/remote/setupwizard/screen/SetupWizardScreen;->onPause()V

    iget-object v0, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/S;->mConfirmationDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/S;->mConfirmationDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/S;->mIsSuspended:Z

    iget-object v0, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/SetupWizardScreen;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/S;->mCancel:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onPrepareDialog(Landroid/app/Dialog;)V
    .locals 3

    check-cast p1, Landroid/app/AlertDialog;

    const/4 v0, -0x2

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    new-instance v1, Lcom/android/camera/dualvideo/remote/setupwizard/screen/S$1;

    invoke-direct {v1, p0}, Lcom/android/camera/dualvideo/remote/setupwizard/screen/S$1;-><init>(Lcom/android/camera/dualvideo/remote/setupwizard/screen/S;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    new-instance v1, Lcom/android/camera/dualvideo/remote/setupwizard/screen/S$2;

    invoke-direct {v1, p0}, Lcom/android/camera/dualvideo/remote/setupwizard/screen/S$2;-><init>(Lcom/android/camera/dualvideo/remote/setupwizard/screen/S;)V

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/S;->mAlert:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/S;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/S;->mRotate:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/S;->mAnimation:Landroid/view/animation/RotateAnimation;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    invoke-static {}, Lcom/android/camera/dualvideo/remote/RemoteOnlineController;->current()Lcom/android/camera/dualvideo/remote/RemoteOnlineController;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/android/camera/dualvideo/remote/RemoteOnlineController;->stopNetworkServer()V

    invoke-virtual {p1}, Lcom/android/camera/dualvideo/remote/RemoteOnlineController;->startNetworkServer()V

    :cond_1
    iget-object p1, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/SetupWizardScreen;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/S;->mCancel:Ljava/lang/Runnable;

    const-wide/32 v1, 0xea60

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Lcom/android/camera/dualvideo/remote/setupwizard/screen/SetupWizardScreen;->onResume()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/S;->mIsSuspended:Z

    return-void
.end method

.method public onViewCreated(Landroid/view/View;)V
    .locals 1

    const v0, 0x7f0902f5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/S;->mRotate:Landroid/widget/ImageView;

    const v0, 0x7f09004a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/S;->mAlert:Landroid/widget/ImageView;

    return-void
.end method
