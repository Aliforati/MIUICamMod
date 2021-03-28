.class public Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;
.super Lcom/android/camera/fragment/BaseFragment;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/camera/protocol/ModeProtocol$ModeChangeController;
.implements Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;
.implements Lcom/android/camera/protocol/ModeProtocol$HandleBeautyRecording;
.implements Lcom/android/camera/protocol/ModeProtocol$HandlerSwitcher;
.implements Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;
.implements Lcom/android/camera/ui/ModeSelectView$onModeSelectedListener;
.implements Lcom/android/camera/ui/CameraSnapView$SnapListener;
.implements Lcom/android/camera/protocol/ModeProtocol$BottomMenuProtocol;
.implements Lcom/android/camera/protocol/ModeProtocol$MoreModePopupController;
.implements Lcom/android/camera/ui/DragLayout$OnDragListener;
.implements Lcom/android/camera/ui/ZoomView$zoomValueChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/fragment/bottom/action/FragmentBottomAction$BackgroundType;
    }
.end annotation


# static fields
.field public static final DISPLAY_FOLD_TIP_TIMEOUT:J = 0x2710L

.field public static final FRAGMENT_INFO:I = 0xf1

.field public static final MSG_DISPLAY_TIP_TIMEOUT:I = 0x2

.field public static final MSG_SHOW_PROGRESS:I = 0x1

.field public static final TAG:Ljava/lang/String; = "FragmentBottomAction"


# instance fields
.field public mBackEnable:Z

.field public mBottomActionView:Landroid/widget/FrameLayout;

.field public mBottomAnimator:Landroid/animation/ValueAnimator;

.field public mBottomMenuLayout:Landroid/view/View;

.field public mBottomParentHorizontal:Landroid/view/ViewGroup;

.field public mBottomParentVertical:Landroid/view/ViewGroup;

.field public mBottomRecordingCameraPicker:Landroid/widget/ImageView;

.field public mBottomRecordingTime:Landroid/widget/TextView;

.field public mCameraPickEnable:Z

.field public mCaptureProgressDelay:I

.field public mComponentModuleList:Lcom/android/camera/data/data/global/ComponentModuleList;

.field public mCubicEaseOut:Lmiui/view/animation/CubicEaseOutInterpolator;

.field public mCurrentBeautyActionMenuType:I

.field public mCurrentBottomParent:Landroid/view/ViewGroup;

.field public mCurrentLiveActionMenuType:I

.field public mDocumentContainer:Landroid/view/View;

.field public mDragUpLayout:Lcom/android/camera/ui/DragLayout;

.field public mEdgeHorizonScrollView:Lcom/android/camera/ui/EdgeHorizonScrollView;

.field public mExternalModeTipIcon:Landroid/widget/ImageView;

.field public mExternalModeTipLayout:Lcom/android/camera/ui/CapsuleLayout;

.field public mExternalModeTipText:Landroid/widget/TextView;

.field public mFilterListHeight:I

.field public mFragmentLighting:Lcom/android/camera/fragment/bottom/action/FragmentLighting;

.field public mHandler:Landroid/os/Handler;

.field public mInLoading:Z

.field public mIsBottomRollDown:Z

.field public mIsIntentAction:Z

.field public mIsShowLighting:Z

.field public mIsVideoCast:Z

.field public mLastPauseTime:J

.field public mLongPressBurst:Z

.field public mMimojiBack:Landroid/widget/ImageView;

.field public mModeSelectLayout:Lcom/android/camera/fragment/bottom/BottomActionMenu;

.field public mModeSelectView:Lcom/android/camera/ui/ModeSelectView;

.field public mMoreModePopup:Lcom/android/camera/fragment/mode/FragmentMoreModePopup;

.field public mMoreModeStyle:I

.field public mPickers:Lcom/android/camera/fragment/bottom/action/Pickers;

.field public mPopupMenuLayout:Lcom/android/camera/ui/PopupMenuLayout;

.field public mPostProcess:Landroid/widget/ProgressBar;

.field public mPreGifStatus:Z

.field public mRecordProgressDelay:I

.field public mRecordSaveButton:Landroid/widget/ImageView;

.field public mRecordingPause:Lcom/airbnb/lottie/LottieAnimationView;

.field public mRecordingReverse:Landroid/widget/ImageView;

.field public mRecordingSnap:Landroid/widget/ImageView;

.field public mRecordingSwitch:Lcom/airbnb/lottie/LottieAnimationView;

.field public mReverseDialog:Landroid/app/AlertDialog;

.field public mRootView:Landroid/view/View;

.field public mRotateViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public mShutterButton:Lcom/android/camera/ui/CameraSnapView;

.field public mSineEaseOut:Lmiui/view/animation/SineEaseOutInterpolator;

.field public mSupportOrientation:Z

.field public mThumbnailImage:Landroid/widget/ImageView;

.field public mThumbnailImageLayout:Landroid/view/ViewGroup;

.field public mThumbnailProgress:Landroid/widget/ProgressBar;

.field public mThumbnailUseAsExit:Z

.field public mVMFeature:Lcom/android/camera/data/observeable/VMFeature;

.field public mVideoCaptureEnable:Z

.field public mVideoPauseSupported:Z

.field public mVideoRecordingPaused:Z

.field public mVideoRecordingStarted:Z

.field public mVideoReverseEnable:Z

