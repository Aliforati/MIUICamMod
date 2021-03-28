.class public Lcom/android/camera/module/impl/component/DisplayGuideImp;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/camera/protocol/ModeProtocol$DisplayGuide;


# static fields
.field public static final FRONT_FACING_DISPLAY_TIP:Ljava/lang/String; = "front_facing_display_tip"

.field public static final TAG:Ljava/lang/String; = "DisplayGuideImp"

.field public static final ULTRA_PIXEL_SELF_DISPLAY_TIP:Ljava/lang/String; = "ultra_pixel_self_display_tip"


# instance fields
.field public mActivity:Lcom/android/camera/ActivityBase;

.field public mDisplayFoldStatusImp:Lcom/android/camera/module/impl/component/DisplayFoldStatusImpl;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/ActivityBase;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/module/impl/component/DisplayGuideImp;->mActivity:Lcom/android/camera/ActivityBase;

    return-void
.end method

.method public static create(Lcom/android/camera/ActivityBase;)Lcom/android/camera/module/impl/component/DisplayGuideImp;
    .locals 1

    new-instance v0, Lcom/android/camera/module/impl/component/DisplayGuideImp;

    invoke-direct {v0, p0}, Lcom/android/camera/module/impl/component/DisplayGuideImp;-><init>(Lcom/android/camera/ActivityBase;)V

    return-object v0
.end method


# virtual methods
.method public dismissFrontFacingDisplayFoldTip()V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/module/impl/component/DisplayGuideImp;->mActivity:Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    const-string v2, "front_facing_display_tip"

    invoke-virtual {v0, v2}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v1, v0}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroidx/fragment/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void
.end method

.method public dismissUltraPixelSelfDisplayTip()V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/module/impl/component/DisplayGuideImp;->mActivity:Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    const-string/jumbo v2, "ultra_pixel_self_display_tip"

    invoke-virtual {v0, v2}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v1, v0}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroidx/fragment/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void
.end method

.method public isShowDisplayTip()Z
    .locals 2

    iget-object v0, p0, Lcom/android/camera/module/impl/component/DisplayGuideImp;->mActivity:Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string/jumbo v1, "ultra_pixel_self_display_tip"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSupportFrontFacingDisplayFoldTip(I)Z
    .locals 2

    const/4 v0, 0x0

    const-string v1, "close_front_facing_displayfold_tip"

    invoke-static {v1, v0}, Lcom/xiaomi/camera/util/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    invoke-static {}, Lcom/android/camera/Display;->getDisplayFoldState()Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    :cond_1
    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    return v0

    :cond_2
    return v1
.end method

.method public isSupportUltraPixelSelf(I)Z
    .locals 2

    invoke-static {}, LOooO0O0/OooO0o0/OooO00o/OooO0O0;->o0O00O()LOooO0O0/OooO0o0/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0o0/OooO00o/OooO0O0;->o00Oo0O0()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/16 v0, 0xaf

    if-eq p1, v0, :cond_1

    return v1

    :cond_1
    invoke-static {}, Lcom/android/camera/CameraSettings;->isUltraPixelSelfEnable()Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    invoke-static {}, Lcom/android/camera/Display;->getDisplayFoldState()Z

    move-result p1

    if-nez p1, :cond_3

    return v1

    :cond_3
    return v0
.end method

.method public registerProtocol()V
    .locals 2

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0x3b2

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->attachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0x3aa

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/impl/component/DisplayFoldStatusImpl;

    iput-object v0, p0, Lcom/android/camera/module/impl/component/DisplayGuideImp;->mDisplayFoldStatusImp:Lcom/android/camera/module/impl/component/DisplayFoldStatusImpl;

    return-void
.end method

