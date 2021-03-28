.class public Lcom/android/camera/CommonRotationLayout;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public mBottomRotationLayout:Landroid/view/View;

.field public mContentRotationLayout:Landroid/view/View;

.field public mLastModuleIndex:I

.field public mLastTargetViewDegree:I

.field public mScreenRotationLayout:Landroid/view/View;

.field public mTopRotationLayout:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1}, Lcom/android/camera/CommonRotationLayout;->initView(Landroid/app/Activity;)V

    return-void
.end method

.method private initView(Landroid/app/Activity;)V
    .locals 1

    const v0, 0x7f0900d6

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/CommonRotationLayout;->mContentRotationLayout:Landroid/view/View;

    const v0, 0x7f09037e

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/CommonRotationLayout;->mTopRotationLayout:Landroid/view/View;

    const v0, 0x7f09008b

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/CommonRotationLayout;->mBottomRotationLayout:Landroid/view/View;

    const v0, 0x7f09016f

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/CommonRotationLayout;->mScreenRotationLayout:Landroid/view/View;

    return-void
.end method

.method private isForceHorizontalOrientation(I)Z
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0xb9

    if-ne p1, v1, :cond_0

    return v0

    :cond_0
    const/16 v1, 0xb3

    if-ne p1, v1, :cond_1

    return v0

    :cond_1
    const/16 v1, 0xd4

    if-ne p1, v1, :cond_2

    return v0

    :cond_2
    const/16 v1, 0xbd

    if-ne p1, v1, :cond_3

    return v0

    :cond_3
    const/16 v1, 0xcf

    if-ne p1, v1, :cond_4

    return v0

    :cond_4
    const/16 v1, 0xd5

    if-ne p1, v1, :cond_5

    return v0

    :cond_5
    const/16 v1, 0xd0

    if-ne p1, v1, :cond_6

    return v0

    :cond_6
    const/16 v1, 0xb6

    if-ne p1, v1, :cond_7

    return v0

    :cond_7
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public provideOrientationChanged(ZII)V
    .locals 6

    rsub-int p3, p3, 0x168

    rem-int/lit16 p3, p3, 0x168

    invoke-static {}, Lcom/android/camera/Display;->getScreenOrientation()I

    move-result v0

    iget v1, p0, Lcom/android/camera/CommonRotationLayout;->mLastModuleIndex:I

    invoke-direct {p0, v1}, Lcom/android/camera/CommonRotationLayout;->isForceHorizontalOrientation(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, p2}, Lcom/android/camera/CommonRotationLayout;->isForceHorizontalOrientation(I)Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/camera/CommonRotationLayout;->mLastTargetViewDegree:I

    if-ne p3, v1, :cond_0

    return-void

    :cond_0
    iget v1, p0, Lcom/android/camera/CommonRotationLayout;->mLastModuleIndex:I

    invoke-direct {p0, v1}, Lcom/android/camera/CommonRotationLayout;->isForceHorizontalOrientation(I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, p2}, Lcom/android/camera/CommonRotationLayout;->isForceHorizontalOrientation(I)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    invoke-direct {p0, p2}, Lcom/android/camera/CommonRotationLayout;->isForceHorizontalOrientation(I)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    new-array v1, v3, [Landroid/view/View;

    iget-object v4, p0, Lcom/android/camera/CommonRotationLayout;->mTopRotationLayout:Landroid/view/View;

    aput-object v4, v1, v2

    invoke-virtual {p0, p1, v2, v0, v1}, Lcom/android/camera/CommonRotationLayout;->updateOrientationLayoutRotation(ZII[Landroid/view/View;)V

    goto :goto_0

    :cond_2
    new-array v1, v3, [Landroid/view/View;

    iget-object v4, p0, Lcom/android/camera/CommonRotationLayout;->mTopRotationLayout:Landroid/view/View;

    aput-object v4, v1, v2

    invoke-virtual {p0, p1, p3, v0, v1}, Lcom/android/camera/CommonRotationLayout;->updateOrientationLayoutRotation(ZII[Landroid/view/View;)V

    :goto_0
    const/16 v1, 0xb6

    if-ne p2, v1, :cond_3

    invoke-static {}, LOooO0O0/OooO0o0/OooO00o/OooO0O0;->o0O00O()LOooO0O0/OooO0o0/OooO00o/OooO0O0;

    move-result-object v1

    invoke-static {}, Lcom/android/camera/Display;->getDisplayRatio()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, LOooO0O0/OooO0o0/OooO00o/OooO0O0;->OooO0O0(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0x5a

    new-array v4, v3, [Landroid/view/View;

    iget-object v5, p0, Lcom/android/camera/CommonRotationLayout;->mBottomRotationLayout:Landroid/view/View;

    aput-object v5, v4, v2

    invoke-virtual {p0, p1, v1, v3, v4}, Lcom/android/camera/CommonRotationLayout;->updateOrientationLayoutRotation(ZII[Landroid/view/View;)V

    goto :goto_1

    :cond_3
    new-array v1, v3, [Landroid/view/View;

    iget-object v4, p0, Lcom/android/camera/CommonRotationLayout;->mBottomRotationLayout:Landroid/view/View;

    aput-object v4, v1, v2

    invoke-virtual {p0, p1, p3, v0, v1}, Lcom/android/camera/CommonRotationLayout;->updateOrientationLayoutRotation(ZII[Landroid/view/View;)V

    :goto_1
    const/4 v1, 0x2

    new-array v1, v1, [Landroid/view/View;

    iget-object v4, p0, Lcom/android/camera/CommonRotationLayout;->mContentRotationLayout:Landroid/view/View;

    aput-object v4, v1, v2

    iget-object v2, p0, Lcom/android/camera/CommonRotationLayout;->mScreenRotationLayout:Landroid/view/View;

    aput-object v2, v1, v3

    invoke-virtual {p0, p1, p3, v0, v1}, Lcom/android/camera/CommonRotationLayout;->updateOrientationLayoutRotation(ZII[Landroid/view/View;)V

    iput p3, p0, Lcom/android/camera/CommonRotationLayout;->mLastTargetViewDegree:I

    iput p2, p0, Lcom/android/camera/CommonRotationLayout;->mLastModuleIndex:I

    return-void
.end method

.method public varargs updateOrientationLayoutRotation(ZII[Landroid/view/View;)V
    .locals 7

    if-nez p4, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    array-length v1, p4

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_6

    aget-object v4, p4, v3

    if-eqz p1, :cond_1

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setAlpha(F)V

    new-instance v5, Lcom/android/camera/animation/folme/FolmeAlphaInOnSubscribe;

    invoke-direct {v5, v4}, Lcom/android/camera/animation/folme/FolmeAlphaInOnSubscribe;-><init>(Landroid/view/View;)V

    invoke-static {v5}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout$LayoutParams;

    if-nez p2, :cond_2

    move p3, v2

    :cond_2
    if-eqz p3, :cond_5

    const/4 v6, 0x1

    if-eq p3, v6, :cond_3

    const/4 v6, 0x2

    if-eq p3, v6, :cond_3

    goto :goto_2

    :cond_3
    iget-object v6, p0, Lcom/android/camera/CommonRotationLayout;->mBottomRotationLayout:Landroid/view/View;

    if-ne v4, v6, :cond_4

    invoke-static {}, Lcom/android/camera/Display;->getAppBoundHeight()I

    move-result v6

    add-int/lit16 v6, v6, -0xa0

    iput v6, v5, Landroid/widget/FrameLayout$LayoutParams;->width:I

    invoke-static {}, Lcom/android/camera/Display;->getAppBoundWidth()I

    move-result v6

    iput v6, v5, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const/16 v6, 0x11

    goto :goto_1

    :cond_4
    invoke-static {}, Lcom/android/camera/Display;->getAppBoundWidth()I

    move-result v6

    iput v6, v5, Landroid/widget/FrameLayout$LayoutParams;->width:I

    invoke-static {}, Lcom/android/camera/Display;->getAppBoundWidth()I

    move-result v6

    iput v6, v5, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const/16 v6, 0x10

    :goto_1
    iput v6, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_2

    :cond_5
    invoke-static {}, Lcom/android/camera/Display;->getAppBoundWidth()I

    move-result v6

    iput v6, v5, Landroid/widget/FrameLayout$LayoutParams;->width:I

    invoke-static {}, Lcom/android/camera/Display;->getAppBoundHeight()I

    move-result v6

    iput v6, v5, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iput v2, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    :goto_2
    int-to-float v6, p2

    invoke-virtual {v4, v6}, Landroid/view/View;->setRotation(F)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_6
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_7

    invoke-static {v0}, Lio/reactivex/Completable;->merge(Ljava/lang/Iterable;)Lio/reactivex/Completable;

    move-result-object p1

    invoke-virtual {p1}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    :cond_7
    return-void
.end method
