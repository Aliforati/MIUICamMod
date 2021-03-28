.class public Lcom/android/camera/fragment/beauty/BeautyEyeLightFragment$1;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/fragment/beauty/BeautyEyeLightFragment;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final mLeftMargin:I

.field public final mRightMargin:I

.field public final synthetic this$0:Lcom/android/camera/fragment/beauty/BeautyEyeLightFragment;

.field public final synthetic val$isRTL:Z


# direct methods
.method public constructor <init>(Lcom/android/camera/fragment/beauty/BeautyEyeLightFragment;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/fragment/beauty/BeautyEyeLightFragment$1;->this$0:Lcom/android/camera/fragment/beauty/BeautyEyeLightFragment;

    iput-boolean p2, p0, Lcom/android/camera/fragment/beauty/BeautyEyeLightFragment$1;->val$isRTL:Z

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    iget-object p1, p0, Lcom/android/camera/fragment/beauty/BeautyEyeLightFragment$1;->this$0:Lcom/android/camera/fragment/beauty/BeautyEyeLightFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070262

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/camera/fragment/beauty/BeautyEyeLightFragment$1;->mLeftMargin:I

    iget-object p1, p0, Lcom/android/camera/fragment/beauty/BeautyEyeLightFragment$1;->this$0:Lcom/android/camera/fragment/beauty/BeautyEyeLightFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070263

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/camera/fragment/beauty/BeautyEyeLightFragment$1;->mRightMargin:I

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 0

    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p2

    iget-boolean p3, p0, Lcom/android/camera/fragment/beauty/BeautyEyeLightFragment$1;->val$isRTL:Z

    const/4 p4, 0x0

    if-eqz p3, :cond_1

    if-nez p2, :cond_0

    iget p2, p0, Lcom/android/camera/fragment/beauty/BeautyEyeLightFragment$1;->mRightMargin:I

    iget p3, p0, Lcom/android/camera/fragment/beauty/BeautyEyeLightFragment$1;->mLeftMargin:I

    goto :goto_0

    :cond_0
    iget p2, p0, Lcom/android/camera/fragment/beauty/BeautyEyeLightFragment$1;->mRightMargin:I

    invoke-virtual {p1, p2, p4, p4, p4}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_1

    :cond_1
    if-nez p2, :cond_2

    iget p2, p0, Lcom/android/camera/fragment/beauty/BeautyEyeLightFragment$1;->mLeftMargin:I

    iget p3, p0, Lcom/android/camera/fragment/beauty/BeautyEyeLightFragment$1;->mRightMargin:I

    :goto_0
    invoke-virtual {p1, p2, p4, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_1

    :cond_2
    iget p2, p0, Lcom/android/camera/fragment/beauty/BeautyEyeLightFragment$1;->mRightMargin:I

    invoke-virtual {p1, p4, p4, p2, p4}, Landroid/graphics/Rect;->set(IIII)V

    :goto_1
    return-void
.end method
