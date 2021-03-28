.class public Lcom/android/camera/fragment/vv/FragmentVVFeature;
.super Lcom/android/camera/fragment/BaseFragment;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/fragment/vv/FragmentVVFeature$FeatureInstallListener;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "VVFeature"


# instance fields
.field public mDownloadCancelDialog:Landroid/app/AlertDialog;

.field public mDownloadConfirmDialog:Landroid/app/AlertDialog;

.field public mDownloadingFeature:Ljava/lang/String;

.field public mFeatureInstallListener:Lcom/android/camera/fragment/vv/FragmentVVFeature$FeatureInstallListener;

.field public mFeatureName:Ljava/lang/String;

.field public mFixedLayoutMargin:I

.field public mLoadingImage:Lcom/airbnb/lottie/LottieAnimationView;

.field public mLoadingText:Landroid/widget/TextView;

.field public mSrcContainerViewId:I

.field public mSrcFragmentInfo:I

.field public mVMFeature:Lcom/android/camera/data/observeable/VMFeature;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/fragment/BaseFragment;-><init>()V

    return-void
.end method

.method public static synthetic OooO00o(LOooO0O0/OooO00o/OooO00o/OooOoOO/OooO0O0;)Landroid/graphics/ColorFilter;
    .locals 2

    new-instance p0, Landroid/graphics/PorterDuffColorFilter;

    invoke-static {}, Lcom/android/camera/customization/TintColor;->tintColor()I

    move-result v0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p0, v0, v1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    return-object p0
.end method

