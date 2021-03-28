.class public Lcom/android/camera/fragment/bottom/action/Pickers;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final TAG:Ljava/lang/String; = "Pickers"


# instance fields
.field public mCameraPicker:Lcom/airbnb/lottie/LottieAnimationView;

.field public mCurrentView:Lcom/airbnb/lottie/LottieAnimationView;

.field public mUpDownAnimFlag:Z

.field public mUpDownSwitcher:Lcom/airbnb/lottie/LottieAnimationView;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/fragment/bottom/action/Pickers;->mUpDownAnimFlag:Z

    if-eqz p2, :cond_0

    const p2, 0x7f0903d1

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object p2, p0, Lcom/android/camera/fragment/bottom/action/Pickers;->mCameraPicker:Lcom/airbnb/lottie/LottieAnimationView;

    const p2, 0x7f0903e8

    goto :goto_0

    :cond_0
    const p2, 0x7f0903d0

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object p2, p0, Lcom/android/camera/fragment/bottom/action/Pickers;->mCameraPicker:Lcom/airbnb/lottie/LottieAnimationView;

    const p2, 0x7f0903e7

    :goto_0
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object p1, p0, Lcom/android/camera/fragment/bottom/action/Pickers;->mUpDownSwitcher:Lcom/airbnb/lottie/LottieAnimationView;

    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/Pickers;->mCameraPicker:Lcom/airbnb/lottie/LottieAnimationView;

    iput-object p1, p0, Lcom/android/camera/fragment/bottom/action/Pickers;->mCurrentView:Lcom/airbnb/lottie/LottieAnimationView;

    return-void
.end method

.method public static synthetic OooO00o(ILandroid/view/View;)V
    .locals 0

    invoke-virtual {p1, p0}, Landroid/view/View;->setBackgroundResource(I)V

    return-void
.end method

.method public static synthetic OooO00o(Landroid/view/View$OnClickListener;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private playAnimation()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/camera/fragment/bottom/action/Pickers;->mUpDownAnimFlag:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/fragment/bottom/action/Pickers;->mUpDownAnimFlag:Z

    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/Pickers;->mUpDownSwitcher:Lcom/airbnb/lottie/LottieAnimationView;

    const v1, 0x7f0f0005

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/fragment/bottom/action/Pickers;->mUpDownAnimFlag:Z

    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/Pickers;->mUpDownSwitcher:Lcom/airbnb/lottie/LottieAnimationView;

    const v1, 0x7f0f0006

    :goto_0
    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(I)V

    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/Pickers;->mUpDownSwitcher:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->OooO0oo()V

    return-void
.end method


# virtual methods
.method public getAllViews()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/camera/fragment/bottom/action/Pickers;->mCameraPicker:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/camera/fragment/bottom/action/Pickers;->mUpDownSwitcher:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public getCurrentView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/Pickers;->mCurrentView:Lcom/airbnb/lottie/LottieAnimationView;

    return-object v0
.end method

.method public hide()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/camera/fragment/bottom/action/Pickers;->getCurrentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/fragment/bottom/action/Pickers;->getCurrentView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/animation/folme/FolmeAlphaOutOnSubscribe;->directSetResult(Landroid/view/View;)V

    return-void
.end method

.method public onClick()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/Pickers;->mCurrentView:Lcom/airbnb/lottie/LottieAnimationView;

    iget-object v1, p0, Lcom/android/camera/fragment/bottom/action/Pickers;->mUpDownSwitcher:Lcom/airbnb/lottie/LottieAnimationView;

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/android/camera/fragment/bottom/action/Pickers;->playAnimation()V

    :cond_0
    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/camera/fragment/bottom/action/Pickers;->getAllViews()Ljava/util/List;

    move-result-object v0

    new-instance v1, LOooO0O0/OooO0OO/OooO00o/OooOo0/Oooo000/OooO00o/OooOO0o;

    invoke-direct {v1, p1}, LOooO0O0/OooO0OO/OooO00o/OooOo0/Oooo000/OooO00o/OooOO0o;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public setContentDescription(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/Pickers;->mCameraPicker:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/camera/fragment/bottom/action/Pickers;->getAllViews()Ljava/util/List;

    move-result-object v0

    new-instance v1, LOooO0O0/OooO0OO/OooO00o/OooOo0/Oooo000/OooO00o/OooOO0O;

    invoke-direct {v1, p1}, LOooO0O0/OooO0OO/OooO00o/OooOo0/Oooo000/OooO00o/OooOO0O;-><init>(Landroid/view/View$OnClickListener;)V

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public show()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/camera/fragment/bottom/action/Pickers;->getCurrentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/fragment/bottom/action/Pickers;->getCurrentView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/animation/folme/FolmeAlphaInOnSubscribe;->directSetResult(Landroid/view/View;)V

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/camera/fragment/bottom/action/Pickers;->getCurrentView()Landroid/view/View;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/android/camera/animation/FolmeUtils;->touchScaleTint([Landroid/view/View;)V

    return-void
.end method

.method public touchScaleTint()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Landroid/view/View;

    iget-object v1, p0, Lcom/android/camera/fragment/bottom/action/Pickers;->mCameraPicker:Lcom/airbnb/lottie/LottieAnimationView;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/camera/fragment/bottom/action/Pickers;->mUpDownSwitcher:Lcom/airbnb/lottie/LottieAnimationView;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/android/camera/animation/FolmeUtils;->touchScaleTint([Landroid/view/View;)V

    return-void
.end method

.method public useDefault(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/camera/fragment/bottom/action/Pickers;->getCurrentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/Pickers;->mCameraPicker:Lcom/airbnb/lottie/LottieAnimationView;

    iput-object p1, p0, Lcom/android/camera/fragment/bottom/action/Pickers;->mCurrentView:Lcom/airbnb/lottie/LottieAnimationView;

    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/Pickers;->mUpDownSwitcher:Lcom/airbnb/lottie/LottieAnimationView;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/Pickers;->mUpDownSwitcher:Lcom/airbnb/lottie/LottieAnimationView;

    iput-object p1, p0, Lcom/android/camera/fragment/bottom/action/Pickers;->mCurrentView:Lcom/airbnb/lottie/LottieAnimationView;

    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/Pickers;->mCameraPicker:Lcom/airbnb/lottie/LottieAnimationView;

    :goto_0
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/Pickers;->mCurrentView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method
