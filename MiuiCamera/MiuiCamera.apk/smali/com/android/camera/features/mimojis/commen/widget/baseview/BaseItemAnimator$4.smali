.class public Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseItemAnimator$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseItemAnimator;->animateRemoveImpl(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseItemAnimator;

.field public final synthetic val$animation:Landroid/view/ViewPropertyAnimator;

.field public final synthetic val$holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

.field public final synthetic val$view:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseItemAnimator;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroid/view/ViewPropertyAnimator;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseItemAnimator$4;->this$0:Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseItemAnimator;

    iput-object p2, p0, Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseItemAnimator$4;->val$holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iput-object p3, p0, Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseItemAnimator$4;->val$animation:Landroid/view/ViewPropertyAnimator;

    iput-object p4, p0, Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseItemAnimator$4;->val$view:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseItemAnimator$4;->val$animation:Landroid/view/ViewPropertyAnimator;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseItemAnimator$4;->val$view:Landroid/view/View;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseItemAnimator$4;->this$0:Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseItemAnimator;

    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseItemAnimator$4;->val$holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/SimpleItemAnimator;->dispatchRemoveFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseItemAnimator$4;->this$0:Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseItemAnimator;

    iget-object p1, p1, Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseItemAnimator;->mRemoveAnimations:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseItemAnimator$4;->val$holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseItemAnimator$4;->this$0:Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseItemAnimator;

    invoke-virtual {p1}, Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseItemAnimator;->dispatchFinishedWhenDone()V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseItemAnimator$4;->this$0:Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseItemAnimator;

    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseItemAnimator$4;->val$holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/SimpleItemAnimator;->dispatchRemoveStarting(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    return-void
.end method