.method public showFrontFacingDisplayFoldTip()V
    .locals 5

    iget-object v0, p0, Lcom/android/camera/module/impl/component/DisplayGuideImp;->mActivity:Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    const-string v2, "front_facing_display_tip"

    invoke-virtual {v0, v2}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v1, v3}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroidx/fragment/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    new-instance v1, Lcom/android/camera/fragment/dialog/DisplayFoldTipDialogFragment;

    invoke-direct {v1}, Lcom/android/camera/fragment/dialog/DisplayFoldTipDialogFragment;-><init>()V

    new-instance v3, Lcom/android/camera/module/impl/component/DisplayGuideImp$3;

    invoke-direct {v3, p0}, Lcom/android/camera/module/impl/component/DisplayGuideImp$3;-><init>(Lcom/android/camera/module/impl/component/DisplayGuideImp;)V

    invoke-virtual {v1, v3}, Lcom/android/camera/fragment/dialog/DisplayFoldTipDialogFragment;->setOnClick(Landroid/view/View$OnClickListener;)V

    const v3, 0x7f100292

    invoke-virtual {v1, v3}, Lcom/android/camera/fragment/dialog/DisplayFoldTipDialogFragment;->setTipText(I)V

    const v3, 0x7f0f0003

    invoke-virtual {v1, v3}, Lcom/android/camera/fragment/dialog/DisplayFoldTipDialogFragment;->setAnimRawResId(I)V

    const/4 v3, 0x2

    const v4, 0x7f1100b1

    invoke-virtual {v1, v3, v4}, Landroidx/fragment/app/DialogFragment;->setStyle(II)V

    invoke-virtual {v1, v0, v2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public showUltraPixelSelfDisplayFoldTip()V
    .locals 5

    iget-object v0, p0, Lcom/android/camera/module/impl/component/DisplayGuideImp;->mActivity:Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    const-string/jumbo v2, "ultra_pixel_self_display_tip"

    invoke-virtual {v0, v2}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v1, v3}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroidx/fragment/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    new-instance v1, Lcom/android/camera/fragment/dialog/DisplayFoldTipDialogFragment;

    invoke-direct {v1}, Lcom/android/camera/fragment/dialog/DisplayFoldTipDialogFragment;-><init>()V

    new-instance v3, Lcom/android/camera/module/impl/component/DisplayGuideImp$1;

    invoke-direct {v3, p0}, Lcom/android/camera/module/impl/component/DisplayGuideImp$1;-><init>(Lcom/android/camera/module/impl/component/DisplayGuideImp;)V

    invoke-virtual {v1, v3}, Lcom/android/camera/fragment/dialog/DisplayFoldTipDialogFragment;->setOnClick(Landroid/view/View$OnClickListener;)V

    const v3, 0x7f100291

    invoke-virtual {v1, v3}, Lcom/android/camera/fragment/dialog/DisplayFoldTipDialogFragment;->setTipText(I)V

    const v3, 0x7f0f0003

    invoke-virtual {v1, v3}, Lcom/android/camera/fragment/dialog/DisplayFoldTipDialogFragment;->setAnimRawResId(I)V

    const/4 v3, 0x2

    const v4, 0x7f1100b1

    invoke-virtual {v1, v3, v4}, Landroidx/fragment/app/DialogFragment;->setStyle(II)V

    invoke-virtual {v1, v0, v2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public showUltraPixelSelfDisplayUnfoldTip()V
    .locals 5

    iget-object v0, p0, Lcom/android/camera/module/impl/component/DisplayGuideImp;->mActivity:Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    const-string/jumbo v2, "ultra_pixel_self_display_tip"

    invoke-virtual {v0, v2}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v1, v3}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroidx/fragment/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    new-instance v1, Lcom/android/camera/fragment/dialog/DisplayFoldTipDialogFragment;

    invoke-direct {v1}, Lcom/android/camera/fragment/dialog/DisplayFoldTipDialogFragment;-><init>()V

    new-instance v3, Lcom/android/camera/module/impl/component/DisplayGuideImp$2;

    invoke-direct {v3, p0}, Lcom/android/camera/module/impl/component/DisplayGuideImp$2;-><init>(Lcom/android/camera/module/impl/component/DisplayGuideImp;)V

    invoke-virtual {v1, v3}, Lcom/android/camera/fragment/dialog/DisplayFoldTipDialogFragment;->setOnClick(Landroid/view/View$OnClickListener;)V

    const v3, 0x7f100293

    invoke-virtual {v1, v3}, Lcom/android/camera/fragment/dialog/DisplayFoldTipDialogFragment;->setTipText(I)V

    const v3, 0x7f0f0004

    invoke-virtual {v1, v3}, Lcom/android/camera/fragment/dialog/DisplayFoldTipDialogFragment;->setAnimRawResId(I)V

    const/4 v3, 0x2

    const v4, 0x7f1100b1

    invoke-virtual {v1, v3, v4}, Landroidx/fragment/app/DialogFragment;->setStyle(II)V

    invoke-virtual {v1, v0, v2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public ultraPixelSelf(I)Z
    .locals 2

    invoke-virtual {p0, p1}, Lcom/android/camera/module/impl/component/DisplayGuideImp;->isSupportUltraPixelSelf(I)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-static {}, Lcom/android/camera/CameraSettings;->isUltraPixelSelfEnable()Z

    move-result p1

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/DisplayGuideImp;->showUltraPixelSelfDisplayFoldTip()V

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->setUltraPixelSelf(Z)V

    sget-object p1, Lcom/android/camera/module/impl/component/DisplayGuideImp;->TAG:Ljava/lang/String;

    const-string v0, "close ultra pixel self"

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/DisplayGuideImp;->showUltraPixelSelfDisplayUnfoldTip()V

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->setUltraPixelSelf(Z)V

    sget-object p1, Lcom/android/camera/module/impl/component/DisplayGuideImp;->TAG:Ljava/lang/String;

    const-string v0, "open ultra pixel self"

    :goto_0
    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public unRegisterProtocol()V
    .locals 2

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0x3b2

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->detachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    return-void
.end method