.field public mZoomViewHorizontal:Lcom/android/camera/ui/ZoomView;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/fragment/BaseFragment;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mMoreModeStyle:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mIsShowLighting:Z

    iput-boolean v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mIsBottomRollDown:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mRotateViews:Ljava/util/List;

    new-instance v0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction$1;

    invoke-direct {v0, p0}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction$1;-><init>(Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;)V

    iput-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public static synthetic OooO00o(Lcom/android/camera/ui/AdjustAnimationView;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/camera/ui/AdjustAnimationView;->startBackgroundAnimator()V

    const/4 p0, 0x4

    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public static synthetic OooO00o(Lcom/android/camera/ui/AdjustAnimationView;Lcom/android/camera/ui/AnimationView;Landroid/view/View;FF)V
    .locals 1

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 p0, 0x0

    invoke-virtual {p2, p0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1}, Lcom/android/camera/ui/AnimationView;->clear()V

    const/high16 p0, 0x3f800000    # 1.0f

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setScaleX(F)V

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setScaleY(F)V

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setX(F)V

    invoke-virtual {p1, p4}, Landroid/widget/ImageView;->setY(F)V

    return-void
.end method

.method public static synthetic OooO00o(Lcom/android/camera/ui/AnimationView;Landroid/animation/ValueAnimator;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAnimationUpdate: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentBottomAction"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/camera/ui/AnimationView;->setProgress(F)V

    return-void
.end method

.method public static synthetic OooO00o(Lcom/android/camera/dualvideo/util/UserSelectData;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/camera/dualvideo/util/UserSelectData;->getmRecordLayoutType()Lcom/android/camera/dualvideo/render/LayoutType;

    move-result-object p0

    sget-object v0, Lcom/android/camera/dualvideo/render/LayoutType;->DOWN_FULL:Lcom/android/camera/dualvideo/render/LayoutType;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic OooO0O0()V
    .locals 2

    const-string v0, "FragmentBottomAction"

    const-string/jumbo v1, "showReverseConfirmDialog onClick negative"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static synthetic access$000(Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;)Landroid/widget/ProgressBar;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mThumbnailProgress:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;)Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mThumbnailImageLayout:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public static synthetic access$1000(Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;)I
    .locals 0

    iget p0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    return p0
.end method

.method public static synthetic access$1102(Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    iput-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mReverseDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method public static synthetic access$1200(Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mVideoPauseSupported:Z

    return p0
.end method

.method public static synthetic access$1300(Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;)Lcom/airbnb/lottie/LottieAnimationView;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mRecordingPause:Lcom/airbnb/lottie/LottieAnimationView;

    return-object p0
.end method

.method public static synthetic access$1400(Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;)I
    .locals 0

    iget p0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    return p0
.end method

.method public static synthetic access$1500(Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;)Lcom/android/camera/fragment/bottom/action/Pickers;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mPickers:Lcom/android/camera/fragment/bottom/action/Pickers;

    return-object p0
.end method

.method public static synthetic access$1600(Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mCameraPickEnable:Z

    return p0
.end method

.method public static synthetic access$1700(Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mVideoCaptureEnable:Z

    return p0
.end method

.method public static synthetic access$1800(Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mVideoReverseEnable:Z

    return p0
.end method

.method public static synthetic access$1900(Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mBackEnable:Z

    return p0
.end method

.method public static synthetic access$200(Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;)Landroid/graphics/Rect;
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->assertThumbnailViewRect()Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$2000(Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mMimojiBack:Landroid/widget/ImageView;

    return-object p0
.end method

.method public static synthetic access$2100(Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;ILjava/util/List;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/camera/fragment/BaseFragment;->animateViews(ILjava/util/List;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic access$2200(Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;)I
    .locals 0

    iget p0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    return p0
.end method

.method public static synthetic access$2300(Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mIsVideoCast:Z

    return p0
.end method

.method public static synthetic access$2400(Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;ILjava/util/List;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/camera/fragment/BaseFragment;->animateViews(ILjava/util/List;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic access$2500(Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;ILjava/util/List;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/camera/fragment/BaseFragment;->animateViews(ILjava/util/List;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic access$2600(Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;)Lcom/android/camera/ui/DragLayout;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mDragUpLayout:Lcom/android/camera/ui/DragLayout;

    return-object p0
.end method

.method public static synthetic access$2700(Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->switchMoreMode(Z)V

    return-void
.end method

.method public static synthetic access$300(Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;Lcom/android/camera/ui/AdjustAnimationView;Lcom/android/camera/ui/AnimationView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->initAnimation(Lcom/android/camera/ui/AdjustAnimationView;Lcom/android/camera/ui/AnimationView;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic access$400(Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;)Lcom/android/camera/ui/CameraSnapView;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mRecordingReverse:Landroid/widget/ImageView;

    return-object p0
.end method

.method public static synthetic access$600(Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;)I
    .locals 0

    iget p0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    return p0
.end method

.method public static synthetic access$700(Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mRecordingSnap:Landroid/widget/ImageView;

    return-object p0
.end method

.method public static synthetic access$800(Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;)Landroid/animation/ValueAnimator;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mBottomAnimator:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method public static synthetic access$900(Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;)Landroid/widget/ProgressBar;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mPostProcess:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method private assertThumbnailViewRect()Landroid/graphics/Rect;
    .locals 4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getThumbnailUpdater()Lcom/android/camera/ThumbnailUpdater;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ThumbnailUpdater;->getViewRect()Landroid/graphics/Rect;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iget-object v2, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mThumbnailImageLayout:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ThumbnailGlobalRect: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "FragmentBottomAction"

    invoke-static {v3, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getThumbnailUpdater()Lcom/android/camera/ThumbnailUpdater;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/camera/ThumbnailUpdater;->setViewRect(Landroid/graphics/Rect;)V

    :cond_1
    return-object v1
.end method

.method private changeBackgroundForDualVideo()V
    .locals 3

    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/16 v1, 0xcc

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/android/camera/dualvideo/ModuleUtil;->isFatScreen()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-static {}, Lcom/android/camera/CameraSettings;->getDualVideoConfig()Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;->getRecordType()Lcom/android/camera/dualvideo/recorder/RecordType;

    move-result-object v0

    sget-object v1, Lcom/android/camera/dualvideo/recorder/RecordType;->STANDALONE:Lcom/android/camera/dualvideo/recorder/RecordType;

    if-ne v0, v1, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    invoke-static {}, Lcom/android/camera/CameraSettings;->getDualVideoConfig()Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;->getSelectedData()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    sget-object v2, LOooO0O0/OooO0OO/OooO00o/OooOo0/Oooo000/OooO00o/OooOO0;->OooO00o:LOooO0O0/OooO0OO/OooO00o/OooOo0/Oooo000/OooO00o/OooOO0;

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v1

    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    sget-object v0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction$BackgroundType;->GRAY:Lcom/android/camera/fragment/bottom/action/FragmentBottomAction$BackgroundType;

    goto :goto_1

    :cond_3
    sget-object v0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction$BackgroundType;->TRANS:Lcom/android/camera/fragment/bottom/action/FragmentBottomAction$BackgroundType;

    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->setBackgroundColor(Lcom/android/camera/fragment/bottom/action/FragmentBottomAction$BackgroundType;)V

    return-void
.end method

.method private changeModeByNewMode(ILjava/lang/String;IZ)V
    .locals 6

    const/16 v0, 0xa6

    if-ne p1, v0, :cond_0

    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, LOooO0O0/OooO0o0/OooO00o/OooO0O0;->o0O00O()LOooO0O0/OooO0o0/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0o0/OooO00o/OooO0O0;->o00OoO0()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p1, 0xb0

    :cond_0
    const/16 v0, 0xa3

    if-eq p1, v0, :cond_1

    const/16 v1, 0xa5

    if-ne p1, v1, :cond_2

    :cond_1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigRatio()Lcom/android/camera/data/data/config/ComponentConfigRatio;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/camera/data/data/config/ComponentConfigRatio;->getMappingModeByRatio(I)I

    move-result p1

    :cond_2
    const/16 v1, 0xcd

    const/4 v2, 0x1

    if-ne p1, v1, :cond_3

    iget v1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/16 v3, 0xbc

    if-eq v1, v3, :cond_3

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningAIWatermark()Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;->resetAIWatermark(Z)V

    :cond_3
    iget v1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    if-ne p1, v1, :cond_4

    return-void

    :cond_4
    const/16 v1, 0xb4

    const/16 v3, 0xa7

    if-ne p1, v3, :cond_5

    invoke-static {}, Lcom/android/camera/CameraSettings;->isFromProVideoMudule()Z

    move-result v4

    if-eqz v4, :cond_5

    move p1, v1

    :cond_5
    iget v4, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/4 v5, 0x0

    if-ne v4, v1, :cond_6

    invoke-static {v2}, Lcom/android/camera/CameraSettings;->setIsFromProVideoMudule(Z)V

    goto :goto_0

    :cond_6
    if-ne v4, v3, :cond_7

    invoke-static {v5}, Lcom/android/camera/CameraSettings;->setIsFromProVideoMudule(Z)V

    :cond_7
    :goto_0
    const/16 v1, 0xd6

    const/16 v3, 0xad

    if-ne p1, v3, :cond_8

    invoke-static {}, Lcom/android/camera/CameraSettings;->isFromSuperNightVideoMudule()Z

    move-result v4

    if-eqz v4, :cond_8

    move p1, v1

    :cond_8
    iget v4, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    if-ne v4, v1, :cond_9

    invoke-static {v2}, Lcom/android/camera/CameraSettings;->setFromSuperNightVideoMudule(Z)V

    goto :goto_1

    :cond_9
    if-ne v4, v3, :cond_a

    invoke-static {v5}, Lcom/android/camera/CameraSettings;->setFromSuperNightVideoMudule(Z)V

    :cond_a
    :goto_1
    iget v1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    if-eq v1, v0, :cond_c

    const/16 v0, 0xb8

    if-eq v1, v0, :cond_b

    goto :goto_2

    :cond_b
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_d

    instance-of v1, v0, Lcom/android/camera/ActivityBase;

    if-eqz v1, :cond_d

    check-cast v0, Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraScreenNail;->setExternalFrameProcessor(Lcom/android/camera/SurfaceTextureScreenNail$ExternalFrameProcessor;)V

    goto :goto_2

    :cond_c
    invoke-static {}, Lcom/android/camera/CameraSettings;->isUltraPixelOn()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa4

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;

    if-eqz v0, :cond_d

    new-array v1, v2, [I

    const/16 v3, 0xd1

    aput v3, v1, v5

    invoke-interface {v0, v1}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->switchOffElementsSilent([I)V

    :cond_d
    :goto_2
    const/16 v0, 0xae

    if-eq p1, v0, :cond_e

    const/16 v0, 0xb7

    if-ne p1, v0, :cond_f

    :cond_e
    invoke-static {}, Lcom/android/camera/CameraSettings;->isLiveModuleClicked()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-static {v2}, Lcom/android/camera/CameraSettings;->setLiveModuleClicked(Z)V

    :cond_f
    invoke-static {}, Lcom/android/camera/data/DataRepository;->provider()Lcom/android/camera/data/provider/DataProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/data/provider/DataProvider;->dataGlobal()Lcom/android/camera/data/provider/DataProvider$ProviderEvent;

    move-result-object v0

    check-cast v0, Lcom/android/camera/data/data/global/DataItemGlobal;

    invoke-direct {p0}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->isThumbLoading()Z

    move-result v1

    if-eqz v1, :cond_10

    return-void

    :cond_10
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v3, 0xa1

    invoke-virtual {v1, v3}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/protocol/ModeProtocol$CameraAction;

    if-eqz v1, :cond_11

    invoke-interface {v1}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->isDoingAction()Z

    move-result v1

    if-eqz v1, :cond_11

    return-void

    :cond_11
    invoke-virtual {v0, p1}, Lcom/android/camera/data/data/global/DataItemGlobal;->setCurrentMode(I)V

    if-nez p4, :cond_12

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p4

    invoke-virtual {p4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p4

    invoke-static {p4}, Lcom/android/camera/lib/compatibility/related/vibrator/ViberatorContext;->getInstance(Landroid/content/Context;)Lcom/android/camera/lib/compatibility/related/vibrator/ViberatorContext;

    move-result-object p4

    invoke-virtual {p4}, Lcom/android/camera/lib/compatibility/related/vibrator/ViberatorContext;->performModeSwitch()V

    :cond_12
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p4

    check-cast p4, Lcom/android/camera/Camera;

    invoke-static {p1}, Lcom/android/camera/module/loader/StartControl;->create(I)Lcom/android/camera/module/loader/StartControl;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/android/camera/module/loader/StartControl;->setStartDelay(I)Lcom/android/camera/module/loader/StartControl;

    move-result-object p1

    const/4 p3, 0x4

    invoke-virtual {p1, p3}, Lcom/android/camera/module/loader/StartControl;->setResetType(I)Lcom/android/camera/module/loader/StartControl;

    move-result-object p1

    const/4 p3, 0x2

    invoke-virtual {p1, p3}, Lcom/android/camera/module/loader/StartControl;->setViewConfigType(I)Lcom/android/camera/module/loader/StartControl;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/android/camera/module/loader/StartControl;->setNeedBlurAnimation(Z)Lcom/android/camera/module/loader/StartControl;

    move-result-object p1

    invoke-virtual {p4, p1}, Lcom/android/camera/Camera;->onModeSelected(Lcom/android/camera/module/loader/StartControl;)V

    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    new-instance p3, LOooO0O0/OooO0OO/OooO00o/OooOo0/Oooo000/OooO00o/OooO0oO;

    invoke-direct {p3, p0, p2}, LOooO0O0/OooO0OO/OooO00o/OooOo0/Oooo000/OooO00o/OooO0oO;-><init>(Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;Ljava/lang/String;)V

    const-wide/16 v0, 0x1f4

    invoke-virtual {p1, p3, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private checkFeatureState()V
    .locals 3

    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-static {v0}, Lcom/android/camera/data/observeable/VMFeature;->getFeatureNameByLocalMode(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0x3a1

    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/protocol/ModeProtocol$MultiFeatureManager;

    invoke-interface {v1, v0}, Lcom/android/camera/protocol/ModeProtocol$MultiFeatureManager;->hasFeatureInstalled(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->updateResourceState(I)V

    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mVMFeature:Lcom/android/camera/data/observeable/VMFeature;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemObservable()Lcom/android/camera/data/observeable/DataItemObservable;

    move-result-object v0

    const-class v1, Lcom/android/camera/data/observeable/VMFeature;

    invoke-virtual {v0, v1}, Lcom/android/camera/data/observeable/DataItemObservable;->get(Ljava/lang/Class;)Lcom/android/camera/data/observeable/VMBase;

    move-result-object v0

    check-cast v0, Lcom/android/camera/data/observeable/VMFeature;

    iput-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mVMFeature:Lcom/android/camera/data/observeable/VMFeature;

    new-instance v1, LOooO0O0/OooO0OO/OooO00o/OooOo0/Oooo000/OooO00o/OooO0o0;

    invoke-direct {v1, p0}, LOooO0O0/OooO0OO/OooO00o/OooOo0/Oooo000/OooO00o/OooO0o0;-><init>(Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;)V

    invoke-virtual {v0, p0, v1}, Lcom/android/camera/data/observeable/VMFeature;->startObservable(Landroidx/lifecycle/LifecycleOwner;Lio/reactivex/functions/Consumer;)V

    :cond_0
    return-void
.end method

.method private findViewByOrientation(Z)V
    .locals 4

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mBottomParentHorizontal:Landroid/view/ViewGroup;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mBottomParentVertical:Landroid/view/ViewGroup;

    :goto_0
    iput-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mCurrentBottomParent:Landroid/view/ViewGroup;

    const/16 v0, 0x8

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mBottomParentHorizontal:Landroid/view/ViewGroup;

    if-eqz p1, :cond_1

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mBottomParentVertical:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_1

    :cond_1
    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mBottomParentVertical:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_1
    const/4 v0, 0x1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mBottomParentHorizontal:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-static {}, Lcom/android/camera/Display;->getBottomBarHeight()I

    move-result v2

    int-to-float v2, v2

    const v3, 0x3f333333    # 0.7f

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iput v2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-static {}, Lcom/android/camera/Display;->getBottomMargin()I

    move-result v2

    iput v2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-static {}, Lcom/android/camera/Display;->getBottomBarHeight()I

    move-result v2

    int-to-float v2, v2

    const v3, 0x3e99999a    # 0.3f

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iput v2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mBottomParentHorizontal:Landroid/view/ViewGroup;

    const v2, 0x7f0903e3

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mThumbnailImageLayout:Landroid/view/ViewGroup;

    const v2, 0x7f0903e1

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mThumbnailImage:Landroid/widget/ImageView;

    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mThumbnailImageLayout:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    new-instance v2, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction$2;

    invoke-direct {v2, p0}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction$2;-><init>(Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;)V

    invoke-virtual {p1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mBottomParentHorizontal:Landroid/view/ViewGroup;

    const v2, 0x7f0903d9

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mThumbnailProgress:Landroid/widget/ProgressBar;

    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mBottomParentHorizontal:Landroid/view/ViewGroup;

    const v2, 0x7f0903d7

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mRecordingPause:Lcom/airbnb/lottie/LottieAnimationView;

    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mBottomParentHorizontal:Landroid/view/ViewGroup;

    const v2, 0x7f090327

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/camera/ui/CameraSnapView;

    iput-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    new-instance p1, Lcom/android/camera/fragment/bottom/action/Pickers;

    iget-object v2, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mBottomParentHorizontal:Landroid/view/ViewGroup;

    invoke-direct {p1, v2, v1}, Lcom/android/camera/fragment/bottom/action/Pickers;-><init>(Landroid/view/ViewGroup;Z)V

    iput-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mPickers:Lcom/android/camera/fragment/bottom/action/Pickers;

    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mBottomParentHorizontal:Landroid/view/ViewGroup;

    const v2, 0x7f0903dd

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mRecordingSnap:Landroid/widget/ImageView;

    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mBottomParentHorizontal:Landroid/view/ViewGroup;

    const v2, 0x7f0903db

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mRecordingReverse:Landroid/widget/ImageView;

    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mBottomParentHorizontal:Landroid/view/ViewGroup;

    const v2, 0x7f0903d2

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mRecordingSwitch:Lcom/airbnb/lottie/LottieAnimationView;

    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mBottomParentHorizontal:Landroid/view/ViewGroup;

    const v2, 0x7f0903d5

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mPostProcess:Landroid/widget/ProgressBar;

    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mBottomParentHorizontal:Landroid/view/ViewGroup;

    const v2, 0x7f0903df

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mRecordSaveButton:Landroid/widget/ImageView;

    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mBottomParentHorizontal:Landroid/view/ViewGroup;

    const v2, 0x7f09023b

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mMimojiBack:Landroid/widget/ImageView;

    invoke-static {}, Lcom/android/camera/Display;->fitDisplayThin()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragment;->getThinAlignHorizontal()I

    move-result p1

    iget-object v2, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mBottomParentHorizontal:Landroid/view/ViewGroup;

    const v3, 0x7f0903e4

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-array v3, v0, [Landroid/view/View;

    aput-object v2, v3, v1

    invoke-virtual {p0, p1, v3}, Lcom/android/camera/fragment/BaseFragment;->alignSnapLeft(I[Landroid/view/View;)V

    const/4 v2, 0x3

    new-array v2, v2, [Landroid/view/View;

    iget-object v3, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mRecordingSwitch:Lcom/airbnb/lottie/LottieAnimationView;

    aput-object v3, v2, v1

    iget-object v3, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mRecordingSnap:Landroid/widget/ImageView;

    aput-object v3, v2, v0

    const/4 v0, 0x2

    iget-object v3, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mRecordingReverse:Landroid/widget/ImageView;

    aput-object v3, v2, v0

    invoke-virtual {p0, p1, v2}, Lcom/android/camera/fragment/BaseFragment;->alignSnapRight(I[Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mPickers:Lcom/android/camera/fragment/bottom/action/Pickers;

    invoke-virtual {v0}, Lcom/android/camera/fragment/bottom/action/Pickers;->getAllViews()Ljava/util/List;

    move-result-object v0

    new-array v1, v1, [Landroid/view/View;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/view/View;

    invoke-virtual {p0, p1, v0}, Lcom/android/camera/fragment/BaseFragment;->alignSnapRight(I[Landroid/view/View;)V

    goto/16 :goto_2

    :cond_2
    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mBottomParentVertical:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-static {}, Lcom/android/camera/Display;->getAppBoundWidth()I

    move-result v1

    invoke-static {v0}, Lcom/android/camera/Display;->getDisplayRect(I)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    iput v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mBottomParentVertical:Landroid/view/ViewGroup;

    const v1, 0x7f0903e5

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mThumbnailImageLayout:Landroid/view/ViewGroup;

    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mBottomParentVertical:Landroid/view/ViewGroup;

    const v1, 0x7f0903e2

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mThumbnailImage:Landroid/widget/ImageView;

    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mThumbnailImageLayout:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    new-instance v1, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction$3;

    invoke-direct {v1, p0}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction$3;-><init>(Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;)V

    invoke-virtual {p1, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mBottomParentVertical:Landroid/view/ViewGroup;

    const v1, 0x7f0903da

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mThumbnailProgress:Landroid/widget/ProgressBar;

    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mBottomParentVertical:Landroid/view/ViewGroup;

    const v1, 0x7f0903d8

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mRecordingPause:Lcom/airbnb/lottie/LottieAnimationView;

    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mBottomParentVertical:Landroid/view/ViewGroup;

    const v1, 0x7f090328

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/camera/ui/CameraSnapView;

    iput-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    new-instance p1, Lcom/android/camera/fragment/bottom/action/Pickers;

    iget-object v1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mBottomParentVertical:Landroid/view/ViewGroup;

    invoke-direct {p1, v1, v0}, Lcom/android/camera/fragment/bottom/action/Pickers;-><init>(Landroid/view/ViewGroup;Z)V

    iput-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mPickers:Lcom/android/camera/fragment/bottom/action/Pickers;

    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mBottomParentVertical:Landroid/view/ViewGroup;

    const v0, 0x7f0903de

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mRecordingSnap:Landroid/widget/ImageView;

    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mBottomParentVertical:Landroid/view/ViewGroup;

    const v0, 0x7f0903dc

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mRecordingReverse:Landroid/widget/ImageView;

    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mBottomParentVertical:Landroid/view/ViewGroup;

    const v0, 0x7f0903d3

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mRecordingSwitch:Lcom/airbnb/lottie/LottieAnimationView;

    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mBottomParentVertical:Landroid/view/ViewGroup;

    const v0, 0x7f0903d6

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mPostProcess:Landroid/widget/ProgressBar;

    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mBottomParentVertical:Landroid/view/ViewGroup;

    const v0, 0x7f0903e0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mRecordSaveButton:Landroid/widget/ImageView;

    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mBottomParentVertical:Landroid/view/ViewGroup;

    const v0, 0x7f09023c

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mMimojiBack:Landroid/widget/ImageView;

    :cond_3
    :goto_2
    return-void
.end method

.method private hideModeOrExternalTipLayout()V
    .locals 4

    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mExternalModeTipLayout:Lcom/android/camera/ui/CapsuleLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mExternalModeTipLayout:Lcom/android/camera/ui/CapsuleLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mExternalModeTipLayout:Lcom/android/camera/ui/CapsuleLayout;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mModeSelectView:Lcom/android/camera/ui/ModeSelectView;

    iget-object v2, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mDragUpLayout:Lcom/android/camera/ui/DragLayout;

    invoke-virtual {v2, v1}, Lcom/android/camera/ui/DragLayout;->setDragEnable(Z)V

    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    invoke-static {v0}, Lcom/android/camera/animation/folme/FolmeAlphaOutOnSubscribe;->directSetResult(Landroid/view/View;)V

    return-void
.end method

.method private initAnimation(Lcom/android/camera/ui/AdjustAnimationView;Lcom/android/camera/ui/AnimationView;Landroid/view/View;)V
    .locals 11

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Landroid/widget/ImageView;->clearAnimation()V

    invoke-static {p2}, Lcom/android/camera/Util;->getLocationOnScreen(Landroid/view/View;)Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/android/camera/ui/AnimationView;->setUp(Landroid/graphics/RectF;)V

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p3, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    div-float/2addr v1, v3

    invoke-virtual {p2}, Landroid/widget/ImageView;->getX()F

    move-result v7

    invoke-virtual {p2}, Landroid/widget/ImageView;->getY()F

    move-result v8

    iget v3, v0, Landroid/graphics/RectF;->left:F

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    iget v4, v0, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v6

    div-float/2addr v6, v5

    add-float/2addr v4, v6

    iget v6, v2, Landroid/graphics/RectF;->left:F

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v9

    div-float/2addr v9, v5

    add-float/2addr v6, v9

    iget v9, v2, Landroid/graphics/RectF;->top:F

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v10

    div-float/2addr v10, v5

    add-float/2addr v9, v10

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "showDocumentReviewViews: startViewBounds = "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", endViewBounds = "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", scale = "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", startCenter = "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "x"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", endCenter = "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "FragmentBottomAction"

    invoke-static {v2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sub-float/2addr v6, v3

    invoke-virtual {v0, v6}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sub-float/2addr v9, v4

    invoke-virtual {v0, v9}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-static {}, Lcom/android/camera/Util;->getExitDuration()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    invoke-direct {v1}, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-static {}, Lcom/android/camera/Util;->getSuspendDuration()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, LOooO0O0/OooO0OO/OooO00o/OooOo0/Oooo000/OooO00o/OooO0O0;

    invoke-direct {v1, p2}, LOooO0O0/OooO0OO/OooO00o/OooOo0/Oooo000/OooO00o/OooO0O0;-><init>(Lcom/android/camera/ui/AnimationView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, LOooO0O0/OooO0OO/OooO00o/OooOo0/Oooo000/OooO00o/OooO0oo;

    invoke-direct {v1, p1, p3}, LOooO0O0/OooO0OO/OooO00o/OooOo0/Oooo000/OooO00o/OooO0oo;-><init>(Lcom/android/camera/ui/AdjustAnimationView;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withStartAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, LOooO0O0/OooO0OO/OooO00o/OooOo0/Oooo000/OooO00o/OooO0OO;

    move-object v3, v1

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v3 .. v8}, LOooO0O0/OooO0OO/OooO00o/OooOo0/Oooo000/OooO00o/OooO0OO;-><init>(Lcom/android/camera/ui/AdjustAnimationView;Lcom/android/camera/ui/AnimationView;Landroid/view/View;FF)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method private initThumbLayout()V
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->shouldUseThumbnailAsExit()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->initThumbnailAsThumbnail(Z)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->initThumbnailAsExit()V

    :goto_0
    return-void
.end method

.method private initThumbnailAsExit()V
    .locals 2

    const-string v0, "FragmentBottomAction"

    const-string v1, "initThumbnailAsExit: "

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mThumbnailImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mThumbnailImage:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mThumbnailImage:Landroid/widget/ImageView;

    const v1, 0x7f0803a8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-static {}, Lcom/android/camera/Util;->isAccessible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mThumbnailImage:Landroid/widget/ImageView;

    const v1, 0x7f10007a

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mThumbnailUseAsExit:Z

    return-void
.end method

.method private initThumbnailAsThumbnail(Z)V
    .locals 3

    const-string v0, "FragmentBottomAction"

    const-string v1, "initThumbnailAsThumbnail: "

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mThumbnailUseAsExit:Z

    iget-object v1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mThumbnailImage:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mThumbnailImage:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_0
    invoke-static {}, Lcom/android/camera/Util;->isAccessible()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mThumbnailImage:Landroid/widget/ImageView;

    const v1, 0x7f1000a4

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/android/camera/ActivityBase;

    invoke-virtual {p1}, Lcom/android/camera/ActivityBase;->startFromSecureKeyguard()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1}, Lcom/android/camera/ActivityBase;->isGalleryLocked()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    invoke-virtual {p1}, Lcom/android/camera/ActivityBase;->isJumpBack()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p1}, Lcom/android/camera/ActivityBase;->getThumbnailUpdater()Lcom/android/camera/ThumbnailUpdater;

    move-result-object p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2, v0}, Lcom/android/camera/ThumbnailUpdater;->setThumbnail(Lcom/android/camera/Thumbnail;ZZ)V

    return-void

    :cond_3
    invoke-static {}, Lcom/android/camera/permission/PermissionManager;->checkStoragePermissions()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/android/camera/ActivityBase;->getThumbnailUpdater()Lcom/android/camera/ThumbnailUpdater;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/ThumbnailUpdater;->getLastThumbnail()V

    :cond_4
    return-void
.end method

.method private isFeatureEnable()Z
    .locals 2

    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isFocusOrZoomMoving()Z
    .locals 2

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa6

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->isFocusViewMoving()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->isZoomViewMoving()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isShowMimoji()Z
    .locals 1

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/extra/DataItemLive;->getMimojiStatusManager()Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;->getMimojiPanelState()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isThumbLoading()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mInLoading:Z

    return v0
.end method

.method private needShowZoomView(I)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mVideoRecordingStarted:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/android/camera/CameraSettings;->isSupportRecordingZoom(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private onInstallStateChanged(Ljava/util/HashMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget v2, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-static {v2}, Lcom/android/camera/data/observeable/VMFeature;->getFeatureNameByLocalMode(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/android/camera/data/observeable/VMFeature;->getScope(I)I

    move-result v1

    const/16 v2, 0x10

    if-eq v1, v2, :cond_2

    goto :goto_0

    :cond_2
    const/16 v1, 0x11

    if-eq v0, v1, :cond_4

    const/16 v1, 0x15

    if-eq v0, v1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x7

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->updateResourceState(I)V

    goto :goto_0

    :cond_5
    return-void
.end method

.method private reInitViewBackground(Z)V
    .locals 3

    const/4 v0, 0x6

    new-array v0, v0, [Landroid/view/View;

    iget-object v1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mRecordingSwitch:Lcom/airbnb/lottie/LottieAnimationView;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mMimojiBack:Landroid/widget/ImageView;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mThumbnailImage:Landroid/widget/ImageView;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mRecordingPause:Lcom/airbnb/lottie/LottieAnimationView;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mRecordingSnap:Landroid/widget/ImageView;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mRecordingReverse:Landroid/widget/ImageView;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    invoke-virtual {p0, p1, v0}, Lcom/android/camera/fragment/BaseFragment;->initViewBackground(Z[Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mPickers:Lcom/android/camera/fragment/bottom/action/Pickers;

    invoke-virtual {v0}, Lcom/android/camera/fragment/bottom/action/Pickers;->getAllViews()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/camera/fragment/BaseFragment;->initViewBackground(ZLjava/util/List;)V

    return-void
.end method

.method private resetSmoothZoom()V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->setZoomViewVisible(Z)V

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xef

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$KeyEvent;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$KeyEvent;->resetZoomKeyEvent()V

    :cond_0
    return-void
.end method

.method private setPausePlaySwitchTarget(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mRecordingPause:Lcom/airbnb/lottie/LottieAnimationView;

    const v1, 0x3ec28f5c    # 0.38f

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setScale(F)V

    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mRecordingPause:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz p1, :cond_0

    const p1, 0x7f0f003a

    goto :goto_0

    :cond_0
    const p1, 0x7f0f003b

    :goto_0
    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(I)V

    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mRecordingPause:Lcom/airbnb/lottie/LottieAnimationView;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setProgress(F)V

    return-void
.end method

.method private setProgressBarVisible(I)V
    .locals 4

    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mPostProcess:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    const-wide/16 v0, 0x12c

    const/4 v2, 0x2

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mPostProcess:Landroid/widget/ProgressBar;

    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Landroid/widget/ProgressBar;->setAlpha(F)V

    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {p1}, Lcom/android/camera/ui/CameraSnapView;->isBottomVisible()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {p1}, Lcom/android/camera/ui/CameraSnapView;->isRoundCurrentVisible()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v3, 0x7f0805eb

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v3, 0x7f0805ec

    :goto_0
    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget-object v3, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mPostProcess:Landroid/widget/ProgressBar;

    invoke-virtual {v3}, Landroid/widget/ProgressBar;->getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mPostProcess:Landroid/widget/ProgressBar;

    invoke-virtual {v3}, Landroid/widget/ProgressBar;->getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    :cond_2
    iget-object v3, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mPostProcess:Landroid/widget/ProgressBar;

    invoke-virtual {v3, p1}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mPostProcess:Landroid/widget/ProgressBar;

    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    new-array p1, v2, [F

    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0xa0

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3dcccccd    # 0.1f

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3e800000    # 0.25f

    invoke-direct {v0, v3, v1, v3, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction$7;

    invoke-direct {v0, p0}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction$7;-><init>(Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {p1}, Lcom/android/camera/ui/CameraSnapView;->isRoundBaseVisible()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mPostProcess:Landroid/widget/ProgressBar;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void

    :cond_4
    new-array p1, v2, [F

    fill-array-data p1, :array_1

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v0, Lmiui/view/animation/CubicEaseInInterpolator;

    invoke-direct {v0}, Lmiui/view/animation/CubicEaseInInterpolator;-><init>()V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction$8;

    invoke-direct {v0, p0}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction$8;-><init>(Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction$9;

    invoke-direct {v0, p0}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction$9;-><init>(Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :goto_1
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private setRecordingSwitchTarget(Z)V
    .locals 2

    const v0, 0x7f070596

    const v1, 0x3eb33333    # 0.35f

    invoke-static {v0, v1}, Lcom/android/camera/CameraSettings;->getResourceFloat(IF)F

    move-result v0

    iget-object v1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mRecordingSwitch:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v1, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setScale(F)V

    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mRecordingSwitch:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz p1, :cond_0

    const p1, 0x7f0f0039

    goto :goto_0

    :cond_0
    const p1, 0x7f0f003c

    :goto_0
    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(I)V

    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mRecordingSwitch:Lcom/airbnb/lottie/LottieAnimationView;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setProgress(F)V

    return-void
.end method

.method private setRecordingTimeState(I)V
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mBottomRecordingTime:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mBottomRecordingTime:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    :cond_1
    new-instance p1, Lcom/android/camera/animation/type/AlphaInOnSubscribe;

    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mBottomRecordingCameraPicker:Landroid/widget/ImageView;

    invoke-direct {p1, v0}, Lcom/android/camera/animation/type/AlphaInOnSubscribe;-><init>(Landroid/view/View;)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mBottomRecordingTime:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_3

    new-instance p1, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;

    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mBottomRecordingTime:Landroid/widget/TextView;

    invoke-direct {p1, v0}, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;-><init>(Landroid/view/View;)V

    invoke-static {p1}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object p1

    invoke-virtual {p1}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    :cond_3
    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mBottomRecordingCameraPicker:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_5

    new-instance p1, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;

    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mBottomRecordingCameraPicker:Landroid/widget/ImageView;

    invoke-direct {p1, v0}, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;-><init>(Landroid/view/View;)V

    goto :goto_0

    :cond_4
    new-instance p1, Lcom/android/camera/animation/type/AlphaInOnSubscribe;

    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mBottomRecordingTime:Landroid/widget/TextView;

    invoke-direct {p1, v0}, Lcom/android/camera/animation/type/AlphaInOnSubscribe;-><init>(Landroid/view/View;)V

    :goto_0
    invoke-static {p1}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object p1

    invoke-virtual {p1}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    :cond_5
    :goto_1
    return-void
.end method

.method private setShutterButtonClickEnable(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mIsVideoCast:Z

    if-eqz v1, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/camera/ui/CameraSnapView;->setSnapClickEnable(Z)V

    :cond_1
    return-void
.end method

.method private shouldUseThumbnailAsExit()Z
    .locals 2

    iget-boolean v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mIsIntentAction:Z

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->isVideoCastIntent()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/16 v1, 0xcc

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningDualVideo()Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;->ismDrawGridWindow()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, LOooO0O0/OooO0o0/OooO00o/OooO0O0;->o0O00O()LOooO0O0/OooO0o0/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0o0/OooO00o/OooO0O0;->o00O000()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private showModeOrExternalTipLayout(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mExternalModeTipLayout:Lcom/android/camera/ui/CapsuleLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mExternalModeTipLayout:Lcom/android/camera/ui/CapsuleLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mExternalModeTipLayout:Lcom/android/camera/ui/CapsuleLayout;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mModeSelectView:Lcom/android/camera/ui/ModeSelectView;

    invoke-direct {p0, v1}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->switchMoreMode(Z)V

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    if-eqz p1, :cond_2

    new-instance p1, Lcom/android/camera/animation/folme/FolmeAlphaInOnSubscribe;

    invoke-direct {p1, v0}, Lcom/android/camera/animation/folme/FolmeAlphaInOnSubscribe;-><init>(Landroid/view/View;)V

    invoke-static {p1}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object p1

    invoke-virtual {p1}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    goto :goto_1

    :cond_2
    invoke-static {v0}, Lcom/android/camera/animation/folme/FolmeAlphaInOnSubscribe;->directSetResult(Landroid/view/View;)V

    :goto_1
    return-void
.end method

.method private showNormalMimoji2Bottom()V
    .locals 5

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/extra/DataItemLive;->getMimojiStatusManager()Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;->isInMimojiPreviewPlay()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    const/16 v2, 0xb8

    invoke-static {v2}, Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;->create(I)Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/CameraSnapView;->onForceVideoStateChange(Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;)V

    invoke-static {}, Lcom/android/camera/CameraSettings;->isGifOn()Z

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v0, v3}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;->setMimojiRecordState(I)V

    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mRecordingSwitch:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0, v2, v4, v0}, Lcom/android/camera/fragment/BaseFragment;->animateViews(ILjava/util/List;Landroid/view/View;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mRecordingSwitch:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0, v3, v4, v0}, Lcom/android/camera/fragment/BaseFragment;->animateViews(ILjava/util/List;Landroid/view/View;)V

    :goto_0
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mPickers:Lcom/android/camera/fragment/bottom/action/Pickers;

    invoke-virtual {v0}, Lcom/android/camera/fragment/bottom/action/Pickers;->hide()V

    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mModeSelectLayout:Lcom/android/camera/fragment/bottom/BottomActionMenu;

    invoke-virtual {v0}, Lcom/android/camera/fragment/bottom/BottomActionMenu;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v3, v4, v0}, Lcom/android/camera/fragment/BaseFragment;->animateViews(ILjava/util/List;Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {p0, v3, v4, v0}, Lcom/android/camera/fragment/BaseFragment;->animateViews(ILjava/util/List;Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mMimojiBack:Landroid/widget/ImageView;

    invoke-virtual {p0, v2, v4, v0}, Lcom/android/camera/fragment/BaseFragment;->animateViews(ILjava/util/List;Landroid/view/View;)V

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa4

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->showMimojiPanel(I)Z

    :cond_2
    return-void
.end method

.method private showReverseConfirmDialog()V
    .locals 10

    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mReverseDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/16 v1, 0xae

    if-ne v0, v1, :cond_1

    const-string v0, "live_reverse"

    invoke-static {v0}, Lcom/android/camera/statistic/CameraStatUtils;->trackLiveClick(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const v0, 0x7f10036d

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v0, 0x7f10036c

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction$10;

    invoke-direct {v5, p0}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction$10;-><init>(Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    const v0, 0x7f100758

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    sget-object v9, LOooO0O0/OooO0OO/OooO00o/OooOo0/Oooo000/OooO00o/OooO0o;->OooO00o:LOooO0O0/OooO0OO/OooO00o/OooOo0/Oooo000/OooO00o/OooO0o;

    invoke-static/range {v1 .. v9}, Lcom/android/camera/RotateDialogController;->showSystemAlertDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/Runnable;Ljava/lang/CharSequence;Ljava/lang/Runnable;Ljava/lang/CharSequence;Ljava/lang/Runnable;)Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mReverseDialog:Landroid/app/AlertDialog;

    new-instance v1, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction$11;

    invoke-direct {v1, p0}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction$11;-><init>(Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method

.method private switchModeSelectViewAndZoomViewStyle(I)V
    .locals 4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/android/camera/CameraSettings;->getMoreModeStyle()I

    move-result p1

    iget v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mMoreModeStyle:I

    if-ne p1, v0, :cond_1

    return-void

    :cond_1
    iput p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mMoreModeStyle:I

    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mModeSelectView:Lcom/android/camera/ui/ModeSelectView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mBottomMenuLayout:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070455

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    if-eqz p1, :cond_3

    const/4 v3, 0x1

    if-eq p1, v3, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v3, 0x7f070460

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v3, 0x7f070457

    :goto_0
    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    mul-int/lit8 p1, p1, 0x2

    add-int/2addr p1, v2

    iput p1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    :goto_1
    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mModeSelectView:Lcom/android/camera/ui/ModeSelectView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mModeSelectView:Lcom/android/camera/ui/ModeSelectView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_4
    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mZoomViewHorizontal:Lcom/android/camera/ui/ZoomView;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f07051c

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sub-int/2addr v2, v1

    div-int/lit8 v2, v2, 0x2

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v2, v0

    iput v2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "switchModeSelectViewStyle f = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mComponentModuleList:Lcom/android/camera/data/data/global/ComponentModuleList;

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/ComponentModuleList;->getCommonItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", m = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mComponentModuleList:Lcom/android/camera/data/data/global/ComponentModuleList;

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/ComponentModuleList;->getMoreItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FragmentBottomAction"

    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private switchMoreMode(Z)V
    .locals 7

    invoke-static {}, Lcom/android/camera/ui/DragLayout;->getAnimationConfig()Lcom/android/camera/ui/DragLayout$DragAnimationConfig;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mComponentModuleList:Lcom/android/camera/data/data/global/ComponentModuleList;

    invoke-virtual {v2}, Lcom/android/camera/data/data/global/ComponentModuleList;->getMoreItems()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ui/DragLayout$DragAnimationConfig;->calDragLayoutHeight(Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mDragUpLayout:Lcom/android/camera/ui/DragLayout;

    invoke-virtual {v0}, Lcom/android/camera/ui/DragLayout;->getDragChildren()Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-static {}, Lcom/android/camera/Display;->getBottomHeight()I

    move-result v1

    invoke-static {}, Lcom/android/camera/ui/DragLayout;->getAnimationConfig()Lcom/android/camera/ui/DragLayout$DragAnimationConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/DragLayout$DragAnimationConfig;->getMaxDragDistance()F

    move-result v2

    float-to-int v2, v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-static {}, Lcom/android/camera/CameraSettings;->getMoreModeStyle()I

    move-result v0

    const/16 v1, 0xa0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_3

    iget-object v4, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mComponentModuleList:Lcom/android/camera/data/data/global/ComponentModuleList;

    iget v5, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-virtual {v4, v5}, Lcom/android/camera/data/data/global/ComponentModuleList;->isCommonMode(I)Z

    move-result v4

    if-eqz v4, :cond_3

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mMoreModePopup:Lcom/android/camera/fragment/mode/FragmentMoreModePopup;

    if-nez p1, :cond_0

    new-instance p1, Lcom/android/camera/fragment/mode/FragmentMoreModePopup;

    invoke-direct {p1}, Lcom/android/camera/fragment/mode/FragmentMoreModePopup;-><init>()V

    iput-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mMoreModePopup:Lcom/android/camera/fragment/mode/FragmentMoreModePopup;

    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;

    iget-object v1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mMoreModePopup:Lcom/android/camera/fragment/mode/FragmentMoreModePopup;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mMoreModePopup:Lcom/android/camera/fragment/mode/FragmentMoreModePopup;

    invoke-virtual {v1}, Lcom/android/camera/fragment/BaseFragment;->registerProtocol()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const v4, 0x7f0902c3

    iget-object v5, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mMoreModePopup:Lcom/android/camera/fragment/mode/FragmentMoreModePopup;

    invoke-virtual {v5}, Lcom/android/camera/fragment/BaseFragment;->getFragmentTag()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v4, v5, v6}, Lcom/android/camera/fragment/FragmentUtils;->addFragmentWithTag(Landroidx/fragment/app/FragmentManager;ILandroidx/fragment/app/Fragment;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;->getAnimationComposite()Lcom/android/camera/animation/AnimationComposite;

    move-result-object v1

    iget-object v4, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mMoreModePopup:Lcom/android/camera/fragment/mode/FragmentMoreModePopup;

    invoke-virtual {v4}, Lcom/android/camera/fragment/mode/FragmentMoreModePopup;->getFragmentInto()I

    move-result v4

    iget-object v5, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mMoreModePopup:Lcom/android/camera/fragment/mode/FragmentMoreModePopup;

    invoke-virtual {v1, v4, v5}, Lcom/android/camera/animation/AnimationComposite;->put(ILcom/android/camera/animation/AnimationDelegate$AnimationResource;)V

    iget-object v1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mDragUpLayout:Lcom/android/camera/ui/DragLayout;

    iget-object v4, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mMoreModePopup:Lcom/android/camera/fragment/mode/FragmentMoreModePopup;

    invoke-virtual {v1, v4}, Lcom/android/camera/ui/DragLayout;->addOnDragListener(Lcom/android/camera/ui/DragLayout$OnDragListener;)V

    :cond_1
    iget-object v1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mMoreModePopup:Lcom/android/camera/fragment/mode/FragmentMoreModePopup;

    iget-boolean v4, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mSupportOrientation:Z

    invoke-virtual {v1, v4}, Lcom/android/camera/fragment/mode/FragmentMoreModePopup;->setSupportOrientation(Z)V

    iget-boolean v1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mSupportOrientation:Z

    if-eqz v1, :cond_2

    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mMoreModePopup:Lcom/android/camera/fragment/mode/FragmentMoreModePopup;

    invoke-virtual {p1, v2}, Lcom/android/camera/fragment/BaseFragment;->setDegree(I)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mMoreModePopup:Lcom/android/camera/fragment/mode/FragmentMoreModePopup;

    invoke-interface {p1}, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;->getAnimationComposite()Lcom/android/camera/animation/AnimationComposite;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/animation/AnimationComposite;->getTargetDegree()I

    move-result p1

    invoke-virtual {v1, p1}, Lcom/android/camera/fragment/BaseFragment;->setDegree(I)V

    :goto_0
    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mDragUpLayout:Lcom/android/camera/ui/DragLayout;

    invoke-virtual {p1, v3}, Lcom/android/camera/ui/DragLayout;->setDragEnable(Z)V

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mMoreModePopup:Lcom/android/camera/fragment/mode/FragmentMoreModePopup;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mMoreModePopup:Lcom/android/camera/fragment/mode/FragmentMoreModePopup;

    invoke-virtual {p1}, Lcom/android/camera/fragment/BaseFragment;->unRegisterProtocol()V

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;

    invoke-interface {p1}, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;->getAnimationComposite()Lcom/android/camera/animation/AnimationComposite;

    move-result-object p1

    iget-object v1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mMoreModePopup:Lcom/android/camera/fragment/mode/FragmentMoreModePopup;

    invoke-virtual {v1}, Lcom/android/camera/fragment/mode/FragmentMoreModePopup;->getFragmentInto()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/android/camera/animation/AnimationComposite;->remove(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    iget-object v1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mMoreModePopup:Lcom/android/camera/fragment/mode/FragmentMoreModePopup;

    invoke-virtual {v1}, Lcom/android/camera/fragment/BaseFragment;->getFragmentTag()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/camera/fragment/FragmentUtils;->removeFragmentByTag(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)Z

    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mDragUpLayout:Lcom/android/camera/ui/DragLayout;

    iget-object v1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mMoreModePopup:Lcom/android/camera/fragment/mode/FragmentMoreModePopup;

    invoke-virtual {p1, v1}, Lcom/android/camera/ui/DragLayout;->removeOnDragListener(Lcom/android/camera/ui/DragLayout$OnDragListener;)V

    :cond_4
    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mDragUpLayout:Lcom/android/camera/ui/DragLayout;

    invoke-virtual {p1, v2}, Lcom/android/camera/ui/DragLayout;->setDragEnable(Z)V

    :goto_1
    if-eq v0, v3, :cond_5

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mMoreModePopup:Lcom/android/camera/fragment/mode/FragmentMoreModePopup;

    :cond_5
    return-void
.end method

.method private switchVideoCapture(Landroid/view/View;)V
    .locals 11

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/camera/lib/compatibility/related/vibrator/ViberatorContext;->getInstance(Landroid/content/Context;)Lcom/android/camera/lib/compatibility/related/vibrator/ViberatorContext;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/lib/compatibility/related/vibrator/ViberatorContext;->performSwitchCamera()V

    iget p1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/4 v0, 0x4

    const/16 v1, 0xb4

    const/16 v2, 0xa7

    const v3, 0x7f100423

    const v4, 0x7f10043a

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eq p1, v2, :cond_5

    const/4 v8, 0x5

    const/16 v9, 0xd6

    const/16 v10, 0xad

    if-eq p1, v10, :cond_4

    if-eq p1, v1, :cond_3

    const/16 v0, 0xb8

    if-eq p1, v0, :cond_1

    if-eq p1, v9, :cond_0

    move v3, v5

    goto/16 :goto_4

    :cond_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p1

    invoke-virtual {p1, v10}, Lcom/android/camera/data/data/global/DataItemGlobal;->setCurrentMode(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/android/camera/Camera;

    invoke-static {v10}, Lcom/android/camera/module/loader/StartControl;->create(I)Lcom/android/camera/module/loader/StartControl;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/android/camera/module/loader/StartControl;->setResetType(I)Lcom/android/camera/module/loader/StartControl;

    move-result-object v0

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/extra/DataItemLive;->getMimojiStatusManager()Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;->getMimojiRecordState()I

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1, v7}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;->setMimojiRecordState(I)V

    invoke-virtual {p1, v7}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;->setMimojiRecordStateFromGif(I)V

    move v3, v4

    goto :goto_0

    :cond_2
    invoke-virtual {p1, v5}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;->setMimojiRecordState(I)V

    invoke-virtual {p1, v5}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;->setMimojiRecordStateFromGif(I)V

    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/android/camera/Camera;

    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-static {v0}, Lcom/android/camera/module/loader/StartControl;->create(I)Lcom/android/camera/module/loader/StartControl;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/android/camera/module/loader/StartControl;->setResetType(I)Lcom/android/camera/module/loader/StartControl;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/android/camera/module/loader/StartControl;->setViewConfigType(I)Lcom/android/camera/module/loader/StartControl;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/android/camera/module/loader/StartControl;->setNeedBlurAnimation(Z)Lcom/android/camera/module/loader/StartControl;

    move-result-object v0

    goto :goto_2

    :cond_3
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/android/camera/data/data/global/DataItemGlobal;->setCurrentMode(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/android/camera/Camera;

    invoke-static {v2}, Lcom/android/camera/module/loader/StartControl;->create(I)Lcom/android/camera/module/loader/StartControl;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/camera/module/loader/StartControl;->setResetType(I)Lcom/android/camera/module/loader/StartControl;

    move-result-object v0

    :goto_1
    invoke-virtual {v0, v7}, Lcom/android/camera/module/loader/StartControl;->setNeedBlurAnimation(Z)Lcom/android/camera/module/loader/StartControl;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/android/camera/module/loader/StartControl;->setViewConfigType(I)Lcom/android/camera/module/loader/StartControl;

    move-result-object v0

    :goto_2
    invoke-virtual {p1, v0}, Lcom/android/camera/Camera;->onModeSelected(Lcom/android/camera/module/loader/StartControl;)V

    goto :goto_4

    :cond_4
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p1

    invoke-virtual {p1, v9}, Lcom/android/camera/data/data/global/DataItemGlobal;->setCurrentMode(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/android/camera/Camera;

    invoke-static {v9}, Lcom/android/camera/module/loader/StartControl;->create(I)Lcom/android/camera/module/loader/StartControl;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/android/camera/module/loader/StartControl;->setResetType(I)Lcom/android/camera/module/loader/StartControl;

    move-result-object v0

    goto :goto_3

    :cond_5
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/android/camera/data/data/global/DataItemGlobal;->setCurrentMode(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/android/camera/Camera;

    invoke-static {v1}, Lcom/android/camera/module/loader/StartControl;->create(I)Lcom/android/camera/module/loader/StartControl;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/camera/module/loader/StartControl;->setResetType(I)Lcom/android/camera/module/loader/StartControl;

    move-result-object v0

    :goto_3
    invoke-virtual {v0, v7}, Lcom/android/camera/module/loader/StartControl;->setNeedBlurAnimation(Z)Lcom/android/camera/module/loader/StartControl;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/android/camera/module/loader/StartControl;->setViewConfigType(I)Lcom/android/camera/module/loader/StartControl;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/camera/Camera;->onModeSelected(Lcom/android/camera/module/loader/StartControl;)V

    move v3, v4

    :goto_4
    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mRecordingSwitch:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->OooO0oo()V

    invoke-static {}, Lcom/android/camera/Util;->isAccessible()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p1

    if-eqz p1, :cond_6

    if-lez v3, :cond_6

    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    const v0, 0x7f100089

    new-array v1, v7, [Ljava/lang/Object;

    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :cond_6
    return-void
.end method

.method private updateBottomInRecording(ZZ)V
    .locals 10

    const/4 v0, 0x0

    const/4 v1, -0x1

    const/16 v2, 0x8

    const/4 v3, 0x1

    if-eqz p1, :cond_1

    iget-object v4, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v3}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v4, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mThumbnailProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v4}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v4

    if-eq v4, v2, :cond_0

    iget-object v4, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mThumbnailProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v4, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_0
    iget-object v4, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mRecordingSwitch:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v4}, Lcom/airbnb/lottie/LottieAnimationView;->OooO00o()V

    iget-object v4, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mRecordingSwitch:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0, v1, v0, v4}, Lcom/android/camera/fragment/BaseFragment;->animateViews(ILjava/util/List;Landroid/view/View;)V

    :cond_1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/data/data/extra/DataItemLive;->getTimerBurstController()Lcom/android/camera/timerburst/TimerBurstController;

    move-result-object v4

    iget v5, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/16 v6, 0xa5

    const/4 v7, 0x0

    if-ne v5, v6, :cond_2

    invoke-static {}, Lcom/android/camera/CameraSettings;->isTimerBurstEnable()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v4}, Lcom/android/camera/timerburst/TimerBurstController;->isInTimerBurstShotting()Z

    move-result v4

    if-eqz v4, :cond_2

    move v4, v3

    goto :goto_0

    :cond_2
    move v4, v7

    :goto_0
    iget v5, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/16 v6, 0xd0

    const/16 v8, 0xcf

    if-eq v5, v6, :cond_4

    if-ne v5, v8, :cond_3

    goto :goto_1

    :cond_3
    move v5, v7

    goto :goto_2

    :cond_4
    :goto_1
    move v5, v3

    :goto_2
    iget v6, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/16 v9, 0xa1

    if-eq v6, v9, :cond_10

    const/16 v9, 0xa2

    if-eq v6, v9, :cond_b

    const/16 v9, 0xa9

    if-eq v6, v9, :cond_a

    const/16 v9, 0xac

    if-eq v6, v9, :cond_a

    const/16 v9, 0xae

    if-eq v6, v9, :cond_9

    const/16 v9, 0xcc

    if-eq v6, v9, :cond_b

    if-eq v6, v8, :cond_b

    const/16 v9, 0xb3

    if-eq v6, v9, :cond_9

    const/16 v9, 0xb4

    if-eq v6, v9, :cond_b

    const/16 v8, 0xb7

    if-eq v6, v8, :cond_8

    const/16 v8, 0xb8

    if-eq v6, v8, :cond_6

    const/16 v8, 0xd6

    if-eq v6, v8, :cond_a

    const/16 v8, 0xd7

    if-eq v6, v8, :cond_5

    iput-boolean v7, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mVideoPauseSupported:Z

    iput-boolean v7, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mVideoCaptureEnable:Z

    :goto_3
    iput-boolean v7, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mVideoReverseEnable:Z

    :goto_4
    iput-boolean v7, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mBackEnable:Z

    goto/16 :goto_8

    :cond_5
    iput-boolean v3, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mCameraPickEnable:Z

    iput-boolean v7, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mVideoCaptureEnable:Z

    iput-boolean v3, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mVideoPauseSupported:Z

    goto :goto_3

    :cond_6
    iput-boolean v7, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mCameraPickEnable:Z

    iput-boolean v7, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mVideoPauseSupported:Z

    iput-boolean v7, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mVideoCaptureEnable:Z

    iput-boolean v7, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mVideoReverseEnable:Z

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/data/data/extra/DataItemLive;->getMimojiStatusManager()Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;->isInMimojiCreate()Z

    move-result v6

    if-eqz v6, :cond_7

    iput-boolean v3, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mBackEnable:Z

    iget-object v6, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mRecordingSwitch:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0, v1, v0, v6}, Lcom/android/camera/fragment/BaseFragment;->animateViews(ILjava/util/List;Landroid/view/View;)V

    goto/16 :goto_8

    :cond_7
    iput-boolean v7, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mBackEnable:Z

    iput-boolean v7, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mCameraPickEnable:Z

    goto/16 :goto_8

    :cond_8
    invoke-static {}, LOooO0O0/OooO0o0/OooO00o/OooO0O0;->o0O00O()LOooO0O0/OooO0o0/OooO00o/OooO0O0;

    move-result-object v6

    invoke-virtual {v6}, LOooO0O0/OooO0o0/OooO00o/OooO0O0;->o00o000O()Z

    move-result v6

    if-eqz v6, :cond_9

    iput-boolean v3, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mVideoCaptureEnable:Z

    goto :goto_5

    :cond_9
    iput-boolean v7, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mVideoCaptureEnable:Z

    :goto_5
    iput-boolean v3, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mVideoPauseSupported:Z

    iput-boolean v3, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mVideoReverseEnable:Z

    goto :goto_4

    :cond_a
    iput-boolean v7, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mVideoReverseEnable:Z

    iput-boolean v7, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mVideoCaptureEnable:Z

    iput-boolean v7, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mVideoPauseSupported:Z

    goto :goto_4

    :cond_b
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/data/data/global/DataItemGlobal;->isIntentAction()Z

    move-result v6

    if-nez v6, :cond_d

    invoke-static {}, Lcom/android/camera/CameraSettings;->isVideoCaptureVisible()Z

    move-result v6

    if-eqz v6, :cond_c

    iget v6, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-static {v6}, Lcom/android/camera/CameraSettings;->isHdr10Alive(I)Z

    move-result v6

    if-nez v6, :cond_c

    iget v6, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-static {v6}, Lcom/android/camera/CameraSettings;->isHdr10PlusAlive(I)Z

    move-result v6

    if-nez v6, :cond_c

    move v6, v3

    goto :goto_6

    :cond_c
    move v6, v7

    :goto_6
    iput-boolean v6, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mVideoCaptureEnable:Z

    :cond_d
    iget v6, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    if-ne v6, v8, :cond_e

    if-nez p1, :cond_e

    iput-boolean v7, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mCameraPickEnable:Z

    :cond_e
    invoke-static {}, LOooO0O0/OooO0o0/OooO00o/OooO0OO;->o0000Ooo()Z

    move-result v6

    if-eqz v6, :cond_f

    invoke-static {}, Lcom/android/camera/CameraSettings;->isVideoBokehOn()Z

    move-result v6

    if-nez v6, :cond_f

    move v6, v3

    goto :goto_7

    :cond_f
    move v6, v7

    :goto_7
    iput-boolean v6, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mVideoPauseSupported:Z

    goto/16 :goto_3

    :cond_10
    iput-boolean v7, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mVideoPauseSupported:Z

    iput-boolean v7, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mVideoReverseEnable:Z

    iput-boolean v7, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mBackEnable:Z

    invoke-static {}, LOooO0O0/OooO0o0/OooO00o/OooO0O0;->o0O00O()LOooO0O0/OooO0o0/OooO00o/OooO0O0;

    move-result-object v6

    invoke-virtual {v6}, LOooO0O0/OooO0o0/OooO00o/OooO0O0;->o00o000O()Z

    move-result v6

    if-eqz v6, :cond_11

    iput-boolean v3, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mVideoCaptureEnable:Z

    goto :goto_8

    :cond_11
    iput-boolean v7, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mVideoCaptureEnable:Z

    :goto_8
    if-eqz p1, :cond_12

    iget v6, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-direct {p0, v6}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->needShowZoomView(I)Z

    move-result v6

    if-eqz v6, :cond_13

    invoke-virtual {p0, v3}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->setZoomViewVisible(Z)V

    goto :goto_9

    :cond_12
    invoke-virtual {p0, v7}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->setZoomViewVisible(Z)V

    :cond_13
    :goto_9
    if-eqz p1, :cond_18

    iget-boolean v6, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mVideoCaptureEnable:Z

    const/4 v8, 0x0

    if-eqz v6, :cond_15

    iget-object v6, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mRecordingSnap:Landroid/widget/ImageView;

    const v9, 0x7f0803f4

    invoke-virtual {v6, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v6, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mRecordingSnap:Landroid/widget/ImageView;

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setSoundEffectsEnabled(Z)V

    iget-boolean v6, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mIsVideoCast:Z

    if-eqz v6, :cond_14

    iget-object v6, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mRecordingSnap:Landroid/widget/ImageView;

    invoke-virtual {v6, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_a

    :cond_14
    iget-object v6, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mRecordingSnap:Landroid/widget/ImageView;

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v6, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mRecordingSnap:Landroid/widget/ImageView;

    invoke-static {v6, v8}, Landroidx/core/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    :cond_15
    :goto_a
    iget-boolean v6, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mVideoPauseSupported:Z

    if-eqz v6, :cond_17

    invoke-direct {p0, v7}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->setPausePlaySwitchTarget(Z)V

    iget-object v6, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mRecordingPause:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setSoundEffectsEnabled(Z)V

    iget-boolean v6, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mIsVideoCast:Z

    if-eqz v6, :cond_16

    iget-object v6, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mRecordingPause:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v6, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_b

    :cond_16
    iget-object v6, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mRecordingPause:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v6, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mRecordingPause:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-static {v6, v8}, Landroidx/core/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    :cond_17
    :goto_b
    iget-boolean v6, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mVideoPauseSupported:Z

    if-eqz v6, :cond_18

    iget-object v6, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mRecordingReverse:Landroid/widget/ImageView;

    const v8, 0x7f0803f8

    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v6, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mRecordingReverse:Landroid/widget/ImageView;

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setSoundEffectsEnabled(Z)V

    iget-object v6, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mRecordingReverse:Landroid/widget/ImageView;

    invoke-virtual {v6, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_18
    if-eqz p1, :cond_19

    goto :goto_c

    :cond_19
    move v1, v3

    :goto_c
    iget-object v2, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mModeSelectLayout:Lcom/android/camera/fragment/bottom/BottomActionMenu;

    invoke-virtual {v2}, Lcom/android/camera/fragment/bottom/BottomActionMenu;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v1, v0, v2}, Lcom/android/camera/fragment/BaseFragment;->animateViews(ILjava/util/List;Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mBottomAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mBottomAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1a
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mBottomAnimator:Landroid/animation/ValueAnimator;

    if-eqz p2, :cond_1b

    const-wide/16 v1, 0xc8

    goto :goto_d

    :cond_1b
    const-wide/16 v1, 0x0

    :goto_d
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p2, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mBottomAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction$12;

    invoke-direct {v0, p0, v4, v5, p1}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction$12;-><init>(Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;ZZZ)V

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p2, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mBottomAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction$13;

    invoke-direct {v0, p0, p1, v5}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction$13;-><init>(Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;ZZ)V

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mBottomAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public synthetic OooO00o()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mModeSelectView:Lcom/android/camera/ui/ModeSelectView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mModeSelectView:Lcom/android/camera/ui/ModeSelectView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mModeSelectView:Lcom/android/camera/ui/ModeSelectView;

    iget v1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ModeSelectView;->moveToPosition(I)V

    :cond_0
    return-void
.end method

.method public synthetic OooO00o(I)V
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public synthetic OooO00o(Lcom/android/camera/data/observeable/RxData$DataWrap;)V
    .locals 0

    invoke-virtual {p1}, Lcom/android/camera/data/observeable/RxData$DataWrap;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->onInstallStateChanged(Ljava/util/HashMap;)V

    return-void
.end method

.method public synthetic OooO00o(Lcom/android/camera/protocol/ModeProtocol$CameraAction;)V
    .locals 2

    invoke-direct {p0}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->shouldUseThumbnailAsExit()Z

    move-result v0

    const-string v1, "FragmentBottomAction"

    if-nez v0, :cond_0

    const-string v0, "onClick: v9_thumbnail_layout, onThumbnailClicked"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->assertThumbnailViewRect()Landroid/graphics/Rect;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->onThumbnailClicked(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    const-string v0, "onClick: v9_thumbnail_layout, onReviewCancelClicked"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p1}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->onReviewCancelClicked()V

    :goto_0
    return-void
.end method

.method public synthetic OooO00o(Ljava/lang/String;)V
    .locals 4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    const v1, 0x7f100089

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {p0, v1, v2}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public adjustViewBackground()V
    .locals 1

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getPaintCondition()Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;->snapSolidPattern()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->reInitViewBackground(Z)V

    :cond_0
    invoke-direct {p0}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->changeBackgroundForDualVideo()V

    return-void
.end method

.method public animateShineBeauty(Z)V
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->hideModeOrExternalTipLayout()V

    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mModeSelectLayout:Lcom/android/camera/fragment/bottom/BottomActionMenu;

    invoke-virtual {v0, p1}, Lcom/android/camera/fragment/bottom/BottomActionMenu;->animateShineBeauty(Z)V

    return-void
.end method

.method public announceForAccessibility(I)V
    .locals 4

    invoke-static {}, Lcom/android/camera/Util;->isAccessible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    new-instance v1, LOooO0O0/OooO0OO/OooO00o/OooOo0/Oooo000/OooO00o/OooO;

    invoke-direct {v1, p0, p1}, LOooO0O0/OooO0OO/OooO00o/OooOo0/Oooo000/OooO00o/OooO;-><init>(Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;I)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public canSnap()Z
    .locals 3

    invoke-direct {p0}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->isFeatureEnable()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v2, 0xa1

    invoke-virtual {v0, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$CameraAction;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->isBlockSnap()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public canSwipeChangeMode()Z
    .locals 2

    iget-boolean v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mVideoRecordingStarted:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/extra/DataItemLive;->getMimojiStatusManager()Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;->isInMimojiPreview()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mComponentModuleList:Lcom/android/camera/data/data/global/ComponentModuleList;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-virtual {v0, v1}, Lcom/android/camera/data/data/global/ComponentModuleList;->isCommonMode(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->isThumbLoading()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->isShowLightingView()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->isFocusOrZoomMoving()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public catchDrag(II)Z
    .locals 3

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa1

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$CameraAction;

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->isDoingAction()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mBottomActionView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    return v2

    :cond_1
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mBottomActionView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    invoke-static {v0, p1, p2}, Lcom/android/camera/Util;->isInViewRegion(Landroid/view/View;II)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mThumbnailImageLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mThumbnailImageLayout:Landroid/view/ViewGroup;

    invoke-static {v0, p1, p2}, Lcom/android/camera/Util;->isInViewRegion(Landroid/view/View;II)Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    :cond_3
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mPickers:Lcom/android/camera/fragment/bottom/action/Pickers;

    invoke-virtual {v0}, Lcom/android/camera/fragment/bottom/action/Pickers;->getCurrentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mPickers:Lcom/android/camera/fragment/bottom/action/Pickers;

    invoke-virtual {v0}, Lcom/android/camera/fragment/bottom/action/Pickers;->getCurrentView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/android/camera/Util;->isInViewRegion(Landroid/view/View;II)Z

    move-result v0

    if-eqz v0, :cond_4

    return v1

    :cond_4
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mRecordingSwitch:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mRecordingSwitch:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-static {v0, p1, p2}, Lcom/android/camera/Util;->isInViewRegion(Landroid/view/View;II)Z

    move-result p1

    if-eqz p1, :cond_5

    return v1

    :cond_5
    return v2

    :cond_6
    :goto_0
    return v1
.end method

.method public varargs changeCamera([Landroid/view/View;)V
    .locals 13

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/lib/compatibility/related/vibrator/ViberatorContext;->getInstance(Landroid/content/Context;)Lcom/android/camera/lib/compatibility/related/vibrator/ViberatorContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/lib/compatibility/related/vibrator/ViberatorContext;->performSwitchCamera()V

    invoke-static {}, Lcom/android/camera/data/DataRepository;->provider()Lcom/android/camera/data/provider/DataProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/data/provider/DataProvider;->dataGlobal()Lcom/android/camera/data/provider/DataProvider$ProviderEvent;

    move-result-object v0

    check-cast v0, Lcom/android/camera/data/data/global/DataItemGlobal;

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentCameraId()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v2

    :goto_0
    iget v5, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/16 v6, 0xa3

    if-ne v5, v6, :cond_1

    invoke-static {}, Lcom/android/camera/CameraSettings;->isUltraPixelOn()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v5

    const/16 v7, 0xa4

    invoke-virtual {v5, v7}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v5

    check-cast v5, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;

    new-array v7, v3, [I

    const/16 v8, 0xd1

    aput v8, v7, v2

    invoke-interface {v5, v7}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->switchOffElementsSilent([I)V

    :cond_1
    invoke-static {}, Lcom/android/camera/CameraSettings;->resetRetainZoom()V

    invoke-virtual {v0, v4}, Lcom/android/camera/data/data/global/DataItemGlobal;->setCameraId(I)V

    if-eqz p1, :cond_3

    array-length v0, p1

    if-lez v0, :cond_3

    array-length v0, p1

    move v5, v2

    :goto_1
    if-ge v5, v0, :cond_3

    aget-object v7, p1, v5

    const-wide/16 v8, 0x12c

    invoke-static {v7}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v7

    if-ne v4, v3, :cond_2

    const/high16 v10, -0x3ccc0000    # -180.0f

    goto :goto_2

    :cond_2
    const/high16 v10, 0x43340000    # 180.0f

    :goto_2
    invoke-virtual {v7, v10}, Landroidx/core/view/ViewPropertyAnimatorCompat;->rotationBy(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v7

    invoke-virtual {v7, v8, v9}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v7

    invoke-virtual {v7}, Landroidx/core/view/ViewPropertyAnimatorCompat;->start()V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v5, 0x3

    new-array v7, v5, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v3

    iget v8, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x2

    aput-object v8, v7, v9

    const-string/jumbo v8, "switch camera from %d to %d, for module 0x%x"

    invoke-static {v0, v8, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v7, "FragmentBottomAction"

    invoke-static {v7, v0}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v10, v5, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v3

    iget v11, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v9

    invoke-static {v0, v8, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v7, v0}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    if-ne v1, v3, :cond_4

    move v0, v3

    goto :goto_3

    :cond_4
    move v0, v2

    :goto_3
    if-ne v4, v3, :cond_5

    move v4, v3

    goto :goto_4

    :cond_5
    move v4, v2

    :goto_4
    iget v7, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-static {v0, v4, v7}, Lcom/android/camera/statistic/ScenarioTrackUtil;->trackSwitchCameraStart(ZZI)V

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v4, 0xac

    invoke-virtual {v0, v4}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    const/4 v4, 0x4

    invoke-interface {v0, v4}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->removeExtraMenu(I)V

    invoke-static {}, Lcom/android/camera/Util;->isAccessible()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v7

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    const v8, 0x7f100034

    invoke-virtual {p0, v8}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :cond_6
    iget v7, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/16 v8, 0xa2

    const/4 v10, 0x5

    if-eq v7, v8, :cond_12

    const/16 v8, 0xb0

    const/16 v11, 0xa6

    if-eq v7, v11, :cond_11

    const/16 v12, 0xa9

    if-eq v7, v12, :cond_10

    if-eq v7, v8, :cond_f

    const/16 v4, 0xb8

    if-eq v7, v4, :cond_d

    const/16 v0, 0xcf

    if-eq v7, v0, :cond_c

    if-eq v7, v6, :cond_7

    const/16 v0, 0xa5

    if-ne v7, v0, :cond_b

    :cond_7
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigRatio()Lcom/android/camera/data/data/config/ComponentConfigRatio;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/android/camera/data/data/config/ComponentConfigRatio;->getMappingModeByRatio(I)I

    move-result v7

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/android/camera/data/data/global/DataItemGlobal;->setCurrentMode(I)V

    if-eqz p1, :cond_b

    array-length v0, p1

    move v4, v2

    :goto_5
    if-ge v4, v0, :cond_b

    aget-object v5, p1, v4

    if-eqz v5, :cond_a

    invoke-virtual {v5}, Landroid/view/View;->getId()I

    move-result v5

    iget-object v8, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mPickers:Lcom/android/camera/fragment/bottom/action/Pickers;

    invoke-virtual {v8}, Lcom/android/camera/fragment/bottom/action/Pickers;->getCurrentView()Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getId()I

    move-result v8

    if-ne v5, v8, :cond_a

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningAIWatermark()Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;

    move-result-object v5

    if-eqz v1, :cond_9

    if-eq v1, v3, :cond_8

    move v5, v2

    goto :goto_6

    :cond_8
    invoke-virtual {v5, v2}, Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;->getEnable(I)Z

    move-result v5

    goto :goto_6

    :cond_9
    invoke-virtual {v5, v3}, Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;->getEnable(I)Z

    move-result v5

    :goto_6
    if-eqz v5, :cond_a

    move v7, v6

    :cond_a
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_b
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/android/camera/Camera;

    invoke-static {v7}, Lcom/android/camera/module/loader/StartControl;->create(I)Lcom/android/camera/module/loader/StartControl;

    move-result-object v0

    goto :goto_8

    :cond_c
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->setCurrentMode(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/android/camera/Camera;

    :goto_7
    invoke-static {v0}, Lcom/android/camera/module/loader/StartControl;->create(I)Lcom/android/camera/module/loader/StartControl;

    move-result-object v0

    goto/16 :goto_b

    :cond_d
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 v1, 0xf6

    invoke-virtual {p1, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiControl;

    if-eqz p1, :cond_e

    invoke-interface {p1}, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiControl;->isOnCreateMimoji()Z

    move-result p1

    if-eqz p1, :cond_e

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    invoke-virtual {p1, v11}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    invoke-interface {p1}, Lcom/android/camera/protocol/ModeProtocol$IndicatorProtocol;->mimojiStart()V

    new-array p1, v5, [I

    fill-array-data p1, :array_0

    invoke-interface {v0, v3, p1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->disableMenuItem(Z[I)V

    :cond_e
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/android/camera/Camera;

    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    goto :goto_7

    :cond_f
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p1

    invoke-virtual {p1, v11}, Lcom/android/camera/data/data/global/DataItemGlobal;->setCurrentMode(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/android/camera/Camera;

    invoke-static {v11}, Lcom/android/camera/module/loader/StartControl;->create(I)Lcom/android/camera/module/loader/StartControl;

    move-result-object v0

    goto :goto_9

    :cond_10
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p1

    invoke-virtual {p1, v12}, Lcom/android/camera/data/data/global/DataItemGlobal;->setCurrentMode(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/android/camera/Camera;

    invoke-static {v12}, Lcom/android/camera/module/loader/StartControl;->create(I)Lcom/android/camera/module/loader/StartControl;

    move-result-object v0

    :goto_8
    invoke-virtual {v0, v10}, Lcom/android/camera/module/loader/StartControl;->setResetType(I)Lcom/android/camera/module/loader/StartControl;

    move-result-object v0

    goto :goto_a

    :cond_11
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p1

    invoke-virtual {p1, v8}, Lcom/android/camera/data/data/global/DataItemGlobal;->setCurrentMode(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/android/camera/Camera;

    invoke-static {v8}, Lcom/android/camera/module/loader/StartControl;->create(I)Lcom/android/camera/module/loader/StartControl;

    move-result-object v0

    :goto_9
    invoke-virtual {v0, v4}, Lcom/android/camera/module/loader/StartControl;->setResetType(I)Lcom/android/camera/module/loader/StartControl;

    move-result-object v0

    :goto_a
    invoke-virtual {v0, v9}, Lcom/android/camera/module/loader/StartControl;->setViewConfigType(I)Lcom/android/camera/module/loader/StartControl;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/camera/module/loader/StartControl;->setNeedBlurAnimation(Z)Lcom/android/camera/module/loader/StartControl;

    move-result-object v0

    goto :goto_c

    :cond_12
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p1

    invoke-virtual {p1, v8}, Lcom/android/camera/data/data/global/DataItemGlobal;->setCurrentMode(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/android/camera/Camera;

    invoke-static {v8}, Lcom/android/camera/module/loader/StartControl;->create(I)Lcom/android/camera/module/loader/StartControl;

    move-result-object v0

    :goto_b
    invoke-virtual {v0, v10}, Lcom/android/camera/module/loader/StartControl;->setResetType(I)Lcom/android/camera/module/loader/StartControl;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/camera/module/loader/StartControl;->setNeedBlurAnimation(Z)Lcom/android/camera/module/loader/StartControl;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/android/camera/module/loader/StartControl;->setViewConfigType(I)Lcom/android/camera/module/loader/StartControl;

    move-result-object v0

    :goto_c
    invoke-virtual {p1, v0}, Lcom/android/camera/Camera;->onModeSelected(Lcom/android/camera/module/loader/StartControl;)V

    return-void

    nop

    :array_0
    .array-data 4
        0xc5
        0xc1
        0xa2
    .end array-data
.end method

.method public changeModeByGravity(II)V
    .locals 7

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/Util;->isLayoutRTL(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x5

    const/4 v2, 0x3

    const v3, 0x800005

    const v4, 0x800003

    if-eqz v0, :cond_2

    if-ne p1, v2, :cond_1

    :goto_0
    move p1, v3

    goto :goto_2

    :cond_1
    if-ne p1, v1, :cond_4

    goto :goto_1

    :cond_2
    if-ne p1, v2, :cond_3

    :goto_1
    move p1, v4

    goto :goto_2

    :cond_3
    if-ne p1, v1, :cond_4

    goto :goto_0

    :cond_4
    :goto_2
    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-static {v0}, Lcom/android/camera/data/data/global/ComponentModuleList;->getTransferredMode(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mComponentModuleList:Lcom/android/camera/data/data/global/ComponentModuleList;

    invoke-virtual {v1}, Lcom/android/camera/data/data/global/ComponentModuleList;->getCommonItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    move v5, v2

    :goto_3
    if-ge v5, v1, :cond_6

    iget-object v6, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mComponentModuleList:Lcom/android/camera/data/data/global/ComponentModuleList;

    invoke-virtual {v6, v5}, Lcom/android/camera/data/data/global/ComponentModuleList;->getMode(I)I

    move-result v6

    if-ne v6, v0, :cond_5

    goto :goto_4

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_6
    move v5, v2

    :goto_4
    if-eq p1, v4, :cond_8

    if-eq p1, v3, :cond_7

    goto :goto_5

    :cond_7
    add-int/lit8 v1, v1, -0x1

    if-ge v5, v1, :cond_9

    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_8
    if-lez v5, :cond_9

    add-int/lit8 v5, v5, -0x1

    :cond_9
    :goto_5
    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mComponentModuleList:Lcom/android/camera/data/data/global/ComponentModuleList;

    invoke-virtual {p1, v5}, Lcom/android/camera/data/data/global/ComponentModuleList;->getMode(I)I

    move-result p1

    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mComponentModuleList:Lcom/android/camera/data/data/global/ComponentModuleList;

    invoke-virtual {v0, v5}, Lcom/android/camera/data/data/global/ComponentModuleList;->getDisplayNameRes(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2, v2}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->changeModeByNewMode(ILjava/lang/String;IZ)V

    return-void
.end method

.method public changeModeByNewMode(ILjava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mComponentModuleList:Lcom/android/camera/data/data/global/ComponentModuleList;

    invoke-virtual {v0, p1}, Lcom/android/camera/data/data/global/ComponentModuleList;->isCommonMode(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mModeSelectView:Lcom/android/camera/ui/ModeSelectView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/ModeSelectView;->moveToPosition(I)V

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->changeModeByNewMode(ILjava/lang/String;IZ)V

    return-void
.end method

.method public enableStopButton(ZZ)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/ui/CameraSnapView;->setStopButtonEnable(ZZ)V

    return-void
.end method

.method public entryOrExitMiMojiGif(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mPreGifStatus:Z

    return-void
.end method

.method public expandAIWatermarkBottomMenu(Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;)V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mBottomRecordingTime:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mBottomRecordingTime:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    invoke-direct {p0}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->hideModeOrExternalTipLayout()V

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mModeSelectLayout:Lcom/android/camera/fragment/bottom/BottomActionMenu;

    invoke-virtual {v2}, Lcom/android/camera/fragment/bottom/BottomActionMenu;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/camera/fragment/BaseFragment;->animateViews(ILjava/util/List;Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mModeSelectLayout:Lcom/android/camera/fragment/bottom/BottomActionMenu;

    iget v1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-virtual {v0, p1, v1}, Lcom/android/camera/fragment/bottom/BottomActionMenu;->expandAIWatermark(Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;I)V

    return-void
.end method

.method public expandMasterFilterBottomMenu(Lcom/android/camera/data/data/config/ComponentRunningMasterFilter;)V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mBottomRecordingTime:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mBottomRecordingTime:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    invoke-direct {p0}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->hideModeOrExternalTipLayout()V

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mModeSelectLayout:Lcom/android/camera/fragment/bottom/BottomActionMenu;

    invoke-virtual {v2}, Lcom/android/camera/fragment/bottom/BottomActionMenu;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/camera/fragment/BaseFragment;->animateViews(ILjava/util/List;Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mModeSelectLayout:Lcom/android/camera/fragment/bottom/BottomActionMenu;

    invoke-virtual {v0, p1}, Lcom/android/camera/fragment/bottom/BottomActionMenu;->expandMasterFilter(Lcom/android/camera/data/data/config/ComponentRunningMasterFilter;)V

    return-void
.end method

.method public expandPictureStyleBottomMenu(Lcom/android/camera/data/data/runing/ComponentRunningPictureStyle;)V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mBottomRecordingTime:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mBottomRecordingTime:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    invoke-direct {p0}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->hideModeOrExternalTipLayout()V

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mModeSelectLayout:Lcom/android/camera/fragment/bottom/BottomActionMenu;

    invoke-virtual {v2}, Lcom/android/camera/fragment/bottom/BottomActionMenu;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/camera/fragment/BaseFragment;->animateViews(ILjava/util/List;Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mModeSelectLayout:Lcom/android/camera/fragment/bottom/BottomActionMenu;

    invoke-virtual {v0, p1}, Lcom/android/camera/fragment/bottom/BottomActionMenu;->expandPictureStyle(Lcom/android/camera/data/data/runing/ComponentRunningPictureStyle;)V

    return-void
.end method

.method public expandShineBottomMenu(Lcom/android/camera/data/data/runing/ComponentRunningShine;)V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mBottomRecordingTime:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mBottomRecordingTime:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    invoke-direct {p0}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->hideModeOrExternalTipLayout()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->setZoomViewVisible(Z)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mModeSelectLayout:Lcom/android/camera/fragment/bottom/BottomActionMenu;

    invoke-virtual {v2}, Lcom/android/camera/fragment/bottom/BottomActionMenu;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/camera/fragment/BaseFragment;->animateViews(ILjava/util/List;Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mModeSelectLayout:Lcom/android/camera/fragment/bottom/BottomActionMenu;

    iget v1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-virtual {v0, p1, v1}, Lcom/android/camera/fragment/bottom/BottomActionMenu;->expandShine(Lcom/android/camera/data/data/runing/ComponentRunningShine;I)V

    return-void
.end method

.method public expandVideoSkyBottomMenu(Lcom/android/camera/data/data/config/ComponentRunningVideoSky;)V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mBottomRecordingTime:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mBottomRecordingTime:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    invoke-direct {p0}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->hideModeOrExternalTipLayout()V

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mModeSelectLayout:Lcom/android/camera/fragment/bottom/BottomActionMenu;

    invoke-virtual {v2}, Lcom/android/camera/fragment/bottom/BottomActionMenu;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/camera/fragment/BaseFragment;->animateViews(ILjava/util/List;Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mModeSelectLayout:Lcom/android/camera/fragment/bottom/BottomActionMenu;

    invoke-virtual {v0, p1}, Lcom/android/camera/fragment/bottom/BottomActionMenu;->expandMagicVideoSky(Lcom/android/camera/data/data/config/ComponentRunningVideoSky;)V

    return-void
.end method

.method public filterUiChange()V
    .locals 0

    return-void
.end method

.method public forceSwitchFront()Z
    .locals 2

    invoke-static {}, Lcom/android/camera/data/DataRepository;->provider()Lcom/android/camera/data/provider/DataProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/data/provider/DataProvider;->dataGlobal()Lcom/android/camera/data/provider/DataProvider$ProviderEvent;

    move-result-object v0

    check-cast v0, Lcom/android/camera/data/data/global/DataItemGlobal;

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentCameraId()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mPickers:Lcom/android/camera/fragment/bottom/action/Pickers;

    invoke-virtual {v0}, Lcom/android/camera/fragment/bottom/action/Pickers;->getCurrentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->onClick(Landroid/view/View;)V

    return v1
.end method

.method public getBeautyActionMenuType()I
    .locals 1

    iget v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mCurrentBeautyActionMenuType:I

    return v0
.end method

.method public getFragmentInto()I
    .locals 1

    const/16 v0, 0xf1

    return v0
.end method

.method public getLayoutResourceId()I
    .locals 1

    const v0, 0x7f0c004f

    return v0
.end method

.method public hideDocumentReviewViews()V
    .locals 0

    return-void
.end method

.method public hideExtra()V
    .locals 2

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa4

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->showMimojiPanel(I)Z

    :cond_0
    return-void
.end method

.method public initView(Landroid/view/View;)V
    .locals 5

    iput-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mRootView:Landroid/view/View;

    invoke-static {}, LOooO0O0/OooO0o0/OooO00o/OooO0O0;->o0O00O()LOooO0O0/OooO0o0/OooO00o/OooO0O0;

    move-result-object v0

    invoke-static {}, Lcom/android/camera/Display;->getDisplayRatio()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, LOooO0O0/OooO0o0/OooO00o/OooO0O0;->OooO0O0(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mSupportOrientation:Z

    const v0, 0x7f09007b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mBottomActionView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-static {}, Lcom/android/camera/Display;->getBottomHeight()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    const v0, 0x7f0903ce

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mBottomParentHorizontal:Landroid/view/ViewGroup;

    const v0, 0x7f0903cf

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mBottomParentVertical:Landroid/view/ViewGroup;

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getComponentModuleList()Lcom/android/camera/data/data/global/ComponentModuleList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mComponentModuleList:Lcom/android/camera/data/data/global/ComponentModuleList;

    invoke-static {}, Lcom/android/camera/Display;->getCenterDisplayWidth()I

    move-result v0

    iget-object v1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mBottomActionView:Landroid/widget/FrameLayout;

    const v2, 0x7f0903cd

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/ZoomView;

    iput-object v1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mZoomViewHorizontal:Lcom/android/camera/ui/ZoomView;

    invoke-virtual {v1, p0}, Lcom/android/camera/ui/ZoomView;->setZoomValueChangeListener(Lcom/android/camera/ui/ZoomView$zoomValueChangeListener;)V

    iget-object v1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mZoomViewHorizontal:Lcom/android/camera/ui/ZoomView;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mZoomViewHorizontal:Lcom/android/camera/ui/ZoomView;

    invoke-virtual {v1, v0}, Lcom/android/camera/ui/ZoomView;->initDrawable(I)V

    const v1, 0x7f090263

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    const v2, 0x7f090265

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/camera/ui/EdgeHorizonScrollView;

    iput-object v2, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mEdgeHorizonScrollView:Lcom/android/camera/ui/EdgeHorizonScrollView;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    const v2, 0x7f090084

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mBottomMenuLayout:Landroid/view/View;

    new-instance v2, Lcom/android/camera/fragment/bottom/BottomActionMenu;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/android/camera/fragment/bottom/BottomActionMenu;-><init>(Landroid/content/Context;Landroid/widget/FrameLayout;)V

    iput-object v2, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mModeSelectLayout:Lcom/android/camera/fragment/bottom/BottomActionMenu;

    const v2, 0x7f090081

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/camera/ui/CapsuleLayout;

    iput-object v2, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mExternalModeTipLayout:Lcom/android/camera/ui/CapsuleLayout;

    const v3, 0x7f090082

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mExternalModeTipText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mExternalModeTipLayout:Lcom/android/camera/ui/CapsuleLayout;

    const v3, 0x7f09007f

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mExternalModeTipIcon:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mExternalModeTipLayout:Lcom/android/camera/ui/CapsuleLayout;

    const v3, 0x7f090080

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    invoke-virtual {v2, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {v2}, Lcom/android/camera/animation/FolmeUtils;->touchTint(Landroid/view/View;)V

    iget-object v2, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mBottomMenuLayout:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-static {}, Lcom/android/camera/Display;->getBottomBarHeight()I

    move-result v3

    int-to-float v3, v3

    const v4, 0x3e99999a    # 0.3f

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-static {}, Lcom/android/camera/Display;->getBottomMargin()I

    move-result v3

    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-static {}, Lcom/android/camera/Display;->getMarginStart()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    invoke-static {}, Lcom/android/camera/Display;->getMarginEnd()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    const v2, 0x7f090266

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/ModeSelectView;

    iput-object v1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mModeSelectView:Lcom/android/camera/ui/ModeSelectView;

    iget-object v2, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mComponentModuleList:Lcom/android/camera/data/data/global/ComponentModuleList;

    iget v3, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-virtual {v1, v2, v3, p0, v0}, Lcom/android/camera/ui/ModeSelectView;->init(Lcom/android/camera/data/data/global/ComponentModuleList;ILcom/android/camera/ui/ModeSelectView$onModeSelectedListener;I)V

    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-direct {p0, v0}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->switchModeSelectViewAndZoomViewStyle(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0902c2

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/PopupMenuLayout;

    iput-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mPopupMenuLayout:Lcom/android/camera/ui/PopupMenuLayout;

    const v0, 0x7f0900fa

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/DragLayout;

    iput-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mDragUpLayout:Lcom/android/camera/ui/DragLayout;

    invoke-virtual {v0, p0}, Lcom/android/camera/ui/DragLayout;->addOnDragListener(Lcom/android/camera/ui/DragLayout$OnDragListener;)V

    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mDragUpLayout:Lcom/android/camera/ui/DragLayout;

    iget-object v1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mPopupMenuLayout:Lcom/android/camera/ui/PopupMenuLayout;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/DragLayout;->addOnDragListener(Lcom/android/camera/ui/DragLayout$OnDragListener;)V

    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mDragUpLayout:Lcom/android/camera/ui/DragLayout;

    invoke-virtual {v0}, Lcom/android/camera/ui/DragLayout;->getDragChildren()Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-static {}, Lcom/android/camera/Display;->getDragLayoutTopMargin()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-static {}, Lcom/android/camera/Display;->getBottomHeight()I

    move-result v1

    invoke-static {}, Lcom/android/camera/ui/DragLayout;->getAnimationConfig()Lcom/android/camera/ui/DragLayout$DragAnimationConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/DragLayout$DragAnimationConfig;->getMaxDragDistance()F

    move-result v2

    float-to-int v2, v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-static {}, LOooO0O0/OooO0o0/OooO00o/OooO0O0;->o0O00O()LOooO0O0/OooO0o0/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0o0/OooO00o/OooO0O0;->o00O()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/camera/Display;->fitDisplayFat()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    xor-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->findViewByOrientation(Z)V

    const v0, 0x7f09007d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {}, Lcom/android/camera/Display;->getBottomBarHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v4

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setMinimumHeight(I)V

    const v0, 0x7f09008a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mBottomRecordingTime:Landroid/widget/TextView;

    const v0, 0x7f090089

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mBottomRecordingCameraPicker:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {p1, p0}, Lcom/android/camera/ui/CameraSnapView;->setSnapListener(Lcom/android/camera/ui/CameraSnapView$SnapListener;)V

    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {p1, v2}, Lcom/android/camera/ui/CameraSnapView;->setSnapClickEnable(Z)V

    iget-boolean p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mIsVideoCast:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    const/high16 v0, 0x3f000000    # 0.5f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0a0008

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mCaptureProgressDelay:I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0a0018

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mRecordProgressDelay:I

    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mThumbnailImageLayout:Landroid/view/ViewGroup;

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mPickers:Lcom/android/camera/fragment/bottom/action/Pickers;

    invoke-virtual {p1, p0}, Lcom/android/camera/fragment/bottom/action/Pickers;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mRecordingPause:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mRecordingSnap:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mRecordingReverse:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mRecordingSwitch:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mMimojiBack:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/global/DataItemGlobal;->isIntentAction()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mIsIntentAction:Z

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/global/DataItemGlobal;->isVideoCastIntent()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mIsVideoCast:Z

    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mRotateViews:Ljava/util/List;

    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mThumbnailImageLayout:Landroid/view/ViewGroup;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mRotateViews:Ljava/util/List;

    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mRotateViews:Ljava/util/List;

    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mPickers:Lcom/android/camera/fragment/bottom/action/Pickers;

    invoke-virtual {v0}, Lcom/android/camera/fragment/bottom/action/Pickers;->getAllViews()Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mRotateViews:Ljava/util/List;

    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mPostProcess:Landroid/widget/ProgressBar;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mRotateViews:Ljava/util/List;

    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mRecordingPause:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mRotateViews:Ljava/util/List;

    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mBottomRecordingCameraPicker:Landroid/widget/ImageView;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mRotateViews:Ljava/util/List;

    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mRecordingReverse:Landroid/widget/ImageView;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mRotateViews:Ljava/util/List;

    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mRecordingSwitch:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget p1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->provideAnimateElement(ILjava/util/List;I)V

    new-instance p1, Lmiui/view/animation/CubicEaseOutInterpolator;

    invoke-direct {p1}, Lmiui/view/animation/CubicEaseOutInterpolator;-><init>()V

    iput-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mCubicEaseOut:Lmiui/view/animation/CubicEaseOutInterpolator;

    new-instance p1, Lmiui/view/animation/SineEaseOutInterpolator;

    invoke-direct {p1}, Lmiui/view/animation/SineEaseOutInterpolator;-><init>()V

    iput-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mSineEaseOut:Lmiui/view/animation/SineEaseOutInterpolator;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0702a1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mFilterListHeight:I

    return-void
.end method

.method public isExpanded()Z
    .locals 2

    invoke-static {}, Lcom/android/camera/CameraSettings;->isPopupMoreStyle()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mDragUpLayout:Lcom/android/camera/ui/DragLayout;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/camera/ui/DragLayout;->isExpanded()Z

    move-result v0

    return v0

    :cond_1
    return v1
.end method

.method public isShowFilterView()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isShowLightingView()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mIsShowLighting:Z

    return v0
.end method

.method public isZoomAdjustVisible()Z
    .locals 1

    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mZoomViewHorizontal:Lcom/android/camera/ui/ZoomView;

    invoke-virtual {v0}, Lcom/android/camera/ui/ZoomView;->isVisible()Z

    move-result v0

    return v0
.end method

.method public isZoomViewMoving()Z
    .locals 1

    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mZoomViewHorizontal:Lcom/android/camera/ui/ZoomView;

    invoke-virtual {v0}, Lcom/android/camera/ui/ZoomView;->isZoomMoving()Z

    move-result v0

    return v0
.end method

.method public modeChanging()Z
    .locals 2

    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mDragUpLayout:Lcom/android/camera/ui/DragLayout;

    invoke-virtual {v0}, Lcom/android/camera/ui/DragLayout;->isShrink()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mDragUpLayout:Lcom/android/camera/ui/DragLayout;

    invoke-virtual {v0}, Lcom/android/camera/ui/DragLayout;->isExpanded()Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mModeSelectView:Lcom/android/camera/ui/ModeSelectView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getScrollState()I

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public notifyAfterFrameAvailable(I)V
    .locals 4

    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->notifyAfterFrameAvailable(I)V

    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mFragmentLighting:Lcom/android/camera/fragment/bottom/action/FragmentLighting;

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mFragmentLighting:Lcom/android/camera/fragment/bottom/action/FragmentLighting;

    invoke-virtual {p1, v0}, Lcom/android/camera/fragment/bottom/action/FragmentLighting;->reInitAdapterBgMode(Z)V

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    instance-of p1, p1, Lcom/android/camera/Camera;

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/android/camera/Camera;

    invoke-virtual {p1}, Lcom/android/camera/ActivityBase;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/android/camera/ActivityBase;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/camera/module/Module;->getPortraitLightingVersion()I

    move-result p1

    goto :goto_0

    :cond_1
    move p1, v0

    :goto_0
    iget-object v1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mModeSelectLayout:Lcom/android/camera/fragment/bottom/BottomActionMenu;

    invoke-virtual {v1, p1}, Lcom/android/camera/fragment/bottom/BottomActionMenu;->initBeautyMenuView(I)V

    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mZoomViewHorizontal:Lcom/android/camera/ui/ZoomView;

    invoke-virtual {p1}, Lcom/android/camera/ui/ZoomView;->reInit()V

    invoke-virtual {p0}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->adjustViewBackground()V

    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    const/16 v1, 0xb8

    if-eqz p1, :cond_3

    iget p1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    if-ne p1, v1, :cond_2

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/extra/DataItemLive;->getMimojiStatusManager()Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;->isInMimojiCreate()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-direct {p0}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->showNormalMimoji2Bottom()V

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mPostProcess:Landroid/widget/ProgressBar;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result p1

    if-nez p1, :cond_3

    const-string p1, "FragmentBottomAction"

    const-string v2, "notifyAfterFrameAvailable: shutter process bar is showing"

    invoke-static {p1, v2}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->processingFinish()V

    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    iget v2, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-static {v2}, Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;->create(I)Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;

    move-result-object v2

    iget v3, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-static {v3}, Lcom/android/camera/CameraSettings;->isAlgoFPS(I)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;->setIsFPS960(Z)Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/camera/ui/CameraSnapView;->setParameters(Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;)V

    :cond_3
    :goto_1
    iget p1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/4 v2, 0x0

    if-ne p1, v1, :cond_4

    move p1, v0

    goto :goto_2

    :cond_4
    move p1, v2

    :goto_2
    if-nez p1, :cond_5

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/extra/DataItemLive;->getMimojiStatusManager()Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;->reset()V

    goto :goto_3

    :cond_5
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/extra/DataItemLive;->getMimojiStatusManager()Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;->isInMimojiCreate()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 v1, 0xa6

    invoke-virtual {p1, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    invoke-interface {p1}, Lcom/android/camera/protocol/ModeProtocol$IndicatorProtocol;->mimojiStart()V

    :cond_6
    :goto_3
    const/4 p1, 0x7

    new-array p1, p1, [Landroid/view/View;

    iget-object v1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mBottomRecordingCameraPicker:Landroid/widget/ImageView;

    aput-object v1, p1, v2

    iget-object v1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mThumbnailImageLayout:Landroid/view/ViewGroup;

    aput-object v1, p1, v0

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mRecordingPause:Lcom/airbnb/lottie/LottieAnimationView;

    aput-object v1, p1, v0

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mRecordingSnap:Landroid/widget/ImageView;

    aput-object v1, p1, v0

    const/4 v0, 0x4

    iget-object v1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mRecordingReverse:Landroid/widget/ImageView;

    aput-object v1, p1, v0

    const/4 v0, 0x5

    iget-object v1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mRecordingSwitch:Lcom/airbnb/lottie/LottieAnimationView;

    aput-object v1, p1, v0

    const/4 v0, 0x6

    iget-object v1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mMimojiBack:Landroid/widget/ImageView;

    aput-object v1, p1, v0

    invoke-static {p1}, Lcom/android/camera/animation/FolmeUtils;->touchScaleTint([Landroid/view/View;)V

    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mPickers:Lcom/android/camera/fragment/bottom/action/Pickers;

    invoke-virtual {p1}, Lcom/android/camera/fragment/bottom/action/Pickers;->touchScaleTint()V

    invoke-direct {p0}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->checkFeatureState()V

    return-void
.end method

.method public notifyDataChanged(II)V
    .locals 3

    invoke-super {p0, p1, p2}, Lcom/android/camera/fragment/BaseFragment;->notifyDataChanged(II)V

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/global/DataItemGlobal;->isIntentAction()Z

    move-result p1

    iget-boolean p2, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mIsIntentAction:Z

    if-eq p1, p2, :cond_1

    iput-boolean p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mIsIntentAction:Z

    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mModeSelectView:Lcom/android/camera/ui/ModeSelectView;

    iget-object p2, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mComponentModuleList:Lcom/android/camera/data/data/global/ComponentModuleList;

    invoke-virtual {p2}, Lcom/android/camera/data/data/global/ComponentModuleList;->getCommonItems()Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/camera/ui/ModeSelectView;->setItems(Ljava/util/List;)V

    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mModeSelectView:Lcom/android/camera/ui/ModeSelectView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mModeSelectView:Lcom/android/camera/ui/ModeSelectView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mModeSelectView:Lcom/android/camera/ui/ModeSelectView;

    iget p2, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-virtual {p1, p2}, Lcom/android/camera/ui/ModeSelectView;->moveToPosition(I)V

    :cond_0
    invoke-direct {p0}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->initThumbLayout()V

    :cond_1
    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mComponentModuleList:Lcom/android/camera/data/data/global/ComponentModuleList;

    new-instance p2, LOooO0O0/OooO0OO/OooO00o/OooOo0/Oooo000/OooO00o/OooO0Oo;

    invoke-direct {p2, p0}, LOooO0O0/OooO0OO/OooO00o/OooOo0/Oooo000/OooO00o/OooO0Oo;-><init>(Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;)V

    invoke-virtual {p1, p2}, Lcom/android/camera/data/data/global/ComponentModuleList;->runChangeResetCb(Ljava/lang/Runnable;)V

    iget-boolean p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mVideoRecordingStarted:Z

    const/16 p2, 0xd7

    const/16 v0, 0xb7

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    iget p1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/16 v2, 0xae

    if-eq p1, v2, :cond_2

    if-eq p1, v0, :cond_2

    if-ne p1, p2, :cond_3

    :cond_2
    const-string p1, "FragmentBottomAction"

    const-string v2, "onRecording dataChanged"

    invoke-static {p1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mModeSelectView:Lcom/android/camera/ui/ModeSelectView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result p1

    if-nez p1, :cond_4

    const/4 p1, 0x1

    goto :goto_0

    :cond_4
    move p1, v1

    :goto_0
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->switchMoreMode(Z)V

    :goto_1
    iput-boolean v1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mInLoading:Z

    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mFragmentLighting:Lcom/android/camera/fragment/bottom/action/FragmentLighting;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mFragmentLighting:Lcom/android/camera/fragment/bottom/action/FragmentLighting;

    invoke-virtual {p1}, Lcom/android/camera/fragment/bottom/action/FragmentLighting;->reInit()V

    :cond_5
    invoke-static {}, Lcom/android/camera/Util;->isAccessible()Z

    move-result p1

    if-eqz p1, :cond_c

    iget-boolean p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mVideoRecordingStarted:Z

    if-eqz p1, :cond_7

    iget p1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    if-eq p1, v0, :cond_6

    if-ne p1, p2, :cond_7

    :cond_6
    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    const p2, 0x7f1000ac

    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_3

    :cond_7
    iget p1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/16 p2, 0xa2

    const v0, 0x7f1000ad

    const v1, 0x7f1000a9

    if-eq p1, p2, :cond_a

    const/16 p2, 0xcc

    if-eq p1, p2, :cond_8

    packed-switch p1, :pswitch_data_0

    goto :goto_4

    :goto_2
    :pswitch_0
    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    :goto_3
    invoke-virtual {p1, p2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_5

    :cond_8
    invoke-direct {p0}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->shouldUseThumbnailAsExit()Z

    move-result p1

    if-nez p1, :cond_9

    goto :goto_2

    :cond_9
    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_3

    :cond_a
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/global/DataItemGlobal;->isVideoCastIntent()Z

    move-result p1

    if-eqz p1, :cond_b

    invoke-direct {p0}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->shouldUseThumbnailAsExit()Z

    move-result p1

    if-nez p1, :cond_9

    goto :goto_2

    :cond_b
    :goto_4
    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mPickers:Lcom/android/camera/fragment/bottom/action/Pickers;

    const p2, 0x7f100033

    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/camera/fragment/bottom/action/Pickers;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_c
    :goto_5
    return-void

    :pswitch_data_0
    .packed-switch 0xd1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onAngleChanged(F)V
    .locals 0

    return-void
.end method

.method public onBackEvent(I)Z
    .locals 1

    const/4 v0, 0x1

    const/4 p1, 0x0

    return p1
.end method

.method public onBeautyRecordingStart()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mModeSelectView:Lcom/android/camera/ui/ModeSelectView;

    invoke-static {v0}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->alpha(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->start()V

    return-void
.end method

.method public onBeautyRecordingStop()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mModeSelectView:Lcom/android/camera/ui/ModeSelectView;

    invoke-static {v0}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->alpha(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->start()V

    return-void
.end method

.method public onBottomMenuAnimate(II)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mModeSelectLayout:Lcom/android/camera/fragment/bottom/BottomActionMenu;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/fragment/bottom/BottomActionMenu;->bottomMenuAnimate(II)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 10

    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragment;->isEnableClick()Z

    move-result v0

    const-string v1, "FragmentBottomAction"

    if-nez v0, :cond_0

    const-string p1, "onClick: disabled"

    invoke-static {v1, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v2, 0xa1

    invoke-virtual {v0, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$CameraAction;

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v2

    const/16 v3, 0xac

    invoke-virtual {v2, v3}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v2

    check-cast v2, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    if-nez v0, :cond_1

    const-string p1, "onClick: null action"

    invoke-static {v1, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lcom/android/camera/ActivityBase;

    invoke-virtual {v3}, Lcom/android/camera/ActivityBase;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/camera/module/Module;->isIgnoreTouchEvent()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Lcom/android/camera/module/Module;->isShot2GalleryOrEnableParallel()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    const v5, 0x7f0903e3

    if-eq v4, v5, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    const v5, 0x7f0903e5

    if-eq v4, v5, :cond_3

    :cond_2
    const-string p1, "onClick: ignore click event, because module isn\'t ready"

    invoke-static {v1, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/16 v7, 0xcc

    const-string v8, "create"

    const/4 v9, 0x2

    sparse-switch v4, :sswitch_data_0

    goto/16 :goto_5

    :sswitch_0
    const-string v2, "onClick: up down switch"

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->isDoingAction()Z

    move-result v1

    if-eqz v1, :cond_4

    return-void

    :cond_4
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->isRecording()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v3}, Lcom/android/camera/module/Module;->getModuleIndex()I

    move-result v1

    if-eq v1, v7, :cond_5

    iget-boolean v1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mIsVideoCast:Z

    if-nez v1, :cond_5

    return-void

    :cond_5
    invoke-direct {p0}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->isThumbLoading()Z

    move-result v1

    if-eqz v1, :cond_6

    return-void

    :cond_6
    invoke-virtual {p0}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->hideExtra()V

    invoke-interface {v0, p1}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->onCameraPickerClicked(Landroid/view/View;)Z

    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mPickers:Lcom/android/camera/fragment/bottom/action/Pickers;

    invoke-virtual {p1}, Lcom/android/camera/fragment/bottom/action/Pickers;->onClick()V

    goto/16 :goto_5

    :sswitch_1
    const-string p1, "onClick: v9_thumbnail_layout"

    invoke-static {v1, p1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->isThumbLoading()Z

    move-result p1

    if-eqz p1, :cond_7

    const-string p1, "onClick: ignore thumbnail click event as loading thumbnail"

    invoke-static {v1, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_7
    new-instance p1, LOooO0O0/OooO0OO/OooO00o/OooOo0/Oooo000/OooO00o/OooO00o;

    invoke-direct {p1, p0, v0}, LOooO0O0/OooO0OO/OooO00o/OooOo0/Oooo000/OooO00o/OooO00o;-><init>(Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;Lcom/android/camera/protocol/ModeProtocol$CameraAction;)V

    invoke-virtual {p0}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->isExpanded()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mDragUpLayout:Lcom/android/camera/ui/DragLayout;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/DragLayout;->shrink(Ljava/lang/Runnable;)Z

    const-string p1, "onClick: ignore thumbnail click event as mode plane is expanded"

    invoke-static {v1, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_8
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto/16 :goto_5

    :sswitch_2
    const-string p1, "onClick: v9_recording_snap"

    invoke-static {v1, p1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mVideoCaptureEnable:Z

    if-eqz p1, :cond_f

    iget-boolean p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mVideoRecordingStarted:Z

    if-nez p1, :cond_9

    goto :goto_1

    :cond_9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/android/camera/ActivityBase;

    invoke-virtual {p1}, Lcom/android/camera/ActivityBase;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_e

    instance-of v0, p1, Lcom/android/camera/module/VideoModule;

    if-nez v0, :cond_a

    instance-of v2, p1, Lcom/android/camera/module/FunModule;

    if-nez v2, :cond_a

    instance-of v2, p1, Lcom/android/camera/module/MiLiveModule;

    if-nez v2, :cond_a

    instance-of v2, p1, Lcom/android/camera/dualvideo/DualVideoRecordModule;

    if-nez v2, :cond_a

    goto :goto_0

    :cond_a
    if-eqz v0, :cond_b

    check-cast p1, Lcom/android/camera/module/VideoModule;

    invoke-virtual {p1}, Lcom/android/camera/module/VideoModule;->takeVideoSnapShoot()Z

    goto/16 :goto_5

    :cond_b
    instance-of v0, p1, Lcom/android/camera/module/FunModule;

    if-eqz v0, :cond_c

    check-cast p1, Lcom/android/camera/module/FunModule;

    invoke-virtual {p1}, Lcom/android/camera/module/FunModule;->takePreviewSnapShoot()V

    goto/16 :goto_5

    :cond_c
    instance-of v0, p1, Lcom/android/camera/module/MiLiveModule;

    if-eqz v0, :cond_d

    check-cast p1, Lcom/android/camera/module/MiLiveModule;

    invoke-virtual {p1}, Lcom/android/camera/module/MiLiveModule;->takePreviewSnapShoot()V

    goto/16 :goto_5

    :cond_d
    instance-of v0, p1, Lcom/android/camera/dualvideo/DualVideoRecordModule;

    if-eqz v0, :cond_25

    check-cast p1, Lcom/android/camera/dualvideo/DualVideoRecordModule;

    invoke-virtual {p1}, Lcom/android/camera/dualvideo/DualVideoRecordModule;->takeVideoSnapShot()V

    goto/16 :goto_5

    :cond_e
    :goto_0
    const-string p1, "onClick: recording snap is not allowed!!!"

    invoke-static {v1, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    :goto_1
    return-void

    :sswitch_3
    const-string p1, "onClick: v9_recording_reverse"

    invoke-static {v1, p1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mVideoReverseEnable:Z

    if-eqz p1, :cond_12

    iget-boolean p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mVideoRecordingStarted:Z

    if-nez p1, :cond_10

    goto :goto_2

    :cond_10
    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {p1}, Lcom/android/camera/ui/CameraSnapView;->hasSegments()Z

    move-result p1

    if-nez p1, :cond_11

    return-void

    :cond_11
    invoke-direct {p0}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->showReverseConfirmDialog()V

    goto/16 :goto_5

    :cond_12
    :goto_2
    return-void

    :sswitch_4
    const-string p1, "onClick: v9_recording_pause"

    invoke-static {v1, p1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->pauseRecording()V

    goto/16 :goto_5

    :sswitch_5
    const-string v3, "onClick: v9_capture_recording_switch"

    invoke-static {v1, v3}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->isDoingAction()Z

    move-result v0

    if-nez v0, :cond_16

    iget-boolean v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mVideoRecordingStarted:Z

    if-eqz v0, :cond_13

    goto :goto_3

    :cond_13
    invoke-static {}, Lcom/android/camera/CameraSettings;->isGifOn()Z

    move-result v0

    if-eqz v0, :cond_14

    return-void

    :cond_14
    if-eqz v2, :cond_15

    invoke-interface {v2}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->isTopExpendAnimRuning()Z

    move-result v0

    if-eqz v0, :cond_15

    return-void

    :cond_15
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->switchVideoCapture(Landroid/view/View;)V

    goto/16 :goto_5

    :cond_16
    :goto_3
    return-void

    :sswitch_6
    const-string v4, "onClick: v9_camera_picker"

    invoke-static {v1, v4}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->isDoingAction()Z

    move-result v1

    if-eqz v1, :cond_17

    return-void

    :cond_17
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->isRecording()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-interface {v3}, Lcom/android/camera/module/Module;->getModuleIndex()I

    move-result v1

    if-eq v1, v7, :cond_18

    iget-boolean v1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mIsVideoCast:Z

    if-nez v1, :cond_18

    return-void

    :cond_18
    invoke-direct {p0}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->isThumbLoading()Z

    move-result v1

    if-eqz v1, :cond_19

    return-void

    :cond_19
    if-eqz v2, :cond_1a

    invoke-interface {v2}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->isTopExpendAnimRuning()Z

    move-result v1

    if-eqz v1, :cond_1a

    return-void

    :cond_1a
    invoke-virtual {p0}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->isExpanded()Z

    move-result v1

    if-eqz v1, :cond_1b

    iget-object v1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mDragUpLayout:Lcom/android/camera/ui/DragLayout;

    invoke-virtual {v1}, Lcom/android/camera/ui/DragLayout;->shrink()Z

    :cond_1b
    invoke-virtual {p0}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->hideExtra()V

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/extra/DataItemLive;->getMimojiStatusManager()Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;->isInMimojiCreate()Z

    move-result v1

    if-eqz v1, :cond_1c

    const-string v1, "mimoji_click_create_switch"

    invoke-static {v1, v8}, Lcom/android/camera/statistic/CameraStatUtils;->trackMimojiClick(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1c
    invoke-interface {v0, p1}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->onCameraPickerClicked(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1d

    return-void

    :cond_1d
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0x3b2

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/impl/component/DisplayGuideImp;

    if-eqz v0, :cond_1f

    iget v1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-virtual {v0, v1}, Lcom/android/camera/module/impl/component/DisplayGuideImp;->isSupportUltraPixelSelf(I)Z

    move-result v1

    if-eqz v1, :cond_1f

    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mHandler:Landroid/os/Handler;

    if-eqz p1, :cond_1e

    iget p1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-virtual {v0, p1}, Lcom/android/camera/module/impl/component/DisplayGuideImp;->ultraPixelSelf(I)Z

    move-result p1

    if-eqz p1, :cond_1e

    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v9}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mHandler:Landroid/os/Handler;

    const-wide/16 v0, 0x2710

    invoke-virtual {p1, v9, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1e
    return-void

    :cond_1f
    new-array v0, v6, [Landroid/view/View;

    aput-object p1, v0, v5

    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->changeCamera([Landroid/view/View;)V

    goto/16 :goto_5

    :sswitch_7
    const-string p1, "onClick: mimoji_create_back"

    invoke-static {v1, p1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, -0x1

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mMimojiBack:Landroid/widget/ImageView;

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/camera/fragment/BaseFragment;->animateViews(ILjava/util/List;Landroid/view/View;)V

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/extra/DataItemLive;->getMimojiStatusManager()Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;

    move-result-object p1

    invoke-virtual {p1, v9}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;->setMode(I)V

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 v0, 0xd4

    invoke-virtual {p1, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$RecordState;

    invoke-interface {p1}, Lcom/android/camera/protocol/ModeProtocol$RecordState;->onMimojiCreateBack()V

    const-string p1, "mimoji_click_create_back"

    invoke-static {p1, v8}, Lcom/android/camera/statistic/CameraStatUtils;->trackMimojiClick(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :sswitch_8
    const-string v0, "onClick: bottom_recording_camera_picker"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mVideoRecordingPaused:Z

    if-nez v0, :cond_20

    return-void

    :cond_20
    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/16 v1, 0xae

    if-ne v0, v1, :cond_21

    const-string v0, "live_swith_camera"

    invoke-static {v0}, Lcom/android/camera/statistic/CameraStatUtils;->trackLiveClick(Ljava/lang/String;)V

    goto :goto_4

    :cond_21
    const/16 v1, 0xb7

    if-ne v0, v1, :cond_22

    const-string v0, "mi_live_switch_camera"

    invoke-static {v0}, Lcom/android/camera/statistic/CameraStatUtils;->trackMiLiveClick(Ljava/lang/String;)V

    :cond_22
    :goto_4
    new-array v0, v6, [Landroid/view/View;

    aput-object p1, v0, v5

    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->changeCamera([Landroid/view/View;)V

    goto :goto_5

    :sswitch_9
    const-string p1, "onClick: bottom_external_mode_layout"

    invoke-static {v1, p1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->isDoingAction()Z

    move-result p1

    if-eqz p1, :cond_23

    return-void

    :cond_23
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->isRecording()Z

    move-result p1

    if-nez p1, :cond_25

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->isRecordingPaused()Z

    move-result p1

    if-eqz p1, :cond_24

    goto :goto_5

    :cond_24
    invoke-virtual {p0}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->resetToCommonMode()V

    nop

    :cond_25
    :goto_5
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f090080 -> :sswitch_9
        0x7f090089 -> :sswitch_8
        0x7f09023b -> :sswitch_7
        0x7f09023c -> :sswitch_7
        0x7f0903d0 -> :sswitch_6
        0x7f0903d1 -> :sswitch_6
        0x7f0903d2 -> :sswitch_5
        0x7f0903d3 -> :sswitch_5
        0x7f0903d7 -> :sswitch_4
        0x7f0903d8 -> :sswitch_4
        0x7f0903db -> :sswitch_3
        0x7f0903dc -> :sswitch_3
        0x7f0903dd -> :sswitch_2
        0x7f0903de -> :sswitch_2
        0x7f0903e3 -> :sswitch_1
        0x7f0903e5 -> :sswitch_1
        0x7f0903e7 -> :sswitch_0
        0x7f0903e8 -> :sswitch_0
    .end sparse-switch
.end method

.method public onDragDone(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mBottomActionView:Landroid/widget/FrameLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setAlpha(F)V

    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mBottomActionView:Landroid/widget/FrameLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    const-string/jumbo p1, "value_enter_more_mode_by_pop"

    invoke-static {p1}, Lcom/android/camera/statistic/CameraStatUtils;->trackEnterMoreMode(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mBottomActionView:Landroid/widget/FrameLayout;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setAlpha(F)V

    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mBottomActionView:Landroid/widget/FrameLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public onDragProgress(IZ)V
    .locals 1

    iget-object p2, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mBottomActionView:Landroid/widget/FrameLayout;

    if-eqz p2, :cond_0

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    int-to-float p1, p1

    invoke-static {}, Lcom/android/camera/ui/DragLayout;->getAnimationConfig()Lcom/android/camera/ui/DragLayout$DragAnimationConfig;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/camera/ui/DragLayout$DragAnimationConfig;->getDisappearDistance()F

    move-result p2

    div-float/2addr p1, p2

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-static {p2, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mBottomActionView:Landroid/widget/FrameLayout;

    sub-float/2addr p2, p1

    invoke-virtual {v0, p2}, Landroid/widget/FrameLayout;->setAlpha(F)V

    :cond_0
    return-void
.end method

.method public onDragStart(Z)V
    .locals 2

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xac

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->isExtraMenuShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->hideExtraMenu()V

    :cond_0
    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mBottomActionView:Landroid/widget/FrameLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setAlpha(F)V

    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mBottomActionView:Landroid/widget/FrameLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public onHandleSwitcher(I)Z
    .locals 2

    iget-boolean v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mIsShowLighting:Z

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa1

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$CameraAction;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->isDoingAction()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mIsShowLighting:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mFragmentLighting:Lcom/android/camera/fragment/bottom/action/FragmentLighting;

    invoke-virtual {v0, p1}, Lcom/android/camera/fragment/bottom/action/FragmentLighting;->switchLighting(I)V

    :cond_2
    :goto_0
    return v1
.end method

.method public onInterceptDrag()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onKeyEventSmoothZoom(ILandroid/view/KeyEvent;)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mZoomViewHorizontal:Lcom/android/camera/ui/ZoomView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/ui/ZoomView;->onKeyEventSmoothZoom(ILandroid/view/KeyEvent;)Z

    :cond_0
    return-void
.end method

.method public onModeSelected(ILjava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->isShowFilterView()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->isShowLightingView()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/16 v1, 0xb8

    if-ne v0, v1, :cond_1

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/extra/DataItemLive;->getMimojiStatusManager()Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;->isInMimojiPreview()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/16 v1, 0xb4

    if-ne v0, v1, :cond_2

    const/16 v0, 0xa7

    if-ne p1, v0, :cond_2

    return-void

    :cond_2
    const/16 v0, 0xfe

    if-ne p1, v0, :cond_4

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->useNewMoreTabStyle()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "value_enter_more_mode_by_tab_new"

    goto :goto_0

    :cond_3
    const-string/jumbo v0, "value_enter_more_mode_by_tab"

    :goto_0
    invoke-static {v0}, Lcom/android/camera/statistic/CameraStatUtils;->trackEnterMoreMode(Ljava/lang/String;)V

    :cond_4
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->changeModeByNewMode(ILjava/lang/String;IZ)V

    :cond_5
    :goto_1
    return-void
.end method

.method public onPause()V
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    invoke-direct {p0}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->resetSmoothZoom()V

    return-void
.end method

.method public onRestoreCameraActionMenu(I)V
    .locals 3

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->showModeOrExternalTipLayout(Z)V

    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mModeSelectLayout:Lcom/android/camera/fragment/bottom/BottomActionMenu;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/android/camera/fragment/bottom/BottomActionMenu;->switchMenuMode(IZ)V

    iget-boolean v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mVideoRecordingStarted:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/16 v2, 0xae

    if-eq v0, v2, :cond_0

    const/16 v2, 0xb7

    if-eq v0, v2, :cond_0

    const/16 v2, 0xd7

    if-ne v0, v2, :cond_2

    :cond_0
    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-direct {p0, v0}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->needShowZoomView(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->setZoomViewVisible(Z)V

    :cond_1
    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mDragUpLayout:Lcom/android/camera/ui/DragLayout;

    invoke-virtual {p1, v1}, Lcom/android/camera/ui/DragLayout;->setDragEnable(Z)V

    const/4 p1, -0x1

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mModeSelectLayout:Lcom/android/camera/fragment/bottom/BottomActionMenu;

    invoke-virtual {v1}, Lcom/android/camera/fragment/bottom/BottomActionMenu;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/camera/fragment/BaseFragment;->animateViews(ILjava/util/List;Landroid/view/View;)V

    :cond_2
    return-void
.end method

.method public onResume()V
    .locals 4

    invoke-super {p0}, Lcom/android/camera/fragment/BaseFragment;->onResume()V

    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mPickers:Lcom/android/camera/fragment/bottom/action/Pickers;

    iget v1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/4 v2, 0x0

    const/16 v3, 0xcc

    if-eq v1, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/bottom/action/Pickers;->useDefault(Z)V

    iget-boolean v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mIsVideoCast:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/CameraSnapView;->setSnapClickEnable(Z)V

    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mPickers:Lcom/android/camera/fragment/bottom/action/Pickers;

    invoke-virtual {v0}, Lcom/android/camera/fragment/bottom/action/Pickers;->show()V

    const-string v0, "FragmentBottomAction"

    const-string v1, "onResume->STATE_SHOW"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-direct {p0}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->initThumbLayout()V

    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mModeSelectView:Lcom/android/camera/ui/ModeSelectView;

    invoke-virtual {v0}, Lcom/android/camera/ui/ModeSelectView;->refresh()V

    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mDragUpLayout:Lcom/android/camera/ui/DragLayout;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/camera/ui/DragLayout;->reset()V

    :cond_2
    return-void
.end method

.method public onSnapClick()V
    .locals 5

    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragment;->isEnableClick()Z

    move-result v0

    const-string v1, "FragmentBottomAction"

    if-nez v0, :cond_0

    const-string v0, "onSnapClick: disabled"

    :goto_0
    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "onSnapClick: no context"

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-interface {v2}, Lcom/android/camera/module/Module;->isIgnoreTouchEvent()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v0, "onSnapClick: ignore onSnapClick event, because module isn\'t ready"

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Lcom/android/camera/Camera;->isScreenSlideOff()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "onSnapClick: ignore onSnapClick event, because screen slide is off"

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v2, 0xa1

    invoke-virtual {v0, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$CameraAction;

    if-nez v0, :cond_4

    const-string v0, "onSnapClick: no camera action"

    goto :goto_0

    :cond_4
    const-string v3, "onSnapClick"

    invoke-static {v1, v3}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    iget v3, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/16 v4, 0xa

    if-eq v3, v2, :cond_7

    const/16 v2, 0xa2

    if-eq v3, v2, :cond_7

    const/16 v2, 0xa6

    if-eq v3, v2, :cond_6

    const/16 v2, 0xa9

    if-eq v3, v2, :cond_7

    const/16 v2, 0xac

    if-eq v3, v2, :cond_7

    const/16 v2, 0xae

    if-eq v3, v2, :cond_7

    const/16 v2, 0xb0

    if-eq v3, v2, :cond_6

    const/16 v2, 0xbb

    if-eq v3, v2, :cond_7

    const/16 v2, 0xcc

    if-eq v3, v2, :cond_5

    const/16 v2, 0xd3

    if-eq v3, v2, :cond_7

    const/16 v2, 0xb3

    if-eq v3, v2, :cond_7

    const/16 v2, 0xb4

    if-eq v3, v2, :cond_7

    const/16 v2, 0xb7

    if-eq v3, v2, :cond_7

    const/16 v2, 0xb8

    if-eq v3, v2, :cond_7

    const/16 v2, 0xd6

    if-eq v3, v2, :cond_7

    const/16 v2, 0xd7

    if-eq v3, v2, :cond_7

    packed-switch v3, :pswitch_data_0

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/data/data/extra/DataItemLive;->getTimerBurstController()Lcom/android/camera/timerburst/TimerBurstController;

    move-result-object v2

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->isBlockSnap()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual {v2}, Lcom/android/camera/timerburst/TimerBurstController;->isInTimerBurstShotting()Z

    move-result v2

    if-nez v2, :cond_7

    const-string v0, "onSnapClick: block snap"

    goto/16 :goto_0

    :cond_5
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningDualVideo()Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;->ismDrawGridWindow()Z

    move-result v1

    if-nez v1, :cond_7

    iget-boolean v1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mVideoRecordingStarted:Z

    if-nez v1, :cond_7

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mVideoRecordingStarted:Z

    goto :goto_1

    :cond_6
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->isDoingAction()Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v0, "onSnapClick: doing action"

    goto/16 :goto_0

    :cond_7
    :goto_1
    :pswitch_0
    invoke-interface {v0, v4}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->onShutterButtonClick(I)V

    return-void

    :pswitch_data_0
    .packed-switch 0xcf
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onSnapLongPress()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragment;->isEnableClick()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa1

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$CameraAction;

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->isDoingAction()Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/camera/Camera;

    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Lcom/android/camera/Camera;->isScreenSlideOff()Z

    move-result v1

    if-eqz v1, :cond_3

    return-void

    :cond_3
    const-string v1, "FragmentBottomAction"

    const-string v2, "onSnapLongPress"

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->onShutterButtonLongClick()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mLongPressBurst:Z

    :cond_4
    return-void
.end method

.method public onSnapLongPressCancelIn()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragment;->isEnableClick()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa1

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$CameraAction;

    if-nez v0, :cond_1

    return-void

    :cond_1
    const-string v1, "FragmentBottomAction"

    const-string v2, "onSnapLongPressCancelIn"

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->onShutterButtonLongClickCancel(Z)V

    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/16 v1, 0xa3

    if-eq v0, v1, :cond_3

    const/16 v1, 0xa5

    if-eq v0, v1, :cond_2

    const/16 v1, 0xa7

    if-eq v0, v1, :cond_2

    const/16 v1, 0xab

    if-eq v0, v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->onSnapClick()V

    goto :goto_0

    :cond_3
    iget-boolean v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mLongPressBurst:Z

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mLongPressBurst:Z

    :cond_4
    :goto_0
    return-void
.end method

.method public onSnapLongPressCancelOut()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragment;->isEnableClick()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa1

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$CameraAction;

    if-nez v0, :cond_1

    return-void

    :cond_1
    const-string v1, "FragmentBottomAction"

    const-string v2, "onSnapLongPressCancelOut"

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->onShutterButtonLongClickCancel(Z)V

    iget-boolean v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mLongPressBurst:Z

    if-eqz v0, :cond_2

    iput-boolean v1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mLongPressBurst:Z

    :cond_2
    return-void
.end method

.method public onSnapPrepare()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragment;->isEnableClick()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->isExpanded()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mDragUpLayout:Lcom/android/camera/ui/DragLayout;

    invoke-virtual {v0}, Lcom/android/camera/ui/DragLayout;->shrink()Z

    :cond_1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa1

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$CameraAction;

    if-nez v0, :cond_2

    return-void

    :cond_2
    const-string v1, "FragmentBottomAction"

    const-string v2, "onSnapPrepare"

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-interface {v0, v1, v2}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->onShutterButtonFocus(ZI)V

    return-void
.end method

.method public onSwitchBeautySkinColor(Lcom/android/camera/data/data/runing/ComponentRunningShine;Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mBottomRecordingTime:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mBottomRecordingTime:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    invoke-direct {p0}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->hideModeOrExternalTipLayout()V

    if-eqz p2, :cond_1

    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mModeSelectLayout:Lcom/android/camera/fragment/bottom/BottomActionMenu;

    const p2, 0x7f1002cb

    invoke-virtual {p1, p2}, Lcom/android/camera/fragment/bottom/BottomActionMenu;->switchSingleTabMenu(I)V

    goto :goto_0

    :cond_1
    const/4 p2, 0x1

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mModeSelectLayout:Lcom/android/camera/fragment/bottom/BottomActionMenu;

    invoke-virtual {v1}, Lcom/android/camera/fragment/bottom/BottomActionMenu;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, p2, v0, v1}, Lcom/android/camera/fragment/BaseFragment;->animateViews(ILjava/util/List;Landroid/view/View;)V

    iget-object p2, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mModeSelectLayout:Lcom/android/camera/fragment/bottom/BottomActionMenu;

    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-virtual {p2, p1, v0}, Lcom/android/camera/fragment/bottom/BottomActionMenu;->expandShine(Lcom/android/camera/data/data/runing/ComponentRunningShine;I)V

    :goto_0
    return-void
.end method

.method public onSwitchCameraPicker()V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mPickers:Lcom/android/camera/fragment/bottom/action/Pickers;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0}, Lcom/android/camera/fragment/bottom/action/Pickers;->getCurrentView()Landroid/view/View;

    move-result-object v0

    aput-object v0, v1, v2

    invoke-virtual {p0, v1}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->changeCamera([Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public onSwitchFastMotionAction(Lcom/android/camera/data/data/runing/ComponentRunningFastMotion;)V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mBottomRecordingTime:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mBottomRecordingTime:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    invoke-direct {p0}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->hideModeOrExternalTipLayout()V

    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mModeSelectLayout:Lcom/android/camera/fragment/bottom/BottomActionMenu;

    invoke-virtual {v0, p1}, Lcom/android/camera/fragment/bottom/BottomActionMenu;->switchFastMotion(Lcom/android/camera/data/data/runing/ComponentRunningFastMotion;)V

    return-void
.end method

.method public onSwitchFastMotionProAction(Lcom/android/camera/data/data/runing/ComponentRunningFastMotionPro;)V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mBottomRecordingTime:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mBottomRecordingTime:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    invoke-direct {p0}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->hideModeOrExternalTipLayout()V

    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mModeSelectLayout:Lcom/android/camera/fragment/bottom/BottomActionMenu;

    invoke-virtual {v0, p1}, Lcom/android/camera/fragment/bottom/BottomActionMenu;->switchFastMotionPro(Lcom/android/camera/data/data/runing/ComponentRunningFastMotionPro;)V

    return-void
.end method

.method public onSwitchLiveActionMenu(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mBottomRecordingTime:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mBottomRecordingTime:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    invoke-direct {p0}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->hideModeOrExternalTipLayout()V

    iput p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mCurrentLiveActionMenuType:I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->setZoomViewVisible(Z)V

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mModeSelectLayout:Lcom/android/camera/fragment/bottom/BottomActionMenu;

    invoke-virtual {v1}, Lcom/android/camera/fragment/bottom/BottomActionMenu;->getView()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/camera/fragment/BaseFragment;->animateViews(ILjava/util/List;Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mModeSelectLayout:Lcom/android/camera/fragment/bottom/BottomActionMenu;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/camera/fragment/bottom/BottomActionMenu;->switchMenuMode(IIZ)V

    return-void
.end method

.method public onTrackSnapMissTaken(J)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragment;->isEnableClick()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xba

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$CameraActionTrack;

    if-nez v0, :cond_1

    return-void

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTrackSnapMissTaken "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FragmentBottomAction"

    invoke-static {v2, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v0, p1, p2}, Lcom/android/camera/protocol/ModeProtocol$CameraActionTrack;->onTrackShutterButtonMissTaken(J)V

    return-void
.end method

.method public onTrackSnapTaken(J)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragment;->isEnableClick()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xba

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$CameraActionTrack;

    if-nez v0, :cond_1

    return-void

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTrackSnapTaken "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FragmentBottomAction"

    invoke-static {v2, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v0, p1, p2}, Lcom/android/camera/protocol/ModeProtocol$CameraActionTrack;->onTrackShutterButtonTaken(J)V

    return-void
.end method

.method public onZoomTouchDown()V
    .locals 2

    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-static {v0}, Lcom/android/camera/statistic/CameraStatUtils;->modeIdToName(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/statistic/CameraStatUtils;->trackVideoSmoothZoom(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isAiAudioNewEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/camera/statistic/CameraStatUtils;->trackVideoAiAudioNewZoom()V

    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xae

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$ManuallyValueChanged;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/camera/protocol/ModeProtocol$ManuallyValueChanged;->updateSATIsZooming(Z)V

    :cond_1
    return-void
.end method

.method public onZoomTouchUp()V
    .locals 2

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xae

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$ManuallyValueChanged;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/camera/protocol/ModeProtocol$ManuallyValueChanged;->updateSATIsZooming(Z)V

    :cond_0
    return-void
.end method

.method public onZoomValueChanged(F)V
    .locals 2

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xae

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$ManuallyValueChanged;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Lcom/android/camera/protocol/ModeProtocol$ManuallyValueChanged;->onDualZoomValueChanged(FI)V

    :cond_0
    return-void
.end method

.method public pauseRecording()V
    .locals 4

    iget-boolean v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mVideoPauseSupported:Z

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mVideoRecordingStarted:Z

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/16 v1, 0xa2

    if-eq v0, v1, :cond_8

    const/16 v1, 0xa9

    if-eq v0, v1, :cond_8

    const/16 v1, 0xae

    if-eq v0, v1, :cond_2

    const/16 v1, 0xb4

    if-eq v0, v1, :cond_8

    const/16 v1, 0xb7

    if-eq v0, v1, :cond_4

    const/16 v1, 0xcc

    if-eq v0, v1, :cond_1

    const/16 v1, 0xcf

    if-eq v0, v1, :cond_8

    const/16 v1, 0xd7

    if-eq v0, v1, :cond_4

    return-void

    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object v0

    check-cast v0, Lcom/android/camera/dualvideo/DualVideoRecordModule;

    invoke-virtual {v0}, Lcom/android/camera/dualvideo/DualVideoRecordModule;->onPauseButtonClick()V

    goto :goto_2

    :cond_2
    iget-boolean v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mVideoRecordingPaused:Z

    if-eqz v0, :cond_3

    const-string v0, "live_resume"

    goto :goto_0

    :cond_3
    const-string v0, "live_pause"

    :goto_0
    invoke-static {v0}, Lcom/android/camera/statistic/CameraStatUtils;->trackLiveClick(Ljava/lang/String;)V

    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mLastPauseTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_5

    const-wide/16 v2, 0x1f4

    cmp-long v0, v0, v2

    if-gez v0, :cond_5

    return-void

    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mLastPauseTime:J

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ActivityBase;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object v1

    instance-of v1, v1, Lcom/android/camera/module/LiveModule;

    if-nez v1, :cond_6

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object v1

    instance-of v1, v1, Lcom/android/camera/module/MiLiveModule;

    if-nez v1, :cond_6

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object v1

    instance-of v1, v1, Lcom/android/camera/module/VideoSkyModule;

    if-nez v1, :cond_6

    goto :goto_1

    :cond_6
    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/ILiveModule;

    invoke-interface {v0}, Lcom/android/camera/module/ILiveModule;->onPauseButtonClick()V

    goto :goto_2

    :cond_7
    :goto_1
    const-string v0, "FragmentBottomAction"

    const-string v1, "onClick: recording pause is not allowed!!!"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/VideoModule;

    invoke-virtual {v0}, Lcom/android/camera/module/VideoModule;->onPauseButtonClick()V

    :cond_9
    :goto_2
    return-void
.end method

.method public processingAudioCapture(Z)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {p1}, Lcom/android/camera/ui/CameraSnapView;->startRing()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {p1}, Lcom/android/camera/ui/CameraSnapView;->stopRing()V

    :goto_0
    return-void
.end method

.method public processingFailed()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->updateLoading(Z)V

    return-void
.end method

.method public processingFinish()V
    .locals 9

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mIsVideoCast:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mPickers:Lcom/android/camera/fragment/bottom/action/Pickers;

    invoke-virtual {v0}, Lcom/android/camera/fragment/bottom/action/Pickers;->show()V

    const-string v0, "FragmentBottomAction"

    const-string v2, "processingFinish->STATE_SHOW"

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0, v3, v2, v0}, Lcom/android/camera/fragment/BaseFragment;->animateViews(ILjava/util/List;Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mEdgeHorizonScrollView:Lcom/android/camera/ui/EdgeHorizonScrollView;

    invoke-virtual {p0, v3, v3, v0}, Lcom/android/camera/fragment/BaseFragment;->animateViews(IZLandroid/view/View;)V

    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mModeSelectView:Lcom/android/camera/ui/ModeSelectView;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setEnabled(Z)V

    iput-boolean v1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mVideoRecordingStarted:Z

    iput-boolean v1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mVideoRecordingPaused:Z

    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->setProgressBarVisible(I)V

    iget-object v4, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {v4}, Lcom/android/camera/ui/CameraSnapView;->showRoundPaintItem()V

    invoke-static {}, Lcom/android/camera/Util;->isAccessible()Z

    move-result v4

    const/16 v5, 0xb8

    if-eqz v4, :cond_3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v4

    if-eqz v4, :cond_2

    iget v4, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    if-eq v4, v5, :cond_2

    iget-object v4, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    const v6, 0x7f100037

    invoke-virtual {p0, v6}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :cond_2
    iget-object v4, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    const v6, 0x7f1000a9

    invoke-virtual {p0, v6}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_3
    iget v4, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/16 v6, 0xa7

    const/4 v7, -0x1

    if-eq v4, v6, :cond_a

    const/16 v6, 0xb4

    if-eq v4, v6, :cond_9

    const/16 v6, 0xcf

    if-eq v4, v6, :cond_8

    const/16 v0, 0xad

    if-eq v4, v0, :cond_7

    const/16 v0, 0xae

    if-eq v4, v0, :cond_6

    const/16 v0, 0xb7

    if-eq v4, v0, :cond_6

    if-eq v4, v5, :cond_5

    const/16 v0, 0xd6

    if-eq v4, v0, :cond_9

    const/16 v0, 0xd7

    if-eq v4, v0, :cond_4

    goto/16 :goto_3

    :cond_4
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mRecordingReverse:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_c

    new-instance v0, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;

    iget-object v2, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mRecordingReverse:Landroid/widget/ImageView;

    invoke-direct {v0, v2}, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;-><init>(Landroid/view/View;)V

    goto :goto_0

    :cond_5
    invoke-direct {p0}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->showNormalMimoji2Bottom()V

    goto/16 :goto_3

    :cond_6
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mBottomRecordingCameraPicker:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_c

    new-instance v0, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;

    iget-object v2, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mBottomRecordingCameraPicker:Landroid/widget/ImageView;

    invoke-direct {v0, v2}, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;-><init>(Landroid/view/View;)V

    :goto_0
    invoke-static {v0}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    goto :goto_3

    :cond_7
    invoke-static {}, LOooO0O0/OooO0o0/OooO00o/OooO0O0;->o0O00O()LOooO0O0/OooO0o0/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0o0/OooO00o/OooO0O0;->o00ooooO()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_2

    :cond_8
    new-instance v2, Landroid/view/animation/RotateAnimation;

    const/4 v4, 0x0

    const/high16 v5, 0x43b40000    # 360.0f

    iget-object v6, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mRecordSaveButton:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    iget v6, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    iget-object v8, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mRecordSaveButton:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    iget v8, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    invoke-direct {v2, v4, v5, v6, v8}, Landroid/view/animation/RotateAnimation;-><init>(FFFF)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0016

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v2, v4, v5}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    new-instance v4, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v4}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v2, v4}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v2, v3}, Landroid/view/animation/RotateAnimation;->setRepeatMode(I)V

    invoke-virtual {v2, v7}, Landroid/view/animation/RotateAnimation;->setRepeatCount(I)V

    iget-object v3, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mRecordSaveButton:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v2, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mRecordSaveButton:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    :cond_9
    invoke-direct {p0, v1}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->setRecordingSwitchTarget(Z)V

    :goto_1
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mRecordingSwitch:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0, v3, v2, v0}, Lcom/android/camera/fragment/BaseFragment;->animateViews(ILjava/util/List;Landroid/view/View;)V

    goto :goto_3

    :cond_a
    invoke-static {}, LOooO0O0/OooO0o0/OooO00o/OooO0O0;->o0O00O()LOooO0O0/OooO0o0/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0o0/OooO00o/OooO0O0;->o00ooOO0()Z

    move-result v0

    if-eqz v0, :cond_b

    :goto_2
    invoke-direct {p0, v3}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->setRecordingSwitchTarget(Z)V

    goto :goto_1

    :cond_b
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mRecordingSwitch:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0, v7, v2, v0}, Lcom/android/camera/fragment/BaseFragment;->animateViews(ILjava/util/List;Landroid/view/View;)V

    :cond_c
    :goto_3
    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isAlgoFPS(I)Z

    move-result v2

    invoke-static {}, Lcom/android/camera/CameraSettings;->isVideoBokehOn()Z

    move-result v3

    invoke-static {v1, v0, v1, v2, v3}, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->generate(ZIZZZ)Lcom/android/camera/fragment/bottom/BottomAnimationConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->configVariables()Lcom/android/camera/fragment/bottom/BottomAnimationConfig;

    move-result-object v0

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/data/data/extra/DataItemLive;->getMimojiStatusManager()Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;->isInMimojiCreate()Z

    move-result v2

    iput-boolean v2, v0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mIsInMimojiCreate:Z

    iget-object v2, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {v2, v0}, Lcom/android/camera/ui/CameraSnapView;->triggerAnimation(Lcom/android/camera/fragment/bottom/BottomAnimationConfig;)V

    invoke-direct {p0, v1, v1}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->updateBottomInRecording(ZZ)V

    return-void
.end method

.method public processingLongExposePrepare()V
    .locals 5

    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isAlgoFPS(I)Z

    move-result v1

    invoke-static {}, Lcom/android/camera/CameraSettings;->isVideoBokehOn()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v3, v0, v4, v1, v2}, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->generate(ZIZZZ)Lcom/android/camera/fragment/bottom/BottomAnimationConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->configVariables()Lcom/android/camera/fragment/bottom/BottomAnimationConfig;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {v1, v0}, Lcom/android/camera/ui/CameraSnapView;->longExposePrepare(Lcom/android/camera/fragment/bottom/BottomAnimationConfig;)V

    return-void
.end method

.method public processingLongExposeStart()V
    .locals 5

    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isAlgoFPS(I)Z

    move-result v1

    invoke-static {}, Lcom/android/camera/CameraSettings;->isVideoBokehOn()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v3, v0, v4, v1, v2}, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->generate(ZIZZZ)Lcom/android/camera/fragment/bottom/BottomAnimationConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->configVariables()Lcom/android/camera/fragment/bottom/BottomAnimationConfig;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {v1, v0}, Lcom/android/camera/ui/CameraSnapView;->longExposeStart(Lcom/android/camera/fragment/bottom/BottomAnimationConfig;)V

    return-void
.end method

.method public processingMimojiBack()V
    .locals 4

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/extra/DataItemLive;->getMimojiStatusManager()Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;->setMode(I)V

    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mPickers:Lcom/android/camera/fragment/bottom/action/Pickers;

    invoke-virtual {v0}, Lcom/android/camera/fragment/bottom/action/Pickers;->hide()V

    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mMimojiBack:Landroid/widget/ImageView;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Lcom/android/camera/fragment/BaseFragment;->animateViews(ILjava/util/List;Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mThumbnailImageLayout:Landroid/view/ViewGroup;

    const/4 v3, 0x1

    invoke-virtual {p0, v3, v2, v0}, Lcom/android/camera/fragment/BaseFragment;->animateViews(ILjava/util/List;Landroid/view/View;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->showModeOrExternalTipLayout(Z)V

    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mModeSelectLayout:Lcom/android/camera/fragment/bottom/BottomActionMenu;

    invoke-virtual {v0}, Lcom/android/camera/fragment/bottom/BottomActionMenu;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v3, v2, v0}, Lcom/android/camera/fragment/BaseFragment;->animateViews(ILjava/util/List;Landroid/view/View;)V

    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/16 v3, 0xb8

    if-ne v0, v3, :cond_0

    invoke-direct {p0}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->showNormalMimoji2Bottom()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mPickers:Lcom/android/camera/fragment/bottom/action/Pickers;

    invoke-virtual {v0}, Lcom/android/camera/fragment/bottom/action/Pickers;->show()V

    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mRecordingSwitch:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0, v1, v2, v0}, Lcom/android/camera/fragment/BaseFragment;->animateViews(ILjava/util/List;Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method public processingMimojiPrepare()V
    .locals 5

    invoke-direct {p0}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->hideModeOrExternalTipLayout()V

    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mDragUpLayout:Lcom/android/camera/ui/DragLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/DragLayout;->setDragEnable(Z)V

    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mThumbnailImageLayout:Landroid/view/ViewGroup;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Lcom/android/camera/fragment/BaseFragment;->animateViews(ILjava/util/List;Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mMimojiBack:Landroid/widget/ImageView;

    const/4 v3, 0x1

    invoke-virtual {p0, v3, v2, v0}, Lcom/android/camera/fragment/BaseFragment;->animateViews(ILjava/util/List;Landroid/view/View;)V

    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/16 v3, 0xb8

    if-ne v0, v3, :cond_0

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/extra/DataItemLive;->getMimojiStatusManager()Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;

    move-result-object v0

    const/4 v4, 0x4

    invoke-virtual {v0, v4}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;->setMode(I)V

    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mPickers:Lcom/android/camera/fragment/bottom/action/Pickers;

    invoke-virtual {v0}, Lcom/android/camera/fragment/bottom/action/Pickers;->show()V

    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    invoke-static {v3}, Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;->create(I)Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/camera/ui/CameraSnapView;->onForceVideoStateChange(Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;)V

    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mRecordingSwitch:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0, v1, v2, v0}, Lcom/android/camera/fragment/BaseFragment;->animateViews(ILjava/util/List;Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public processingPause()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mVideoRecordingPaused:Z

    iget-object v1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {v1}, Lcom/android/camera/ui/CameraSnapView;->pauseRecording()V

    invoke-direct {p0, v0}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->setPausePlaySwitchTarget(Z)V

    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mRecordingPause:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->OooO0oo()V

    invoke-static {}, Lcom/android/camera/Util;->isAccessible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mRecordingPause:Lcom/airbnb/lottie/LottieAnimationView;

    const v1, 0x7f1000b0

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mIsVideoCast:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mPickers:Lcom/android/camera/fragment/bottom/action/Pickers;

    invoke-virtual {v0}, Lcom/android/camera/fragment/bottom/action/Pickers;->hide()V

    const-string v0, "FragmentBottomAction"

    const-string v1, "processingPause->STATE_HIDE"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/16 v1, 0xae

    if-eq v0, v1, :cond_5

    const/16 v1, 0xb7

    if-eq v0, v1, :cond_3

    const/16 v1, 0xcc

    if-eq v0, v1, :cond_2

    const/16 v1, 0xd7

    if-eq v0, v1, :cond_2

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mPickers:Lcom/android/camera/fragment/bottom/action/Pickers;

    invoke-virtual {v0}, Lcom/android/camera/fragment/bottom/action/Pickers;->show()V

    new-instance v0, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;

    iget-object v1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mRecordingSnap:Landroid/widget/ImageView;

    invoke-direct {v0, v1}, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;-><init>(Landroid/view/View;)V

    goto :goto_0

    :cond_3
    new-instance v0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction$6;

    invoke-direct {v0, p0}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction$6;-><init>(Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;)V

    iget-object v1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mBottomAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mBottomAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mBottomAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction$6;->onAnimationEnd(Landroid/animation/Animator;)V

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {v0}, Lcom/android/camera/ui/CameraSnapView;->addSegmentNow()V

    new-instance v0, Lcom/android/camera/animation/type/AlphaInOnSubscribe;

    iget-object v1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mBottomRecordingCameraPicker:Landroid/widget/ImageView;

    invoke-direct {v0, v1}, Lcom/android/camera/animation/type/AlphaInOnSubscribe;-><init>(Landroid/view/View;)V

    invoke-static {v0}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    new-instance v0, Lcom/android/camera/animation/type/AlphaInOnSubscribe;

    iget-object v1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mRecordingReverse:Landroid/widget/ImageView;

    invoke-direct {v0, v1}, Lcom/android/camera/animation/type/AlphaInOnSubscribe;-><init>(Landroid/view/View;)V

    :goto_0
    invoke-static {v0}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    :goto_1
    return-void
.end method

.method public processingPostAction(I)V
    .locals 4

    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {p0, v1, v2, v0}, Lcom/android/camera/fragment/BaseFragment;->animateViews(IZLandroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {v0}, Lcom/android/camera/ui/CameraSnapView;->hideRoundPaintItem()V

    const/4 v0, 0x5

    if-eq p1, v0, :cond_1

    iget p1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-static {p1}, Lcom/android/camera/CameraSettings;->isAlgoFPS(I)Z

    move-result v0

    invoke-static {}, Lcom/android/camera/CameraSettings;->isVideoBokehOn()Z

    move-result v3

    invoke-static {v1, p1, v2, v0, v3}, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->generate(ZIZZZ)Lcom/android/camera/fragment/bottom/BottomAnimationConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->configVariables()Lcom/android/camera/fragment/bottom/BottomAnimationConfig;

    move-result-object p1

    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/CameraSnapView;->triggerAnimation(Lcom/android/camera/fragment/bottom/BottomAnimationConfig;)V

    :cond_1
    invoke-static {}, Lcom/android/camera/Util;->isAccessible()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    const v0, 0x7f1000b1

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_2
    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mEdgeHorizonScrollView:Lcom/android/camera/ui/EdgeHorizonScrollView;

    invoke-virtual {p0, v1, v2, p1}, Lcom/android/camera/fragment/BaseFragment;->animateViews(IZLandroid/view/View;)V

    invoke-direct {p0, v2, v1}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->updateBottomInRecording(ZZ)V

    invoke-direct {p0, v2}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->setProgressBarVisible(I)V

    return-void
.end method

.method public processingPrepare()V
    .locals 5

    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/16 v1, 0xa1

    const/4 v2, 0x1

    if-eq v0, v1, :cond_0

    const/16 v1, 0xa2

    if-eq v0, v1, :cond_0

    const/16 v1, 0xa9

    if-eq v0, v1, :cond_0

    const/16 v1, 0xac

    if-eq v0, v1, :cond_0

    const/16 v1, 0xae

    if-eq v0, v1, :cond_0

    const/16 v1, 0xb7

    if-eq v0, v1, :cond_0

    const/16 v1, 0xbb

    if-eq v0, v1, :cond_0

    const/16 v1, 0xd3

    if-eq v0, v1, :cond_0

    const/16 v1, 0xd6

    if-eq v0, v1, :cond_0

    const/16 v1, 0xb3

    if-eq v0, v1, :cond_0

    const/16 v1, 0xb4

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :cond_0
    :pswitch_0
    iget-boolean v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mVideoRecordingStarted:Z

    if-nez v0, :cond_1

    iput-boolean v2, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mVideoRecordingStarted:Z

    :cond_1
    :goto_0
    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isAlgoFPS(I)Z

    move-result v1

    invoke-static {}, Lcom/android/camera/CameraSettings;->isVideoBokehOn()Z

    move-result v3

    const/4 v4, 0x0

    invoke-static {v4, v0, v2, v1, v3}, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->generate(ZIZZZ)Lcom/android/camera/fragment/bottom/BottomAnimationConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->configVariables()Lcom/android/camera/fragment/bottom/BottomAnimationConfig;

    move-result-object v0

    invoke-direct {p0, v2, v2}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->updateBottomInRecording(ZZ)V

    iget-object v1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {v1, v0}, Lcom/android/camera/ui/CameraSnapView;->prepareRecording(Lcom/android/camera/fragment/bottom/BottomAnimationConfig;)V

    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mDragUpLayout:Lcom/android/camera/ui/DragLayout;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v4}, Lcom/android/camera/ui/DragLayout;->setDragEnable(Z)V

    :cond_2
    return-void

    :pswitch_data_0
    .packed-switch 0xcf
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public processingResume()V
    .locals 3

    iget-boolean v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mIsVideoCast:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mPickers:Lcom/android/camera/fragment/bottom/action/Pickers;

    invoke-virtual {v0}, Lcom/android/camera/fragment/bottom/action/Pickers;->hide()V

    const-string v0, "FragmentBottomAction"

    const-string v1, "processingResume->STATE_HIDE"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mVideoRecordingPaused:Z

    iget-object v1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {v1}, Lcom/android/camera/ui/CameraSnapView;->resumeRecording()V

    invoke-direct {p0, v0}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->setPausePlaySwitchTarget(Z)V

    iget-object v1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mRecordingPause:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v1}, Lcom/airbnb/lottie/LottieAnimationView;->OooO0oo()V

    invoke-static {}, Lcom/android/camera/Util;->isAccessible()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mRecordingPause:Lcom/airbnb/lottie/LottieAnimationView;

    const v2, 0x7f1000ae

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mDragUpLayout:Lcom/android/camera/ui/DragLayout;

    invoke-virtual {v1, v0}, Lcom/android/camera/ui/DragLayout;->setDragEnable(Z)V

    const/4 v0, -0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mModeSelectLayout:Lcom/android/camera/fragment/bottom/BottomActionMenu;

    invoke-virtual {v2}, Lcom/android/camera/fragment/bottom/BottomActionMenu;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/camera/fragment/BaseFragment;->animateViews(ILjava/util/List;Landroid/view/View;)V

    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/16 v1, 0xae

    if-eq v0, v1, :cond_4

    const/16 v1, 0xb7

    if-eq v0, v1, :cond_3

    const/16 v1, 0xcc

    if-eq v0, v1, :cond_2

    const/16 v1, 0xd7

    if-eq v0, v1, :cond_2

    goto :goto_1

    :cond_2
    new-instance v0, Lcom/android/camera/animation/type/AlphaInOnSubscribe;

    iget-object v1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mRecordingSnap:Landroid/widget/ImageView;

    invoke-direct {v0, v1}, Lcom/android/camera/animation/type/AlphaInOnSubscribe;-><init>(Landroid/view/View;)V

    invoke-static {v0}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    new-instance v0, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;

    iget-object v1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mPickers:Lcom/android/camera/fragment/bottom/action/Pickers;

    invoke-virtual {v1}, Lcom/android/camera/fragment/bottom/action/Pickers;->getCurrentView()Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;-><init>(Landroid/view/View;)V

    goto :goto_0

    :cond_3
    new-instance v0, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;

    iget-object v1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mRecordingReverse:Landroid/widget/ImageView;

    invoke-direct {v0, v1}, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;-><init>(Landroid/view/View;)V

    invoke-static {v0}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    invoke-static {}, LOooO0O0/OooO0o0/OooO00o/OooO0O0;->o0O00O()LOooO0O0/OooO0o0/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0o0/OooO00o/OooO0O0;->o00o000O()Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Lcom/android/camera/animation/type/AlphaInOnSubscribe;

    iget-object v1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mRecordingSnap:Landroid/widget/ImageView;

    invoke-direct {v0, v1}, Lcom/android/camera/animation/type/AlphaInOnSubscribe;-><init>(Landroid/view/View;)V

    goto :goto_0

    :cond_4
    new-instance v0, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;

    iget-object v1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mRecordingReverse:Landroid/widget/ImageView;

    invoke-direct {v0, v1}, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;-><init>(Landroid/view/View;)V

    invoke-static {v0}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    new-instance v0, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;

    iget-object v1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mBottomRecordingCameraPicker:Landroid/widget/ImageView;

    invoke-direct {v0, v1}, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;-><init>(Landroid/view/View;)V

    :goto_0
    invoke-static {v0}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    :cond_5
    :goto_1
    return-void
.end method

.method public processingSpeechShutter(Z)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {p1}, Lcom/android/camera/ui/CameraSnapView;->startSpeech()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {p1}, Lcom/android/camera/ui/CameraSnapView;->stopSpeech()V

    :goto_0
    return-void
.end method

.method public processingStart()V
    .locals 5

    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mEdgeHorizonScrollView:Lcom/android/camera/ui/EdgeHorizonScrollView;

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-virtual {p0, v2, v1, v0}, Lcom/android/camera/fragment/BaseFragment;->animateViews(IZLandroid/view/View;)V

    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mModeSelectView:Lcom/android/camera/ui/ModeSelectView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mModeSelectView:Lcom/android/camera/ui/ModeSelectView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->stopScroll()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mVideoRecordingStarted:Z

    iget v2, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-static {v2}, Lcom/android/camera/CameraSettings;->isAlgoFPS(I)Z

    move-result v3

    invoke-static {}, Lcom/android/camera/CameraSettings;->isVideoBokehOn()Z

    move-result v4

    invoke-static {v1, v2, v0, v3, v4}, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->generate(ZIZZZ)Lcom/android/camera/fragment/bottom/BottomAnimationConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->configVariables()Lcom/android/camera/fragment/bottom/BottomAnimationConfig;

    move-result-object v0

    iget-boolean v2, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mIsVideoCast:Z

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mPickers:Lcom/android/camera/fragment/bottom/action/Pickers;

    invoke-virtual {v1}, Lcom/android/camera/fragment/bottom/action/Pickers;->hide()V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    iget-boolean v3, v0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mStopButtonEnabled:Z

    invoke-virtual {v2, v3, v1}, Lcom/android/camera/ui/CameraSnapView;->setStopButtonEnable(ZZ)V

    iget-object v1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {v1, v0}, Lcom/android/camera/ui/CameraSnapView;->triggerAnimation(Lcom/android/camera/fragment/bottom/BottomAnimationConfig;)V

    :goto_0
    invoke-static {}, Lcom/android/camera/Util;->isAccessible()Z

    move-result v1

    if-eqz v1, :cond_4

    iget v1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/16 v2, 0xad

    const v3, 0x7f1000af

    if-eq v1, v2, :cond_3

    const/16 v2, 0xbb

    const v4, 0x7f1000ac

    if-eq v1, v2, :cond_1

    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {p0, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_1
    iget-object v1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    iget-boolean v0, v0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mIsRecordingCircle:Z

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    move v3, v4

    :goto_1
    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_3
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_4
    :goto_3
    return-void
.end method

.method public processingWorkspace(Z)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x8

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {p0, v2, v1, p1}, Lcom/android/camera/fragment/BaseFragment;->animateViews(ILjava/util/List;Landroid/view/View;)V

    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mBottomRecordingTime:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mRecordingPause:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getVisibility()I

    move-result p1

    if-ne p1, v3, :cond_0

    invoke-direct {p0, v2}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->setPausePlaySwitchTarget(Z)V

    new-instance p1, Lcom/android/camera/animation/type/AlphaInOnSubscribe;

    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mRecordingPause:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-direct {p1, v0}, Lcom/android/camera/animation/type/AlphaInOnSubscribe;-><init>(Landroid/view/View;)V

    invoke-virtual {p1}, Lcom/android/camera/animation/type/BaseOnSubScribe;->targetGone()Lcom/android/camera/animation/type/BaseOnSubScribe;

    move-result-object p1

    invoke-static {p1}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object p1

    invoke-virtual {p1}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    :cond_0
    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mRecordingReverse:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getVisibility()I

    move-result p1

    if-ne p1, v3, :cond_1

    new-instance p1, Lcom/android/camera/animation/type/AlphaInOnSubscribe;

    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mRecordingReverse:Landroid/widget/ImageView;

    invoke-direct {p1, v0}, Lcom/android/camera/animation/type/AlphaInOnSubscribe;-><init>(Landroid/view/View;)V

    invoke-virtual {p1}, Lcom/android/camera/animation/type/BaseOnSubScribe;->targetGone()Lcom/android/camera/animation/type/BaseOnSubScribe;

    move-result-object p1

    invoke-static {p1}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object p1

    invoke-virtual {p1}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    :cond_1
    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mBottomRecordingCameraPicker:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getVisibility()I

    move-result p1

    if-ne p1, v3, :cond_7

    new-instance p1, Lcom/android/camera/animation/type/AlphaInOnSubscribe;

    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mBottomRecordingCameraPicker:Landroid/widget/ImageView;

    invoke-direct {p1, v0}, Lcom/android/camera/animation/type/AlphaInOnSubscribe;-><init>(Landroid/view/View;)V

    invoke-virtual {p1}, Lcom/android/camera/animation/type/BaseOnSubScribe;->targetGone()Lcom/android/camera/animation/type/BaseOnSubScribe;

    move-result-object p1

    invoke-static {p1}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object p1

    invoke-virtual {p1}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    goto :goto_1

    :cond_2
    iget p1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/16 v4, 0xb8

    if-ne p1, v4, :cond_3

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/extra/DataItemLive;->getMimojiStatusManager()Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;->getMimojiRecordState()I

    move-result p1

    if-ne p1, v2, :cond_3

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {p1}, Lcom/android/camera/ui/CameraSnapView;->pauseRecording()V

    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {p1}, Lcom/android/camera/ui/CameraSnapView;->addSegmentNow()V

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->setZoomViewVisible(Z)V

    const/4 p1, -0x1

    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {p0, p1, v1, v0}, Lcom/android/camera/fragment/BaseFragment;->animateViews(ILjava/util/List;Landroid/view/View;)V

    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mBottomRecordingTime:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mRecordingPause:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mRecordingPause:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-static {p1}, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;->directSetResult(Landroid/view/View;)V

    :cond_4
    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mRecordingReverse:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mRecordingReverse:Landroid/widget/ImageView;

    invoke-static {p1}, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;->directSetResult(Landroid/view/View;)V

    :cond_5
    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mBottomRecordingCameraPicker:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_6

    iget p1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/16 v0, 0xb7

    if-eq p1, v0, :cond_6

    const/16 v0, 0xd7

    if-eq p1, v0, :cond_6

    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mBottomRecordingCameraPicker:Landroid/widget/ImageView;

    invoke-static {p1}, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;->directSetResult(Landroid/view/View;)V

    :cond_6
    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mRecordingSnap:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_7

    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mRecordingSnap:Landroid/widget/ImageView;

    invoke-static {p1}, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;->directSetResult(Landroid/view/View;)V

    :cond_7
    :goto_1
    return-void
.end method

.method public provideAnimateElement(ILjava/util/List;I)V
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lio/reactivex/Completable;",
            ">;I)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    iget v4, v0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x3

    if-ne v3, v7, :cond_0

    move v7, v6

    goto :goto_0

    :cond_0
    move v7, v5

    :goto_0
    const/4 v8, 0x0

    const/16 v9, 0x8

    if-nez v7, :cond_1

    if-eq v4, v1, :cond_4

    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v10

    if-eqz v10, :cond_2

    invoke-static {v10}, Landroidx/core/view/ViewCompat;->getTranslationY(Landroid/view/View;)F

    move-result v11

    const/4 v12, 0x0

    cmpl-float v11, v11, v12

    if-eqz v11, :cond_2

    invoke-static {v10, v12}, Landroidx/core/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    :cond_2
    iget-object v10, v0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mReverseDialog:Landroid/app/AlertDialog;

    if-eqz v10, :cond_3

    invoke-virtual {v10}, Landroid/app/AlertDialog;->dismiss()V

    iput-object v8, v0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mReverseDialog:Landroid/app/AlertDialog;

    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->hideExtra()V

    iget-object v10, v0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {v10}, Lcom/android/camera/ui/CameraSnapView;->onTimeOut()V

    iget-boolean v10, v0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mVideoRecordingStarted:Z

    if-eqz v10, :cond_4

    iput-boolean v5, v0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mVideoRecordingStarted:Z

    iget-object v10, v0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mPostProcess:Landroid/widget/ProgressBar;

    invoke-virtual {v10, v9}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v10, v0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mRecordingReverse:Landroid/widget/ImageView;

    invoke-virtual {v10, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v10, v0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mRecordingPause:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v10, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v10, v0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mRecordingSnap:Landroid/widget/ImageView;

    invoke-virtual {v10, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v10, v0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mBottomRecordingCameraPicker:Landroid/widget/ImageView;

    invoke-virtual {v10, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_4
    const/4 v10, 0x2

    if-eq v3, v10, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->isShowLightingView()Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->showOrHideLightingView()Z

    :cond_5
    invoke-static/range {p1 .. p1}, Lcom/android/camera/CameraSettings;->isSupportRecordingZoom(I)Z

    move-result v11

    const/16 v12, 0xae

    if-eq v4, v12, :cond_6

    const/16 v12, 0xb7

    if-eq v4, v12, :cond_6

    const/16 v12, 0xd7

    if-ne v4, v12, :cond_7

    :cond_6
    iget-boolean v4, v0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mVideoRecordingStarted:Z

    if-eqz v4, :cond_7

    if-nez v7, :cond_7

    invoke-virtual {v0, v11}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->setZoomViewVisible(Z)V

    return-void

    :cond_7
    invoke-direct/range {p0 .. p1}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->switchModeSelectViewAndZoomViewStyle(I)V

    invoke-super/range {p0 .. p3}, Lcom/android/camera/fragment/BaseFragment;->provideAnimateElement(ILjava/util/List;I)V

    invoke-virtual {v0, v5}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->processingSpeechShutter(Z)V

    iget-object v4, v0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mRecordSaveButton:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getVisibility()I

    move-result v4

    if-nez v4, :cond_8

    iget-object v4, v0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mRecordSaveButton:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->clearAnimation()V

    iget-object v4, v0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mRecordSaveButton:Landroid/widget/ImageView;

    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v4, v0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_8
    if-eqz v11, :cond_9

    invoke-static/range {p1 .. p1}, Lcom/android/camera/CameraSettings;->supportVideoSATForVideoQuality(I)Z

    move-result v4

    iget-object v9, v0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mZoomViewHorizontal:Lcom/android/camera/ui/ZoomView;

    invoke-virtual {v9}, Lcom/android/camera/ui/ZoomView;->init()V

    iget-object v9, v0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mZoomViewHorizontal:Lcom/android/camera/ui/ZoomView;

    invoke-virtual {v9, v4}, Lcom/android/camera/ui/ZoomView;->setSupportVideoSat(Z)V

    :cond_9
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/data/data/runing/DataItemRunning;->getPaintCondition()Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;

    move-result-object v4

    iget v9, v0, Lcom/android/camera/fragment/BaseFragment;->mScreenOrientation:I

    invoke-virtual {v4, v9}, Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;->setScreenOrientation(I)Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;

    move-result-object v9

    iget v11, v0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-static {v11}, Lcom/android/camera/CameraSettings;->isAlgoFPS(I)Z

    move-result v11

    invoke-virtual {v9, v11}, Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;->setIsFPS960(Z)Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;

    move-result-object v9

    if-eqz v2, :cond_a

    move v11, v6

    goto :goto_1

    :cond_a
    move v11, v5

    :goto_1
    invoke-virtual {v9, v11}, Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;->setNeedSnapButtonAnimation(Z)Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;

    const/16 v9, 0xfe

    if-eq v1, v9, :cond_b

    goto :goto_2

    :cond_b
    invoke-virtual {v4, v5}, Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;->setNeedSnapButtonAnimation(Z)Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;

    :goto_2
    iget-object v11, v0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {v11, v4}, Lcom/android/camera/ui/CameraSnapView;->setParameters(Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;)V

    invoke-virtual {v4}, Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;->getBottomMaskTargetHeight()I

    invoke-virtual {v4}, Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;->snapSolidPattern()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-direct {v0, v6}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->reInitViewBackground(Z)V

    :cond_c
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "provideAnimateElement: newMode = "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ", mCurrentMode = "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ", animateInElements = "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v11, "FragmentBottomAction"

    invoke-static {v11, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v4, 0xa3

    const/16 v12, 0xb4

    const/16 v13, 0xa9

    if-eq v1, v4, :cond_20

    if-eq v1, v13, :cond_1f

    const/16 v4, 0xb6

    if-eq v1, v4, :cond_1e

    if-eq v1, v9, :cond_1d

    const/16 v4, 0xaf

    if-eq v1, v4, :cond_1c

    const/16 v4, 0xb0

    if-eq v1, v4, :cond_1b

    const/16 v4, 0xb3

    if-eq v1, v4, :cond_1a

    if-eq v1, v12, :cond_17

    const/16 v4, 0xcc

    if-eq v1, v4, :cond_14

    const/16 v4, 0xcd

    if-eq v1, v4, :cond_20

    packed-switch v1, :pswitch_data_0

    packed-switch v1, :pswitch_data_1

    packed-switch v1, :pswitch_data_2

    packed-switch v1, :pswitch_data_3

    iget-boolean v4, v0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mIsVideoCast:Z

    if-eqz v4, :cond_20

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v4

    const/16 v9, 0x3b6

    invoke-virtual {v4, v9}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v4

    check-cast v4, Lcom/android/camera/protocol/ModeProtocol$VideoCastProtocol;

    if-eqz v4, :cond_e

    invoke-interface {v4}, Lcom/android/camera/protocol/ModeProtocol$VideoCastProtocol;->getVideoCastPausedState()Z

    move-result v4

    if-eqz v4, :cond_d

    const-string/jumbo v4, "provideAnimateElement\u5728\u521d\u59cb\u5316\u4e2d->STATE_HIDE"

    invoke-static {v11, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_d
    const-string/jumbo v4, "provideAnimateElement\u5728\u521d\u59cb\u5316\u4e2d->STATE_SHOW"

    invoke-static {v11, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    move v4, v6

    goto :goto_5

    :cond_e
    :goto_4
    const/4 v4, -0x1

    :goto_5
    move/from16 v17, v5

    move v9, v6

    goto/16 :goto_10

    :pswitch_0
    move/from16 v17, v5

    move v10, v6

    move/from16 v16, v10

    move/from16 v18, v16

    move/from16 v19, v18

    const/4 v4, -0x1

    goto :goto_6

    :pswitch_1
    move/from16 v17, v5

    move v4, v6

    move v10, v4

    move/from16 v16, v10

    move/from16 v18, v16

    move/from16 v19, v18

    :goto_6
    const/4 v9, -0x1

    goto/16 :goto_11

    :pswitch_2
    move/from16 v16, v6

    move/from16 v17, v16

    move/from16 v18, v17

    move/from16 v19, v18

    const/4 v4, -0x1

    const/4 v9, -0x1

    goto :goto_7

    :pswitch_3
    move v9, v6

    move/from16 v16, v9

    move/from16 v17, v16

    move/from16 v18, v17

    move/from16 v19, v18

    const/4 v4, -0x1

    :goto_7
    const/4 v10, -0x1

    goto/16 :goto_11

    :pswitch_4
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/data/data/extra/DataItemLive;->getMimojiStatusManager()Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;->isInMimojiCreate()Z

    move-result v9

    if-eqz v9, :cond_f

    move v9, v6

    move v15, v9

    const/4 v11, -0x1

    const/16 v16, -0x1

    const/16 v17, -0x1

    goto :goto_9

    :cond_f
    invoke-static {}, Lcom/android/camera/CameraSettings;->isGifOn()Z

    move-result v9

    if-eqz v9, :cond_10

    move/from16 v16, v6

    move/from16 v17, v16

    const/4 v9, -0x1

    const/4 v11, -0x1

    goto :goto_8

    :cond_10
    move v11, v6

    move/from16 v16, v11

    move/from16 v17, v16

    const/4 v9, -0x1

    :goto_8
    const/4 v15, -0x1

    :goto_9
    if-ne v11, v6, :cond_11

    const/4 v10, 0x5

    if-eq v3, v10, :cond_11

    invoke-virtual {v4}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;->isInMimojiPhoto()Z

    move-result v4

    invoke-direct {v0, v4}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->setRecordingSwitchTarget(Z)V

    :cond_11
    move v10, v6

    move/from16 v18, v10

    move/from16 v19, v18

    move v4, v9

    move/from16 v9, v17

    move/from16 v17, v5

    goto/16 :goto_13

    :pswitch_5
    invoke-static {}, LOooO0O0/OooO0o0/OooO00o/OooO0O0;->o0O00O()LOooO0O0/OooO0o0/OooO00o/OooO0O0;

    move-result-object v4

    invoke-virtual {v4}, LOooO0O0/OooO0o0/OooO00o/OooO0O0;->o00ooooO()Z

    move-result v4

    if-eqz v4, :cond_13

    const/16 v4, 0xad

    if-ne v1, v4, :cond_12

    move v4, v6

    goto :goto_a

    :cond_12
    move v4, v5

    :goto_a
    invoke-direct {v0, v4}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->setRecordingSwitchTarget(Z)V

    move/from16 v17, v5

    move v9, v6

    move v10, v9

    move v11, v10

    move/from16 v16, v11

    goto/16 :goto_d

    :cond_13
    invoke-static {}, LOooO0O0/OooO0o0/OooO00o/OooO0O0;->o0O00O()LOooO0O0/OooO0o0/OooO00o/OooO0O0;

    move-result-object v4

    invoke-virtual {v4}, LOooO0O0/OooO0o0/OooO00o/OooO0O0;->o00oOo()Z

    move-result v4

    if-nez v4, :cond_20

    invoke-static {}, LOooO0O0/OooO0o0/OooO00o/OooO0O0;->o0O00O()LOooO0O0/OooO0o0/OooO00o/OooO0O0;

    move-result-object v4

    invoke-virtual {v4}, LOooO0O0/OooO0o0/OooO00o/OooO0O0;->o00oO0()Z

    move-result v4

    if-eqz v4, :cond_1a

    goto/16 :goto_f

    :pswitch_6
    invoke-static {}, LOooO0O0/OooO0o0/OooO00o/OooO0O0;->o0O00O()LOooO0O0/OooO0o0/OooO00o/OooO0O0;

    move-result-object v4

    invoke-virtual {v4}, LOooO0O0/OooO0o0/OooO00o/OooO0O0;->Oooo0()S

    move-result v4

    if-eqz v4, :cond_1a

    goto/16 :goto_f

    :pswitch_7
    invoke-static {}, LOooO0O0/OooO0o0/OooO00o/OooO0O0;->o0O00O()LOooO0O0/OooO0o0/OooO00o/OooO0O0;

    move-result-object v4

    invoke-virtual {v4}, LOooO0O0/OooO0o0/OooO00o/OooO0O0;->o00OoOO()Z

    move-result v4

    if-eqz v4, :cond_1a

    goto/16 :goto_f

    :pswitch_8
    invoke-static {}, LOooO0O0/OooO0o0/OooO00o/OooO0O0;->o0O00O()LOooO0O0/OooO0o0/OooO00o/OooO0O0;

    move-result-object v4

    invoke-virtual {v4}, LOooO0O0/OooO0o0/OooO00o/OooO0O0;->o00OoO0()Z

    move-result v4

    if-eqz v4, :cond_1a

    goto/16 :goto_f

    :cond_14
    invoke-static {}, LOooO0O0/OooO0o0/OooO00o/OooO0O0;->o0O00O()LOooO0O0/OooO0o0/OooO00o/OooO0O0;

    move-result-object v4

    invoke-virtual {v4}, LOooO0O0/OooO0o0/OooO00o/OooO0O0;->o00O000()Z

    move-result v4

    if-nez v4, :cond_15

    goto/16 :goto_f

    :cond_15
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningDualVideo()Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;->ismDrawGridWindow()Z

    move-result v4

    if-eqz v4, :cond_16

    goto :goto_e

    :cond_16
    move/from16 v17, v5

    move v4, v6

    move v9, v4

    move v10, v9

    move/from16 v18, v10

    move/from16 v19, v18

    const/4 v11, -0x1

    const/4 v15, -0x1

    const/16 v16, -0x1

    goto/16 :goto_13

    :cond_17
    :pswitch_9
    invoke-static {}, LOooO0O0/OooO0o0/OooO00o/OooO0O0;->o0O00O()LOooO0O0/OooO0o0/OooO00o/OooO0O0;

    move-result-object v4

    invoke-virtual {v4}, LOooO0O0/OooO0o0/OooO00o/OooO0O0;->o00ooOO0()Z

    move-result v4

    if-eqz v4, :cond_18

    move v11, v6

    goto :goto_b

    :cond_18
    const/4 v11, -0x1

    :goto_b
    const/16 v4, 0xa7

    if-ne v1, v4, :cond_19

    move v4, v6

    goto :goto_c

    :cond_19
    move v4, v5

    :goto_c
    invoke-direct {v0, v4}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->setRecordingSwitchTarget(Z)V

    move/from16 v17, v5

    move v9, v6

    move v10, v9

    move/from16 v16, v10

    :goto_d
    move/from16 v18, v16

    move/from16 v19, v18

    const/4 v4, -0x1

    goto/16 :goto_12

    :cond_1a
    :goto_e
    :pswitch_a
    move/from16 v17, v5

    move v9, v6

    move v10, v9

    move/from16 v16, v10

    move/from16 v18, v16

    move/from16 v19, v18

    const/4 v4, -0x1

    goto :goto_11

    :cond_1b
    invoke-static {}, LOooO0O0/OooO0o0/OooO00o/OooO0O0;->o0O00O()LOooO0O0/OooO0o0/OooO00o/OooO0O0;

    move-result-object v4

    invoke-virtual {v4}, LOooO0O0/OooO0o0/OooO00o/OooO0O0;->o00OoOOO()Z

    move-result v4

    if-eqz v4, :cond_1a

    goto :goto_f

    :cond_1c
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v4

    const/16 v9, 0x3b2

    invoke-virtual {v4, v9}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v4

    check-cast v4, Lcom/android/camera/module/impl/component/DisplayGuideImp;

    if-eqz v4, :cond_1a

    invoke-virtual {v4, v1}, Lcom/android/camera/module/impl/component/DisplayGuideImp;->isSupportUltraPixelSelf(I)Z

    move-result v4

    if-eqz v4, :cond_1a

    goto :goto_f

    :cond_1d
    move/from16 v17, v5

    move v9, v6

    move v10, v9

    move/from16 v16, v10

    move/from16 v19, v16

    const/4 v4, -0x1

    const/4 v11, -0x1

    const/4 v15, -0x1

    const/16 v18, -0x1

    goto :goto_13

    :cond_1e
    move/from16 v17, v5

    move v10, v6

    move/from16 v16, v10

    move/from16 v18, v16

    const/4 v4, -0x1

    const/4 v9, -0x1

    const/4 v11, -0x1

    const/4 v15, -0x1

    const/16 v19, -0x1

    goto :goto_13

    :cond_1f
    invoke-static {}, LOooO0O0/OooO0o0/OooO00o/OooO0O0;->o0O00O()LOooO0O0/OooO0o0/OooO00o/OooO0O0;

    move-result-object v4

    invoke-virtual {v4}, LOooO0O0/OooO0o0/OooO00o/OooO0O0;->o00O0O0O()Z

    move-result v4

    if-eqz v4, :cond_e

    goto/16 :goto_3

    :cond_20
    :goto_f
    :pswitch_b
    move/from16 v17, v5

    move v4, v6

    move v9, v4

    :goto_10
    move v10, v9

    move/from16 v16, v10

    move/from16 v18, v16

    move/from16 v19, v18

    :goto_11
    const/4 v11, -0x1

    :goto_12
    const/4 v15, -0x1

    :goto_13
    invoke-static {}, Lcom/android/camera/Display;->getDisplayRatio()Ljava/lang/String;

    move-result-object v8

    const-string v14, "MW"

    invoke-virtual {v14, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_21

    invoke-static {}, LOooO0O0/OooO0o0/OooO00o/OooO0O0;->o0O00O()LOooO0O0/OooO0o0/OooO00o/OooO0O0;

    move-result-object v8

    invoke-virtual {v8}, LOooO0O0/OooO0o0/OooO00o/OooO0O0;->o0000OO()Z

    move-result v8

    if-eqz v8, :cond_21

    const/4 v4, -0x1

    :cond_21
    if-ne v4, v6, :cond_22

    move v8, v6

    goto :goto_14

    :cond_22
    move v8, v5

    :goto_14
    iput-boolean v8, v0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mCameraPickEnable:Z

    if-ne v15, v6, :cond_23

    move v8, v6

    goto :goto_15

    :cond_23
    move v8, v5

    :goto_15
    iput-boolean v8, v0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mBackEnable:Z

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v8

    const/16 v14, 0x3a6

    invoke-virtual {v8, v14}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v8

    check-cast v8, Lcom/android/camera/protocol/ModeProtocol$MasterFilterProtocol;

    const/4 v14, 0x7

    if-eqz v8, :cond_24

    invoke-interface {v8}, Lcom/android/camera/protocol/ModeProtocol$MasterFilterProtocol;->isShowing()Z

    move-result v8

    if-eqz v8, :cond_24

    if-ne v3, v14, :cond_24

    const/16 v16, -0x1

    :cond_24
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v8

    const/16 v5, 0xc2

    invoke-virtual {v8, v5}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v5

    check-cast v5, Lcom/android/camera/protocol/ModeProtocol$MiBeautyProtocol;

    if-eqz v5, :cond_26

    invoke-interface {v5}, Lcom/android/camera/protocol/ModeProtocol$MiBeautyProtocol;->isBeautyPanelShow()Z

    move-result v5

    if-eqz v5, :cond_26

    iget v5, v0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    if-eq v5, v13, :cond_25

    if-ne v5, v12, :cond_26

    :cond_25
    if-ne v3, v14, :cond_26

    const/4 v3, -0x1

    goto :goto_16

    :cond_26
    move/from16 v3, v16

    :goto_16
    if-ne v3, v6, :cond_2e

    iget-object v3, v0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mModeSelectLayout:Lcom/android/camera/fragment/bottom/BottomActionMenu;

    invoke-virtual {v3}, Lcom/android/camera/fragment/bottom/BottomActionMenu;->clearBottomMenu()V

    iget-object v3, v0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mEdgeHorizonScrollView:Lcom/android/camera/ui/EdgeHorizonScrollView;

    const/4 v5, 0x0

    invoke-virtual {v0, v6, v5, v3}, Lcom/android/camera/fragment/BaseFragment;->animateViews(IZLandroid/view/View;)V

    iget-object v3, v0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mComponentModuleList:Lcom/android/camera/data/data/global/ComponentModuleList;

    invoke-virtual {v3, v1}, Lcom/android/camera/data/data/global/ComponentModuleList;->isCommonMode(I)Z

    move-result v3

    if-nez v3, :cond_29

    iget-object v3, v0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mDragUpLayout:Lcom/android/camera/ui/DragLayout;

    invoke-virtual {v3, v5}, Lcom/android/camera/ui/DragLayout;->setDragEnable(Z)V

    iget-object v3, v0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mModeSelectView:Lcom/android/camera/ui/ModeSelectView;

    invoke-static {v3}, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;->directSetResult(Landroid/view/View;)V

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/data/data/global/DataItemGlobal;->getComponentModuleList()Lcom/android/camera/data/data/global/ComponentModuleList;

    move-result-object v3

    invoke-virtual {v3, v1, v6}, Lcom/android/camera/data/data/global/ComponentModuleList;->geItemStringName(IZ)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_28

    iget-object v5, v0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mExternalModeTipLayout:Lcom/android/camera/ui/CapsuleLayout;

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    iget-object v5, v0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mExternalModeTipText:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v2, :cond_27

    iget-object v3, v0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mExternalModeTipLayout:Lcom/android/camera/ui/CapsuleLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eq v3, v6, :cond_27

    new-instance v3, Lcom/android/camera/animation/type/RotateOnSubscribe;

    iget-object v5, v0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mExternalModeTipIcon:Landroid/widget/ImageView;

    invoke-direct {v3, v5}, Lcom/android/camera/animation/type/RotateOnSubscribe;-><init>(Landroid/view/View;)V

    const/16 v5, -0x5a

    const/4 v8, 0x0

    invoke-virtual {v3, v5, v8}, Lcom/android/camera/animation/type/RotateOnSubscribe;->setRotateDegree(II)Lcom/android/camera/animation/type/RotateOnSubscribe;

    move-result-object v3

    new-instance v5, Lmiuix/view/animation/CubicEaseOutInterpolator;

    invoke-direct {v5}, Lmiuix/view/animation/CubicEaseOutInterpolator;-><init>()V

    invoke-virtual {v3, v5}, Lcom/android/camera/animation/type/BaseOnSubScribe;->setInterpolator(Landroid/view/animation/Interpolator;)Lcom/android/camera/animation/type/BaseOnSubScribe;

    move-result-object v3

    const/16 v5, 0x12c

    invoke-virtual {v3, v5}, Lcom/android/camera/animation/type/BaseOnSubScribe;->setDurationTime(I)Lcom/android/camera/animation/type/BaseOnSubScribe;

    move-result-object v3

    invoke-static {v3}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, v0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mExternalModeTipLayout:Lcom/android/camera/ui/CapsuleLayout;

    invoke-virtual {v3}, Lcom/android/camera/ui/CapsuleLayout;->start()V

    goto :goto_17

    :cond_27
    const/4 v8, 0x0

    iget-object v3, v0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mExternalModeTipLayout:Lcom/android/camera/ui/CapsuleLayout;

    invoke-static {v3}, Lcom/android/camera/animation/folme/FolmeAlphaInOnSubscribe;->directSetResult(Landroid/view/View;)V

    :goto_17
    iget-object v3, v0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mExternalModeTipLayout:Lcom/android/camera/ui/CapsuleLayout;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    goto :goto_18

    :cond_28
    const/4 v8, 0x0

    iget-object v3, v0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mExternalModeTipLayout:Lcom/android/camera/ui/CapsuleLayout;

    const/4 v5, -0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    iget-object v3, v0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mExternalModeTipLayout:Lcom/android/camera/ui/CapsuleLayout;

    invoke-static {v3}, Lcom/android/camera/animation/folme/FolmeAlphaOutOnSubscribe;->directSetResult(Landroid/view/View;)V

    :goto_18
    const/4 v5, 0x0

    goto :goto_1a

    :cond_29
    move v8, v5

    const/4 v5, -0x1

    iget-object v3, v0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mExternalModeTipLayout:Lcom/android/camera/ui/CapsuleLayout;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    iget-object v3, v0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mExternalModeTipLayout:Lcom/android/camera/ui/CapsuleLayout;

    invoke-static {v3}, Lcom/android/camera/animation/folme/FolmeAlphaOutOnSubscribe;->directSetResult(Landroid/view/View;)V

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v3

    const/16 v5, 0x1ad

    invoke-virtual {v3, v5}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v3

    check-cast v3, Lcom/android/camera/protocol/ModeProtocol$StandaloneRecorderProtocol;

    const/4 v5, 0x0

    if-eqz v3, :cond_2a

    invoke-interface {v3, v5}, Lcom/android/camera/protocol/ModeProtocol$StandaloneRecorderProtocol;->getRecorderManager(Lcom/android/camera/storage/ImageSaver;)Lcom/android/camera/dualvideo/recorder/MultiRecorderManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/dualvideo/recorder/MultiRecorderManager;->isRecordingPaused()Z

    move-result v3

    if-eqz v3, :cond_2a

    move v3, v6

    goto :goto_19

    :cond_2a
    move v3, v8

    :goto_19
    iget-boolean v12, v0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mIsShowLighting:Z

    if-eqz v12, :cond_2b

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->isShowMimoji()Z

    move-result v12

    if-nez v12, :cond_2c

    :cond_2b
    if-nez v3, :cond_2c

    iget-object v3, v0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mModeSelectView:Lcom/android/camera/ui/ModeSelectView;

    invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->setEnabled(Z)V

    iget-object v3, v0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mModeSelectView:Lcom/android/camera/ui/ModeSelectView;

    invoke-static {v3}, Lcom/android/camera/animation/type/AlphaInOnSubscribe;->directSetResult(Landroid/view/View;)V

    :cond_2c
    :goto_1a
    if-eqz v7, :cond_2f

    iget-object v3, v0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mModeSelectView:Lcom/android/camera/ui/ModeSelectView;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v3

    if-eqz v3, :cond_2d

    iget-object v3, v0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mModeSelectView:Lcom/android/camera/ui/ModeSelectView;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_2d
    iget-object v3, v0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mModeSelectView:Lcom/android/camera/ui/ModeSelectView;

    invoke-virtual {v3, v1}, Lcom/android/camera/ui/ModeSelectView;->moveToPosition(I)V

    goto :goto_1b

    :cond_2e
    const/4 v5, 0x0

    const/4 v8, 0x0

    :cond_2f
    :goto_1b
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/fragment/BaseFragment;->isLeftLandscapeMode()Z

    move-result v1

    if-eqz v1, :cond_30

    :goto_1c
    iget-object v1, v0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mRotateViews:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v8, v1, :cond_31

    iget-object v1, v0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mRotateViews:Ljava/util/List;

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    const/high16 v3, 0x42b40000    # 90.0f

    invoke-virtual {v1, v3}, Landroid/view/View;->setRotation(F)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_1c

    :cond_30
    :goto_1d
    iget-object v1, v0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mRotateViews:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v8, v1, :cond_31

    iget-object v1, v0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mRotateViews:Ljava/util/List;

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    iget v3, v0, Lcom/android/camera/fragment/BaseFragment;->mDegree:I

    int-to-float v3, v3

    invoke-virtual {v1, v3}, Landroid/view/View;->setRotation(F)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_1d

    :cond_31
    move/from16 v14, v18

    iget-object v1, v0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mCurrentBottomParent:Landroid/view/ViewGroup;

    if-eq v14, v6, :cond_32

    invoke-static {v1}, Lcom/android/camera/animation/folme/FolmeAlphaOutOnSubscribe;->directSetResult(Landroid/view/View;)V

    return-void

    :cond_32
    invoke-static {v1}, Lcom/android/camera/animation/folme/FolmeAlphaInOnSubscribe;->directSetResult(Landroid/view/View;)V

    if-eqz v17, :cond_33

    move-object v8, v5

    goto :goto_1e

    :cond_33
    move-object v8, v2

    :goto_1e
    iget-object v1, v0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {v1}, Landroid/view/View;->getAlpha()F

    move-result v1

    iget-object v3, v0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {v0, v10, v8, v1, v3}, Lcom/android/camera/fragment/BaseFragment;->animateViews(ILjava/util/List;FLandroid/view/View;)V

    iget-object v1, v0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mPickers:Lcom/android/camera/fragment/bottom/action/Pickers;

    if-ne v4, v6, :cond_34

    invoke-virtual {v1}, Lcom/android/camera/fragment/bottom/action/Pickers;->show()V

    goto :goto_1f

    :cond_34
    invoke-virtual {v1}, Lcom/android/camera/fragment/bottom/action/Pickers;->hide()V

    :goto_1f
    iget-object v1, v0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mModeSelectLayout:Lcom/android/camera/fragment/bottom/BottomActionMenu;

    invoke-virtual {v1}, Lcom/android/camera/fragment/bottom/BottomActionMenu;->getView()Landroid/view/View;

    move-result-object v1

    move/from16 v6, v19

    invoke-virtual {v0, v6, v2, v1}, Lcom/android/camera/fragment/BaseFragment;->animateViews(ILjava/util/List;Landroid/view/View;)V

    iget-boolean v1, v0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mIsVideoCast:Z

    if-nez v1, :cond_35

    iget-object v1, v0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mThumbnailImageLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v9, v2, v1}, Lcom/android/camera/fragment/BaseFragment;->animateViews(ILjava/util/List;Landroid/view/View;)V

    :cond_35
    iget-object v1, v0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mRecordingSwitch:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0, v11, v2, v1}, Lcom/android/camera/fragment/BaseFragment;->animateViews(ILjava/util/List;Landroid/view/View;)V

    iget-object v1, v0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mMimojiBack:Landroid/widget/ImageView;

    invoke-virtual {v0, v15, v2, v1}, Lcom/android/camera/fragment/BaseFragment;->animateViews(ILjava/util/List;Landroid/view/View;)V

    iget-object v1, v0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_36

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_36

    iget-object v1, v0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    :cond_36
    return-void

    :pswitch_data_0
    .packed-switch 0xa5
        :pswitch_b
        :pswitch_8
        :pswitch_9
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xab
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0xb8
        :pswitch_4
        :pswitch_3
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0xcf
        :pswitch_1
        :pswitch_0
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_2
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method

.method public provideEnterAnimation(I)Landroid/view/animation/Animation;
    .locals 6

    const/16 v0, 0xf0

    if-eq p1, v0, :cond_1

    const v0, 0xfffa

    const-wide/16 v1, 0x96

    const/16 v3, 0xa1

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq p1, v0, :cond_0

    new-array p1, v5, [I

    aput v3, p1, v4

    invoke-static {p1}, Lcom/android/camera/animation/FragmentAnimationFactory;->wrapperAnimation([I)Landroid/view/animation/Animation;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroidx/core/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    new-array p1, v5, [I

    aput v3, p1, v4

    invoke-static {p1}, Lcom/android/camera/animation/FragmentAnimationFactory;->wrapperAnimation([I)Landroid/view/animation/Animation;

    move-result-object p1

    :goto_0
    invoke-virtual {p1, v1, v2}, Landroid/view/animation/Animation;->setStartOffset(J)V

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return-object p1
.end method

.method public provideExitAnimation(I)Landroid/view/animation/Animation;
    .locals 3

    const v0, 0xfffa

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070667

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-static {}, Lcom/android/camera/Display;->getBottomMargin()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070634

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    sub-int/2addr v0, p1

    int-to-float p1, v0

    invoke-static {v1, p1}, Landroidx/core/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    :cond_0
    const/4 p1, 0x1

    new-array p1, p1, [I

    const/4 v0, 0x0

    const/16 v1, 0xa2

    aput v1, p1, v0

    invoke-static {p1}, Lcom/android/camera/animation/FragmentAnimationFactory;->wrapperAnimation([I)Landroid/view/animation/Animation;

    move-result-object p1

    return-object p1
.end method

.method public provideOrientationChanged(ILjava/util/List;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;I)V"
        }
    .end annotation

    invoke-super {p0, p1, p2, p3}, Lcom/android/camera/fragment/BaseFragment;->provideOrientationChanged(ILjava/util/List;I)V

    invoke-static {}, Lcom/android/camera/ui/DragLayout;->getAnimationConfig()Lcom/android/camera/ui/DragLayout$DragAnimationConfig;

    move-result-object p2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p3

    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mComponentModuleList:Lcom/android/camera/data/data/global/ComponentModuleList;

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/ComponentModuleList;->getMoreItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p2, p3, v0}, Lcom/android/camera/ui/DragLayout$DragAnimationConfig;->calDragLayoutHeight(Landroid/content/Context;I)V

    iget-object p2, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mDragUpLayout:Lcom/android/camera/ui/DragLayout;

    invoke-virtual {p2}, Lcom/android/camera/ui/DragLayout;->getDragChildren()Landroid/widget/FrameLayout;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-static {}, Lcom/android/camera/Display;->getDragLayoutTopMargin()I

    move-result p3

    iput p3, p2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-static {}, Lcom/android/camera/Display;->getBottomHeight()I

    move-result p3

    invoke-static {}, Lcom/android/camera/ui/DragLayout;->getAnimationConfig()Lcom/android/camera/ui/DragLayout$DragAnimationConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/DragLayout$DragAnimationConfig;->getMaxDragDistance()F

    move-result v0

    float-to-int v0, v0

    add-int/2addr p3, v0

    iput p3, p2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iget-object p2, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mDragUpLayout:Lcom/android/camera/ui/DragLayout;

    if-eqz p2, :cond_0

    invoke-virtual {p2, p1}, Lcom/android/camera/ui/DragLayout;->setScreenOrientation(I)V

    :cond_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/camera/data/data/runing/DataItemRunning;->getPaintCondition()Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;->clone()Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;->setNeedSnapButtonAnimation(Z)Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;->setScreenOrientation(I)Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;

    invoke-virtual {p2}, Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;->snapSolidPattern()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->reInitViewBackground(Z)V

    iget-boolean p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mVideoRecordingStarted:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {p1, p2}, Lcom/android/camera/ui/CameraSnapView;->setParameters(Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;)V

    :cond_1
    return-void
.end method

.method public provideRotateItem(Ljava/util/List;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;I)V"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/android/camera/fragment/BaseFragment;->provideRotateItem(Ljava/util/List;I)V

    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mZoomViewHorizontal:Lcom/android/camera/ui/ZoomView;

    invoke-virtual {v0, p2}, Lcom/android/camera/ui/ZoomView;->setOrientation(I)V

    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragment;->isLeftLandscapeMode()Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mRotateViews:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method

.method public register(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->register(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V

    const/16 v0, 0xa01

    invoke-interface {p1, v0, p0}, Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;->attachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    const/16 v0, 0xb3

    invoke-interface {p1, v0, p0}, Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;->attachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    const/16 v0, 0xa2

    invoke-interface {p1, v0, p0}, Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;->attachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    const/16 v0, 0xb7

    invoke-interface {p1, v0, p0}, Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;->attachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    const/16 v0, 0xc5

    invoke-interface {p1, v0, p0}, Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;->attachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    invoke-virtual {p0, p1, p0}, Lcom/android/camera/fragment/BaseFragment;->registerBackStack(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;)V

    return-void
.end method

.method public resetModeSelectView(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mModeSelectView:Lcom/android/camera/ui/ModeSelectView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/ModeSelectView;->moveToPosition(I)V

    return-void
.end method

.method public resetToCommonMode()V
    .locals 5

    const-string v0, "FragmentBottomAction"

    const-string/jumbo v1, "resetToCommonMode"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/camera/CameraSettings;->isPopupMoreStyle()Z

    move-result v0

    const/4 v1, 0x0

    const v2, 0x7f100423

    const/16 v3, 0xa3

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mModeSelectView:Lcom/android/camera/ui/ModeSelectView;

    invoke-virtual {v0}, Lcom/android/camera/ui/ModeSelectView;->getCurSelectMode()I

    move-result v0

    iget-object v4, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mComponentModuleList:Lcom/android/camera/data/data/global/ComponentModuleList;

    invoke-virtual {v4, v0}, Lcom/android/camera/data/data/global/ComponentModuleList;->isCommonMode(I)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    move v3, v0

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/android/camera/CameraSettings;->getMoreModeStyle()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mModeSelectView:Lcom/android/camera/ui/ModeSelectView;

    invoke-virtual {v0, v3}, Lcom/android/camera/ui/ModeSelectView;->moveToPosition(I)V

    :goto_0
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v3, v0, v1}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->changeModeByNewMode(ILjava/lang/String;I)V

    :cond_2
    return-void
.end method

.method public setBackgroundColor(Lcom/android/camera/fragment/bottom/action/FragmentBottomAction$BackgroundType;)V
    .locals 1

    sget-object v0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction$14;->$SwitchMap$com$android$camera$fragment$bottom$action$FragmentBottomAction$BackgroundType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mPickers:Lcom/android/camera/fragment/bottom/action/Pickers;

    const v0, 0x7f0800c5

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mPickers:Lcom/android/camera/fragment/bottom/action/Pickers;

    const v0, 0x7f0800b3

    :goto_0
    invoke-virtual {p1, v0}, Lcom/android/camera/fragment/bottom/action/Pickers;->setBackgroundResource(I)V

    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mThumbnailImage:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mRecordingPause:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setBackgroundResource(I)V

    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mRecordingSnap:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    :goto_1
    return-void
.end method

.method public setClickEnable(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->setClickEnable(Z)V

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->setShutterButtonClickEnable(Z)V

    return-void
.end method

.method public setGestureDetectorEnable(Z)V
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/android/camera/ActivityBase;

    invoke-static {p1}, Lcom/android/camera/ui/V6GestureRecognizer;->getInstance(Lcom/android/camera/ActivityBase;)Lcom/android/camera/ui/V6GestureRecognizer;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/camera/ui/V6GestureRecognizer;->setGestureDetectorEnable(Z)V

    return-void
.end method

.method public setLightingViewStatus(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mIsShowLighting:Z

    return-void
.end method

.method public setModeLayoutVisibility(IZ)V
    .locals 4

    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mExternalModeTipLayout:Lcom/android/camera/ui/CapsuleLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mExternalModeTipLayout:Lcom/android/camera/ui/CapsuleLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mExternalModeTipLayout:Lcom/android/camera/ui/CapsuleLayout;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mModeSelectView:Lcom/android/camera/ui/ModeSelectView;

    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-ne v2, p1, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mModeSelectView:Lcom/android/camera/ui/ModeSelectView;

    if-ne v0, p2, :cond_2

    const v0, 0x3f8ccccd    # 1.1f

    invoke-static {p2, v0}, Landroidx/core/view/ViewCompat;->setScaleX(Landroid/view/View;F)V

    iget-object p2, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mModeSelectView:Lcom/android/camera/ui/ModeSelectView;

    invoke-static {p2}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p2

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p2, v0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->scaleX(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p2

    const-wide/16 v2, 0x190

    invoke-virtual {p2, v2, v3}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p2

    new-instance v0, Lmiui/view/animation/CubicEaseOutInterpolator;

    invoke-direct {v0}, Lmiui/view/animation/CubicEaseOutInterpolator;-><init>()V

    invoke-virtual {p2, v0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/core/view/ViewPropertyAnimatorCompat;->start()V

    :cond_2
    if-nez p1, :cond_3

    invoke-direct {p0, v1}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->switchMoreMode(Z)V

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mDragUpLayout:Lcom/android/camera/ui/DragLayout;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/android/camera/ui/DragLayout;->setDragEnable(Z)V

    :goto_1
    return-void
.end method

.method public setZoomViewVisible(Z)V
    .locals 1

    if-eqz p1, :cond_1

    iget p1, p0, Lcom/android/camera/fragment/BaseFragment;->mScreenOrientation:I

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mZoomViewHorizontal:Lcom/android/camera/ui/ZoomView;

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mZoomViewHorizontal:Lcom/android/camera/ui/ZoomView;

    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mDegree:I

    :goto_0
    invoke-virtual {p1, v0}, Lcom/android/camera/ui/ZoomView;->show(I)V

    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mZoomViewHorizontal:Lcom/android/camera/ui/ZoomView;

    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->getRetainZoom(I)F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/camera/ui/ZoomView;->setCurrentZoomRatio(F)V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mZoomViewHorizontal:Lcom/android/camera/ui/ZoomView;

    invoke-virtual {p1}, Lcom/android/camera/ui/ZoomView;->hide()V

    :goto_1
    return-void
.end method

.method public showCameraPicker(Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 1

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mPickers:Lcom/android/camera/fragment/bottom/action/Pickers;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {v0, p2}, Lcom/android/camera/fragment/bottom/action/Pickers;->useDefault(Z)V

    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mPickers:Lcom/android/camera/fragment/bottom/action/Pickers;

    invoke-virtual {p1}, Lcom/android/camera/fragment/bottom/action/Pickers;->show()V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mPickers:Lcom/android/camera/fragment/bottom/action/Pickers;

    invoke-virtual {p1}, Lcom/android/camera/fragment/bottom/action/Pickers;->hide()V

    :cond_2
    :goto_0
    return-void
.end method

.method public showDocumentReviewViews(Landroid/graphics/Bitmap;[FLandroid/util/Size;)V
    .locals 4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_3

    array-length v0, p2

    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object v1

    check-cast v1, Lcom/android/camera/module/BaseModule;

    if-nez v1, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mDocumentContainer:Landroid/view/View;

    if-nez v1, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0c00c4

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mDocumentContainer:Landroid/view/View;

    const v1, 0x7f090093

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mDocumentContainer:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_2
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mDocumentContainer:Landroid/view/View;

    const v1, 0x7f0900eb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/AdjustAnimationView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0, p3}, Lcom/android/camera/ui/AdjustAnimationView;->setPreviewSize(Landroid/util/Size;)V

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/ui/AdjustAnimationView;->setBitmap(Landroid/graphics/Bitmap;[F)V

    invoke-virtual {v0}, Lcom/android/camera/ui/AdjustAnimationView;->getImageRect()Landroid/graphics/Rect;

    move-result-object p2

    iget-object p3, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mDocumentContainer:Landroid/view/View;

    const v1, 0x7f0900e9

    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/android/camera/ui/AnimationView;

    invoke-virtual {p3, p1}, Lcom/android/camera/ui/AnimationView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {p3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    iget v1, p2, Landroid/graphics/Rect;->top:I

    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget v1, p2, Landroid/graphics/Rect;->left:I

    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    invoke-static {}, Lcom/android/camera/Display;->getAppBoundWidth()I

    move-result v1

    iget v2, p2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v1

    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mThumbnailImageLayout:Landroid/view/ViewGroup;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mThumbnailImageLayout:Landroid/view/ViewGroup;

    new-instance p2, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction$4;

    invoke-direct {p2, p0, p3, v0, p1}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction$4;-><init>(Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;Lcom/android/camera/ui/AnimationView;Lcom/android/camera/ui/AdjustAnimationView;Landroid/view/View;)V

    invoke-static {}, Lcom/android/camera/Util;->getEnterDuration()J

    move-result-wide v1

    invoke-virtual {v0, p2, v1, v2}, Lcom/android/camera/ui/AdjustAnimationView;->startAnim(Landroid/animation/Animator$AnimatorListener;J)V

    :cond_3
    :goto_0
    return-void
.end method

.method public showDragAnimation(II)Z
    .locals 2

    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mBottomActionView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    invoke-static {v0, p1, p2}, Lcom/android/camera/Util;->isInViewRegion(Landroid/view/View;II)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mThumbnailImageLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mThumbnailImageLayout:Landroid/view/ViewGroup;

    invoke-static {v0, p1, p2}, Lcom/android/camera/Util;->isInViewRegion(Landroid/view/View;II)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mPickers:Lcom/android/camera/fragment/bottom/action/Pickers;

    invoke-virtual {v0}, Lcom/android/camera/fragment/bottom/action/Pickers;->getCurrentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mPickers:Lcom/android/camera/fragment/bottom/action/Pickers;

    invoke-virtual {v0}, Lcom/android/camera/fragment/bottom/action/Pickers;->getCurrentView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/android/camera/Util;->isInViewRegion(Landroid/view/View;II)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mRecordingSwitch:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mRecordingSwitch:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-static {v0, p1, p2}, Lcom/android/camera/Util;->isInViewRegion(Landroid/view/View;II)Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    :cond_3
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mModeSelectView:Lcom/android/camera/ui/ModeSelectView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mModeSelectView:Lcom/android/camera/ui/ModeSelectView;

    invoke-static {v0, p1, p2}, Lcom/android/camera/Util;->isInViewRegion(Landroid/view/View;II)Z

    move-result p1

    if-eqz p1, :cond_4

    return v1

    :cond_4
    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mBottomActionView:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p1

    if-nez p1, :cond_5

    const/4 v1, 0x1

    :cond_5
    return v1
.end method

.method public showOrHideBottom(Z)V
    .locals 1

    if-eqz p1, :cond_0

    new-instance p1, Lcom/android/camera/animation/type/AlphaInOnSubscribe;

    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mCurrentBottomParent:Landroid/view/ViewGroup;

    invoke-direct {p1, v0}, Lcom/android/camera/animation/type/AlphaInOnSubscribe;-><init>(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;

    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mCurrentBottomParent:Landroid/view/ViewGroup;

    invoke-direct {p1, v0}, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;-><init>(Landroid/view/View;)V

    :goto_0
    invoke-static {p1}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object p1

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Completable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object p1

    invoke-virtual {p1}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public showOrHideBottomViewWithAnim(Z)V
    .locals 0

    return-void
.end method

.method public showOrHideFilterView()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public showOrHideLightingView()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mIsShowLighting:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mIsShowLighting:Z

    return v0
.end method

.method public showOrHideLoadingProgress(ZZ)V
    .locals 0

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Lcom/android/camera/ui/CameraSnapView;->hideRoundPaintItem()V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/android/camera/ui/CameraSnapView;->showRoundPaintItem()V

    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    const/16 p1, 0x8

    :goto_1
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->setProgressBarVisible(I)V

    return-void
.end method

.method public showOrHideMimojiProgress(Z)V
    .locals 5

    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isAlgoFPS(I)Z

    move-result v1

    invoke-static {}, Lcom/android/camera/CameraSettings;->isVideoBokehOn()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v4, v0, v3, v1, v2}, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->generate(ZIZZZ)Lcom/android/camera/fragment/bottom/BottomAnimationConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->configVariables()Lcom/android/camera/fragment/bottom/BottomAnimationConfig;

    move-result-object v0

    iput-boolean v4, v0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mIsInMimojiCreate:Z

    iget-object v1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {v1, v0}, Lcom/android/camera/ui/CameraSnapView;->triggerAnimation(Lcom/android/camera/fragment/bottom/BottomAnimationConfig;)V

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v3, 0x8

    :goto_0
    invoke-direct {p0, v3}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->setProgressBarVisible(I)V

    return-void
.end method

.method public shrink()Z
    .locals 1

    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mDragUpLayout:Lcom/android/camera/ui/DragLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/camera/ui/DragLayout;->shrink()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public switchModeOrExternalTipLayout(Z)V
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "switchModeOrExternalTipLayout: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentBottomAction"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->showModeOrExternalTipLayout(Z)V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->hideModeOrExternalTipLayout()V

    :goto_0
    return-void
.end method

.method public switchThumbnailFunction(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->initThumbnailAsThumbnail(Z)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->initThumbnailAsExit()V

    :goto_0
    return-void
.end method

.method public unRegister(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->unRegister(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V

    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    const/16 v0, 0xa01

    invoke-interface {p1, v0, p0}, Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;->detachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    const/16 v0, 0xb3

    invoke-interface {p1, v0, p0}, Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;->detachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    const/16 v0, 0xa2

    invoke-interface {p1, v0, p0}, Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;->detachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    const/16 v0, 0xb7

    invoke-interface {p1, v0, p0}, Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;->detachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    const/16 v0, 0xc5

    invoke-interface {p1, v0, p0}, Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;->detachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    invoke-virtual {p0, p1, p0}, Lcom/android/camera/fragment/BaseFragment;->unRegisterBackStack(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;)V

    return-void
.end method

.method public updateCurrentZoomRatio(F)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mZoomViewHorizontal:Lcom/android/camera/ui/ZoomView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/ZoomView;->setCurrentZoomRatio(F)V

    :cond_0
    return-void
.end method

.method public updateInstallState(I)V
    .locals 0

    return-void
.end method

.method public updateLoading(Z)V
    .locals 3

    if-nez p1, :cond_5

    iget p1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-static {p1}, Lcom/android/camera/Util;->isSaveToHidenFolder(I)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/config/DataItemConfig;->getmComponentManuallyET()Lcom/android/camera/data/data/config/ComponentManuallyET;

    move-result-object p1

    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-virtual {p1, v0}, Lcom/android/camera/data/data/config/ComponentManuallyET;->isLongExpose(I)Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/extra/DataItemLive;->getTimerBurstController()Lcom/android/camera/timerburst/TimerBurstController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/timerburst/TimerBurstController;->isInTimerBurstShotting()Z

    move-result p1

    if-eqz p1, :cond_2

    return-void

    :cond_2
    iget-boolean p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mIsIntentAction:Z

    if-eqz p1, :cond_3

    return-void

    :cond_3
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mInLoading:Z

    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/16 v1, 0xa1

    if-eq v0, v1, :cond_4

    const/16 v1, 0xa2

    if-eq v0, v1, :cond_4

    const/16 v1, 0xa6

    if-eq v0, v1, :cond_4

    const/16 v1, 0xac

    if-eq v0, v1, :cond_4

    const/16 v1, 0xae

    if-eq v0, v1, :cond_4

    const/16 v1, 0xb0

    if-eq v0, v1, :cond_4

    const/16 v1, 0xb7

    if-eq v0, v1, :cond_4

    const/16 v1, 0xd7

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mHandler:Landroid/os/Handler;

    iget v1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mCaptureProgressDelay:I

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mHandler:Landroid/os/Handler;

    iget v1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mRecordProgressDelay:I

    :goto_0
    int-to-long v1, v1

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    :cond_5
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mInLoading:Z

    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mThumbnailProgress:Landroid/widget/ProgressBar;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method public updatePauseAndCaptureView(Z)V
    .locals 1

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mVideoPauseSupported:Z

    if-eqz p1, :cond_0

    new-instance p1, Lcom/android/camera/animation/type/AlphaInOnSubscribe;

    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mRecordingPause:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-direct {p1, v0}, Lcom/android/camera/animation/type/AlphaInOnSubscribe;-><init>(Landroid/view/View;)V

    invoke-static {p1}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object p1

    invoke-virtual {p1}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    :cond_0
    iget-boolean p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mVideoCaptureEnable:Z

    if-eqz p1, :cond_3

    new-instance p1, Lcom/android/camera/animation/type/AlphaInOnSubscribe;

    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mRecordingSnap:Landroid/widget/ImageView;

    invoke-direct {p1, v0}, Lcom/android/camera/animation/type/AlphaInOnSubscribe;-><init>(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    iget-boolean p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mVideoPauseSupported:Z

    if-eqz p1, :cond_2

    new-instance p1, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;

    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mRecordingPause:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-direct {p1, v0}, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;-><init>(Landroid/view/View;)V

    invoke-virtual {p1}, Lcom/android/camera/animation/type/BaseOnSubScribe;->targetGone()Lcom/android/camera/animation/type/BaseOnSubScribe;

    move-result-object p1

    invoke-static {p1}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object p1

    invoke-virtual {p1}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    :cond_2
    iget-boolean p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mVideoCaptureEnable:Z

    if-eqz p1, :cond_3

    new-instance p1, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;

    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mRecordingSnap:Landroid/widget/ImageView;

    invoke-direct {p1, v0}, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;-><init>(Landroid/view/View;)V

    invoke-virtual {p1}, Lcom/android/camera/animation/type/BaseOnSubScribe;->targetGone()Lcom/android/camera/animation/type/BaseOnSubScribe;

    move-result-object p1

    :goto_0
    invoke-static {p1}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object p1

    invoke-virtual {p1}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    :cond_3
    return-void
.end method

.method public updateRecordingTime(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mBottomRecordingTime:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public updateResourceState(I)V
    .locals 3

    if-eqz p1, :cond_3

    const/4 v0, 0x7

    if-eq p1, v0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->setShutterButtonClickEnable(Z)V

    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, p1, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mRecordingSwitch:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mRecordingSwitch:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mRecordingSwitch:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    :cond_2
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mPickers:Lcom/android/camera/fragment/bottom/action/Pickers;

    invoke-virtual {v0}, Lcom/android/camera/fragment/bottom/action/Pickers;->getCurrentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mPickers:Lcom/android/camera/fragment/bottom/action/Pickers;

    invoke-virtual {v0}, Lcom/android/camera/fragment/bottom/action/Pickers;->getCurrentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mPickers:Lcom/android/camera/fragment/bottom/action/Pickers;

    invoke-virtual {v0}, Lcom/android/camera/fragment/bottom/action/Pickers;->getCurrentView()Landroid/view/View;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->setShutterButtonClickEnable(Z)V

    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_4

    return-void

    :cond_4
    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    const/high16 v0, 0x3f000000    # 0.5f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mRecordingSwitch:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mRecordingSwitch:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mRecordingSwitch:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    :cond_5
    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mPickers:Lcom/android/camera/fragment/bottom/action/Pickers;

    invoke-virtual {p1}, Lcom/android/camera/fragment/bottom/action/Pickers;->getCurrentView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mPickers:Lcom/android/camera/fragment/bottom/action/Pickers;

    invoke-virtual {p1}, Lcom/android/camera/fragment/bottom/action/Pickers;->getCurrentView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mPickers:Lcom/android/camera/fragment/bottom/action/Pickers;

    invoke-virtual {p1}, Lcom/android/camera/fragment/bottom/action/Pickers;->getCurrentView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_6
    :goto_0
    return-void
.end method

.method public updateThumbnail(Lcom/android/camera/Thumbnail;ZI)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->updateThumbnail(Lcom/android/camera/Thumbnail;ZIZ)V

    return-void
.end method

.method public updateThumbnail(Lcom/android/camera/Thumbnail;ZIZ)V
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ActivityBase;

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/global/DataItemGlobal;->getStartFromKeyguard()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    if-eq p3, v1, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getThumbnailUpdater()Lcom/android/camera/ThumbnailUpdater;

    move-result-object p3

    const/4 v0, 0x0

    if-eqz p3, :cond_2

    invoke-virtual {p3}, Lcom/android/camera/ThumbnailUpdater;->getThumbnail()Lcom/android/camera/Thumbnail;

    move-result-object v1

    if-eq v1, p1, :cond_2

    invoke-virtual {p3, p1, v0, v0}, Lcom/android/camera/ThumbnailUpdater;->setThumbnail(Lcom/android/camera/Thumbnail;ZZ)V

    const-string p3, "FragmentBottomAction"

    const-string v1, "inconsistent thumbnail"

    invoke-static {p3, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object p3, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {p3, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iput-boolean v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mInLoading:Z

    iget-object p3, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mThumbnailProgress:Landroid/widget/ProgressBar;

    invoke-virtual {p3}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result p3

    const/16 v0, 0x8

    if-eq p3, v0, :cond_3

    iget-object p3, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mThumbnailProgress:Landroid/widget/ProgressBar;

    invoke-virtual {p3, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_3
    iget-boolean p3, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mIsIntentAction:Z

    if-eqz p3, :cond_4

    return-void

    :cond_4
    if-nez p1, :cond_6

    if-eqz p4, :cond_5

    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mThumbnailImage:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_5
    return-void

    :cond_6
    iget-boolean p3, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mThumbnailUseAsExit:Z

    if-nez p3, :cond_8

    iget-object p3, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mThumbnailImage:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/android/camera/Thumbnail;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    if-eqz p2, :cond_8

    iget-boolean p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mVideoRecordingStarted:Z

    if-eqz p1, :cond_7

    goto :goto_0

    :cond_7
    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mThumbnailImageLayout:Landroid/view/ViewGroup;

    const p2, 0x3e99999a    # 0.3f

    invoke-static {p1, p2}, Landroidx/core/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mThumbnailImageLayout:Landroid/view/ViewGroup;

    const p2, 0x3fa66666    # 1.3f

    invoke-static {p1, p2}, Landroidx/core/view/ViewCompat;->setScaleX(Landroid/view/View;F)V

    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mThumbnailImageLayout:Landroid/view/ViewGroup;

    invoke-static {p1, p2}, Landroidx/core/view/ViewCompat;->setScaleY(Landroid/view/View;F)V

    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mThumbnailImageLayout:Landroid/view/ViewGroup;

    invoke-static {p1}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2}, Landroidx/core/view/ViewPropertyAnimatorCompat;->alpha(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroidx/core/view/ViewPropertyAnimatorCompat;->scaleX(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroidx/core/view/ViewPropertyAnimatorCompat;->scaleY(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    new-instance p2, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction$5;

    invoke-direct {p2, p0}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction$5;-><init>(Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;)V

    invoke-virtual {p1, p2}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setListener(Landroidx/core/view/ViewPropertyAnimatorListener;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    const-wide/16 p2, 0x50

    invoke-virtual {p1, p2, p3}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->start()V

    :cond_8
    :goto_0
    return-void
.end method

.method public updateZoomRatio(FF)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mZoomViewHorizontal:Lcom/android/camera/ui/ZoomView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/ui/ZoomView;->updateZoomRatio(FF)V

    :cond_0
    return-void
.end method