.method public static synthetic access$002(Lcom/android/camera/fragment/vv/FragmentVVFeature;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    iput-object p1, p0, Lcom/android/camera/fragment/vv/FragmentVVFeature;->mDownloadConfirmDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method public static synthetic access$102(Lcom/android/camera/fragment/vv/FragmentVVFeature;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/camera/fragment/vv/FragmentVVFeature;->mDownloadingFeature:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$202(Lcom/android/camera/fragment/vv/FragmentVVFeature;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    iput-object p1, p0, Lcom/android/camera/fragment/vv/FragmentVVFeature;->mDownloadCancelDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method public static synthetic access$300(Lcom/android/camera/fragment/vv/FragmentVVFeature;)Lcom/android/camera/data/observeable/VMFeature;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/vv/FragmentVVFeature;->mVMFeature:Lcom/android/camera/data/observeable/VMFeature;

    return-object p0
.end method

.method private initFeatureLayout()V
    .locals 4

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVFeature;->mDownloadingFeature:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initFeatureLayout: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/camera/fragment/vv/FragmentVVFeature;->mFeatureName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VVFeature"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVFeature;->mFeatureName:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/camera/data/observeable/VMFeature;->getLocalModeByFeatureName(Ljava/lang/String;)I

    move-result v0

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/global/DataItemGlobal;->getComponentModuleList()Lcom/android/camera/data/data/global/ComponentModuleList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/android/camera/data/data/global/ComponentModuleList;->geItemStringName(IZ)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/fragment/vv/FragmentVVFeature;->mLoadingText:Landroid/widget/TextView;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v2

    const v0, 0x7f1007b3

    invoke-virtual {p0, v0, v3}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVFeature;->mLoadingImage:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->OooO00o()V

    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVFeature;->mLoadingImage:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVFeature;->mLoadingImage:Lcom/airbnb/lottie/LottieAnimationView;

    const v1, 0x7f0803bb

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVFeature;->mLoadingImage:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-static {}, Lcom/android/camera/customization/TintColor;->tintColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    return-void
.end method

.method private onDownloadAndInstallStart(Ljava/lang/String;)V
    .locals 2

    const-string v0, "VVFeature"

    const-string v1, "onDownloadStart"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/camera/fragment/vv/FragmentVVFeature;->mDownloadingFeature:Ljava/lang/String;

    return-void
.end method

.method private onInstallFailed()V
    .locals 3

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVFeature;->mDownloadingFeature:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/camera/fragment/vv/FragmentVVFeature;->mDownloadCancelDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    iput-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVFeature;->mDownloadCancelDialog:Landroid/app/AlertDialog;

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f100369

    const/16 v2, 0x50

    invoke-static {v0, v1, v2}, Lcom/android/camera/ToastUtils;->showToast(Landroid/content/Context;II)V

    invoke-direct {p0}, Lcom/android/camera/fragment/vv/FragmentVVFeature;->initFeatureLayout()V

    return-void
.end method

.method private onInstallStateChanged(Ljava/util/HashMap;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v1, v0, Lcom/android/camera/fragment/vv/FragmentVVFeature;->mDownloadingFeature:Ljava/lang/String;

    if-nez v1, :cond_1

    iget-object v1, v0, Lcom/android/camera/fragment/vv/FragmentVVFeature;->mFeatureName:Ljava/lang/String;

    move-object/from16 v2, p1

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/fragment/vv/FragmentVVFeature;->initFeatureLayout()V

    return-void

    :cond_1
    move-object/from16 v2, p1

    :cond_2
    invoke-virtual/range {p1 .. p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, v0, Lcom/android/camera/fragment/vv/FragmentVVFeature;->mFeatureName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_0

    :cond_3
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Lcom/android/camera/data/observeable/VMFeature;->getScope(I)I

    move-result v4

    const/16 v5, 0x10

    const/4 v6, 0x0

    const v7, 0x7f1007b2

    const-string v8, "VVFeature"

    const/4 v9, 0x1

    if-eq v4, v5, :cond_8

    const/16 v5, 0x100

    if-eq v4, v5, :cond_7

    const/16 v5, 0x1000

    if-eq v4, v5, :cond_4

    goto :goto_0

    :cond_4
    invoke-static {v2}, Lcom/android/camera/data/observeable/VMFeature;->getDownloadingProgress(I)I

    move-result v2

    if-eqz v2, :cond_5

    iget-object v4, v0, Lcom/android/camera/fragment/vv/FragmentVVFeature;->mDownloadingFeature:Ljava/lang/String;

    if-nez v4, :cond_6

    :cond_5
    invoke-direct {v0, v3}, Lcom/android/camera/fragment/vv/FragmentVVFeature;->onDownloadAndInstallStart(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/android/camera/fragment/vv/FragmentVVFeature;->mLoadingImage:Lcom/airbnb/lottie/LottieAnimationView;

    const v4, 0x7f0803dc

    invoke-virtual {v3, v4}, Lcom/airbnb/lottie/LottieAnimationView;->setImageResource(I)V

    iget-object v3, v0, Lcom/android/camera/fragment/vv/FragmentVVFeature;->mLoadingImage:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-static {}, Lcom/android/camera/customization/TintColor;->tintColor()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setColorFilter(I)V

    new-instance v3, Landroid/view/animation/RotateAnimation;

    const/4 v11, 0x0

    const/high16 v12, 0x43b40000    # 360.0f

    const/4 v13, 0x1

    const/high16 v14, 0x3f000000    # 0.5f

    const/4 v15, 0x1

    const/high16 v16, 0x3f000000    # 0.5f

    move-object v10, v3

    invoke-direct/range {v10 .. v16}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0016

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    new-instance v4, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v4}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v3, v4}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v3, v9}, Landroid/view/animation/RotateAnimation;->setRepeatMode(I)V

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/view/animation/RotateAnimation;->setRepeatCount(I)V

    iget-object v4, v0, Lcom/android/camera/fragment/vv/FragmentVVFeature;->mLoadingImage:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_6
    iget-object v3, v0, Lcom/android/camera/fragment/vv/FragmentVVFeature;->mLoadingText:Landroid/widget/TextView;

    new-array v4, v9, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v6

    invoke-virtual {v0, v7, v4}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onStateError: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/fragment/vv/FragmentVVFeature;->onInstallFailed()V

    goto/16 :goto_0

    :cond_8
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onStateChange: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v4, 0x11

    if-eq v2, v4, :cond_b

    const/16 v4, 0x12

    if-eq v2, v4, :cond_b

    const/16 v4, 0x15

    if-eq v2, v4, :cond_a

    const/16 v4, 0x16

    if-eq v2, v4, :cond_9

    goto/16 :goto_0

    :cond_9
    invoke-direct {v0, v3}, Lcom/android/camera/fragment/vv/FragmentVVFeature;->onInstalled(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_a
    iget-object v2, v0, Lcom/android/camera/fragment/vv/FragmentVVFeature;->mLoadingText:Landroid/widget/TextView;

    new-array v3, v9, [Ljava/lang/Object;

    const/16 v4, 0x64

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v0, v7, v3}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v0, Lcom/android/camera/fragment/vv/FragmentVVFeature;->mLoadingText:Landroid/widget/TextView;

    new-instance v3, Lcom/android/camera/fragment/vv/FragmentVVFeature$4;

    invoke-direct {v3, v0}, Lcom/android/camera/fragment/vv/FragmentVVFeature$4;-><init>(Lcom/android/camera/fragment/vv/FragmentVVFeature;)V

    const-wide/16 v4, 0x320

    invoke-virtual {v2, v3, v4, v5}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v2, v0, Lcom/android/camera/fragment/vv/FragmentVVFeature;->mLoadingImage:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->clearAnimation()V

    iget-object v2, v0, Lcom/android/camera/fragment/vv/FragmentVVFeature;->mLoadingImage:Lcom/airbnb/lottie/LottieAnimationView;

    const v3, 0x7f0f0038

    invoke-virtual {v2, v3}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(I)V

    iget-object v2, v0, Lcom/android/camera/fragment/vv/FragmentVVFeature;->mLoadingImage:Lcom/airbnb/lottie/LottieAnimationView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Lcom/airbnb/lottie/LottieAnimationView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v2, v0, Lcom/android/camera/fragment/vv/FragmentVVFeature;->mLoadingImage:Lcom/airbnb/lottie/LottieAnimationView;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Lcom/airbnb/lottie/LottieAnimationView;->setProgress(F)V

    iget-object v2, v0, Lcom/android/camera/fragment/vv/FragmentVVFeature;->mLoadingImage:Lcom/airbnb/lottie/LottieAnimationView;

    new-instance v3, LOooO0O0/OooO00o/OooO00o/OooOo0o/OooO0o0;

    const-string v4, "**"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, LOooO0O0/OooO00o/OooO00o/OooOo0o/OooO0o0;-><init>([Ljava/lang/String;)V

    sget-object v4, LOooO0O0/OooO00o/OooO00o/OooOOO0;->OooOoo:Landroid/graphics/ColorFilter;

    sget-object v5, LOooO0O0/OooO0OO/OooO00o/OooOo0/o000oOoO/OooO0OO;->OooO00o:LOooO0O0/OooO0OO/OooO00o/OooOo0/o000oOoO/OooO0OO;

    invoke-virtual {v2, v3, v4, v5}, Lcom/airbnb/lottie/LottieAnimationView;->OooO00o(LOooO0O0/OooO00o/OooO00o/OooOo0o/OooO0o0;Ljava/lang/Object;LOooO0O0/OooO00o/OooO00o/OooOoOO/OooOO0o;)V

    iget-object v2, v0, Lcom/android/camera/fragment/vv/FragmentVVFeature;->mLoadingImage:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v2}, Lcom/airbnb/lottie/LottieAnimationView;->OooO0oo()V

    goto/16 :goto_0

    :cond_b
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/fragment/vv/FragmentVVFeature;->initFeatureLayout()V

    goto/16 :goto_0

    :cond_c
    return-void
.end method

.method private onInstalled(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVFeature;->mDownloadingFeature:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/camera/fragment/vv/FragmentVVFeature;->mDownloadCancelDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    iput-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVFeature;->mDownloadCancelDialog:Landroid/app/AlertDialog;

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVFeature;->mFeatureInstallListener:Lcom/android/camera/fragment/vv/FragmentVVFeature$FeatureInstallListener;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVFeature;->mFeatureInstallListener:Lcom/android/camera/fragment/vv/FragmentVVFeature$FeatureInstallListener;

    invoke-interface {v0, p1}, Lcom/android/camera/fragment/vv/FragmentVVFeature$FeatureInstallListener;->onInstalled(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/android/camera/Camera;

    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-static {v0}, Lcom/android/camera/module/loader/StartControl;->create(I)Lcom/android/camera/module/loader/StartControl;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/camera/module/loader/StartControl;->setViewConfigType(I)Lcom/android/camera/module/loader/StartControl;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/module/loader/StartControl;->setNeedBlurAnimation(Z)Lcom/android/camera/module/loader/StartControl;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/camera/module/loader/StartControl;->setNeedReConfigureCamera(Z)Lcom/android/camera/module/loader/StartControl;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/camera/Camera;->onModeSelected(Lcom/android/camera/module/loader/StartControl;)V

    :goto_0
    return-void
.end method

.method private showDownloadCancelDialog()V
    .locals 5

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0x3a1

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$MultiFeatureManager;

    iget-object v1, p0, Lcom/android/camera/fragment/vv/FragmentVVFeature;->mDownloadingFeature:Ljava/lang/String;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    new-instance v3, Lcom/android/camera/fragment/vv/FragmentVVFeature$2;

    invoke-direct {v3, p0}, Lcom/android/camera/fragment/vv/FragmentVVFeature$2;-><init>(Lcom/android/camera/fragment/vv/FragmentVVFeature;)V

    const/4 v4, 0x0

    invoke-interface {v0, v1, v2, v4, v3}, Lcom/android/camera/protocol/ModeProtocol$MultiFeatureManager;->showDownloadCancelDialog(Ljava/lang/String;Landroid/content/Context;ZLjava/lang/Runnable;)Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVFeature;->mDownloadCancelDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/android/camera/fragment/vv/FragmentVVFeature$3;

    invoke-direct {v1, p0}, Lcom/android/camera/fragment/vv/FragmentVVFeature$3;-><init>(Lcom/android/camera/fragment/vv/FragmentVVFeature;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public synthetic OooO00o()V
    .locals 2

    const-string v0, "VVFeature"

    const-string v1, "onClick onDownloadAndInstallStart"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVFeature;->mFeatureName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/camera/fragment/vv/FragmentVVFeature;->onDownloadAndInstallStart(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic OooO00o(Lcom/android/camera/data/observeable/RxData$DataWrap;)V
    .locals 0

    invoke-virtual {p1}, Lcom/android/camera/data/observeable/RxData$DataWrap;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/vv/FragmentVVFeature;->onInstallStateChanged(Ljava/util/HashMap;)V

    return-void
.end method

.method public getFragmentInto()I
    .locals 1

    const v0, 0xfffff8

    return v0
.end method

.method public getLayoutResourceId()I
    .locals 1

    const v0, 0x7f0c00ae

    return v0
.end method

.method public initView(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVFeature;->mFeatureName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-static {v0}, Lcom/android/camera/data/observeable/VMFeature;->getFeatureNameByLocalMode(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVFeature;->mFeatureName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/android/camera/Display;->getBottomHeight()I

    move-result v0

    iput v0, p0, Lcom/android/camera/fragment/vv/FragmentVVFeature;->mFixedLayoutMargin:I

    :cond_1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/vv/FragmentVVFeature;->register(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v1, p0, Lcom/android/camera/fragment/vv/FragmentVVFeature;->mFixedLayoutMargin:I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070668

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    const v0, 0x7f09040b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVFeature;->mLoadingText:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    const v0, 0x7f09040a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVFeature;->mLoadingImage:Lcom/airbnb/lottie/LottieAnimationView;

    const v0, 0x7f090409

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-array v0, v1, [Landroid/view/View;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {v0}, Lcom/android/camera/animation/FolmeUtils;->touchScaleTint([Landroid/view/View;)V

    iget-object p1, p0, Lcom/android/camera/fragment/vv/FragmentVVFeature;->mVMFeature:Lcom/android/camera/data/observeable/VMFeature;

    if-nez p1, :cond_2

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemObservable()Lcom/android/camera/data/observeable/DataItemObservable;

    move-result-object p1

    const-class v0, Lcom/android/camera/data/observeable/VMFeature;

    invoke-virtual {p1, v0}, Lcom/android/camera/data/observeable/DataItemObservable;->get(Ljava/lang/Class;)Lcom/android/camera/data/observeable/VMBase;

    move-result-object p1

    check-cast p1, Lcom/android/camera/data/observeable/VMFeature;

    iput-object p1, p0, Lcom/android/camera/fragment/vv/FragmentVVFeature;->mVMFeature:Lcom/android/camera/data/observeable/VMFeature;

    new-instance v0, LOooO0O0/OooO0OO/OooO00o/OooOo0/o000oOoO/OooO0O0;

    invoke-direct {v0, p0}, LOooO0O0/OooO0OO/OooO00o/OooOo0/o000oOoO/OooO0O0;-><init>(Lcom/android/camera/fragment/vv/FragmentVVFeature;)V

    invoke-virtual {p1, p0, v0}, Lcom/android/camera/data/observeable/VMFeature;->startObservable(Landroidx/lifecycle/LifecycleOwner;Lio/reactivex/functions/Consumer;)V

    :cond_2
    return-void
.end method

.method public onBackEvent(I)Z
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/android/camera/fragment/vv/FragmentVVFeature;->mDownloadingFeature:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/android/camera/fragment/vv/FragmentVVFeature;->showDownloadCancelDialog()V

    return v0

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f090409

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/camera/fragment/vv/FragmentVVFeature;->mDownloadingFeature:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "confirmDownload : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVFeature;->mFeatureName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "VVFeature"

    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 v0, 0x3a1

    invoke-virtual {p1, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$MultiFeatureManager;

    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVFeature;->mFeatureName:Ljava/lang/String;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    new-instance v3, LOooO0O0/OooO0OO/OooO00o/OooOo0/o000oOoO/OooO00o;

    invoke-direct {v3, p0}, LOooO0O0/OooO0OO/OooO00o/OooOo0/o000oOoO/OooO00o;-><init>(Lcom/android/camera/fragment/vv/FragmentVVFeature;)V

    invoke-interface {p1, v0, v1, v2, v3}, Lcom/android/camera/protocol/ModeProtocol$MultiFeatureManager;->checkAndShowDownloadConfirmDialog(Ljava/lang/String;Landroid/content/Context;ZLjava/lang/Runnable;)Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/fragment/vv/FragmentVVFeature;->mDownloadConfirmDialog:Landroid/app/AlertDialog;

    if-eqz p1, :cond_2

    new-instance v0, Lcom/android/camera/fragment/vv/FragmentVVFeature$1;

    invoke-direct {v0, p0}, Lcom/android/camera/fragment/vv/FragmentVVFeature$1;-><init>(Lcom/android/camera/fragment/vv/FragmentVVFeature;)V

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVFeature;->mLoadingImage:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVFeature;->mDownloadConfirmDialog:Landroid/app/AlertDialog;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    iput-object v1, p0, Lcom/android/camera/fragment/vv/FragmentVVFeature;->mDownloadConfirmDialog:Landroid/app/AlertDialog;

    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVFeature;->mDownloadCancelDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    iput-object v1, p0, Lcom/android/camera/fragment/vv/FragmentVVFeature;->mDownloadCancelDialog:Landroid/app/AlertDialog;

    :cond_1
    return-void
.end method

.method public onStop()V
    .locals 1

    invoke-super {p0}, Lcom/android/camera/fragment/BaseFragment;->onStop()V

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/vv/FragmentVVFeature;->unRegister(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V

    return-void
.end method

.method public provideAnimateElement(ILjava/util/List;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lio/reactivex/Completable;",
            ">;I)V"
        }
    .end annotation

    invoke-super {p0, p1, p2, p3}, Lcom/android/camera/fragment/BaseFragment;->provideAnimateElement(ILjava/util/List;I)V

    iget p1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-static {p1}, Lcom/android/camera/data/observeable/VMFeature;->getFeatureNameByLocalMode(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p2, p0, Lcom/android/camera/fragment/vv/FragmentVVFeature;->mFeatureName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p2

    const/16 p3, 0x3a1

    invoke-virtual {p2, p3}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p2

    check-cast p2, Lcom/android/camera/protocol/ModeProtocol$MultiFeatureManager;

    if-eqz p2, :cond_0

    invoke-interface {p2, p1}, Lcom/android/camera/protocol/ModeProtocol$MultiFeatureManager;->hasFeatureInstalled(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    :cond_0
    const/4 p2, 0x0

    iput-object p2, p0, Lcom/android/camera/fragment/vv/FragmentVVFeature;->mDownloadingFeature:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/camera/fragment/vv/FragmentVVFeature;->mFeatureName:Ljava/lang/String;

    iget-object p1, p0, Lcom/android/camera/fragment/vv/FragmentVVFeature;->mVMFeature:Lcom/android/camera/data/observeable/VMFeature;

    invoke-virtual {p1}, Lcom/android/camera/data/observeable/VMFeature;->getState()Ljava/util/HashMap;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/vv/FragmentVVFeature;->onInstallStateChanged(Ljava/util/HashMap;)V

    :cond_1
    return-void
.end method

.method public register(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->register(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V

    invoke-virtual {p0, p1, p0}, Lcom/android/camera/fragment/BaseFragment;->registerBackStack(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;)V

    return-void
.end method

.method public setFeatureInstallListener(Lcom/android/camera/fragment/vv/FragmentVVFeature$FeatureInstallListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/fragment/vv/FragmentVVFeature;->mFeatureInstallListener:Lcom/android/camera/fragment/vv/FragmentVVFeature$FeatureInstallListener;

    return-void
.end method

.method public setFeatureName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/fragment/vv/FragmentVVFeature;->mFeatureName:Ljava/lang/String;

    return-void
.end method

.method public setFixedMargin(I)V
    .locals 0

    iput p1, p0, Lcom/android/camera/fragment/vv/FragmentVVFeature;->mFixedLayoutMargin:I

    return-void
.end method

.method public setFrom(II)V
    .locals 0

    iput p1, p0, Lcom/android/camera/fragment/vv/FragmentVVFeature;->mSrcContainerViewId:I

    iput p2, p0, Lcom/android/camera/fragment/vv/FragmentVVFeature;->mSrcFragmentInfo:I

    return-void
.end method

.method public unRegister(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->unRegister(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V

    invoke-virtual {p0, p1, p0}, Lcom/android/camera/fragment/BaseFragment;->unRegisterBackStack(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;)V

    return-void
.end method
