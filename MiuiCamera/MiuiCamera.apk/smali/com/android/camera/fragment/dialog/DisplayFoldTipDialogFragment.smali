.class public Lcom/android/camera/fragment/dialog/DisplayFoldTipDialogFragment;
.super Lcom/android/camera/fragment/dialog/BaseDialogFragment;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final TAG:Ljava/lang/String; = "DisplayFoldTipDialog"


# instance fields
.field public mAnimRawResId:I

.field public mLottieAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

.field public mOnClickListener:Landroid/view/View$OnClickListener;

.field public mTextView:Landroid/widget/TextView;

.field public mTipContentResId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/fragment/dialog/BaseDialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    iget-object v0, p0, Lcom/android/camera/fragment/dialog/DisplayFoldTipDialogFragment;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0c002e

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f090355

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/android/camera/fragment/dialog/DisplayFoldTipDialogFragment;->mTextView:Landroid/widget/TextView;

    const p2, 0x7f09020d

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object p2, p0, Lcom/android/camera/fragment/dialog/DisplayFoldTipDialogFragment;->mLottieAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    iget p3, p0, Lcom/android/camera/fragment/dialog/DisplayFoldTipDialogFragment;->mAnimRawResId:I

    if-lez p3, :cond_0

    invoke-virtual {p2, p3}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(I)V

    iget-object p2, p0, Lcom/android/camera/fragment/dialog/DisplayFoldTipDialogFragment;->mLottieAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    const/4 p3, -0x1

    invoke-virtual {p2, p3}, Lcom/airbnb/lottie/LottieAnimationView;->setRepeatCount(I)V

    iget-object p2, p0, Lcom/android/camera/fragment/dialog/DisplayFoldTipDialogFragment;->mLottieAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p2}, Lcom/airbnb/lottie/LottieAnimationView;->OooO0oo()V

    :cond_0
    iget p2, p0, Lcom/android/camera/fragment/dialog/DisplayFoldTipDialogFragment;->mTipContentResId:I

    if-lez p2, :cond_1

    iget-object p3, p0, Lcom/android/camera/fragment/dialog/DisplayFoldTipDialogFragment;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setText(I)V

    :cond_1
    return-object p1
.end method

.method public setAnimRawResId(I)V
    .locals 0

    iput p1, p0, Lcom/android/camera/fragment/dialog/DisplayFoldTipDialogFragment;->mAnimRawResId:I

    return-void
.end method

.method public setOnClick(Landroid/view/View$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/fragment/dialog/DisplayFoldTipDialogFragment;->mOnClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setTipText(I)V
    .locals 0

    if-gtz p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/android/camera/fragment/dialog/DisplayFoldTipDialogFragment;->mTipContentResId:I

    return-void
.end method
