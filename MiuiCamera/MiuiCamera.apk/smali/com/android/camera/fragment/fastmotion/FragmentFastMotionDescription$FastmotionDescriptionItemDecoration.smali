.class public Lcom/android/camera/fragment/fastmotion/FragmentFastMotionDescription$FastmotionDescriptionItemDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/fragment/fastmotion/FragmentFastMotionDescription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FastmotionDescriptionItemDecoration"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/fragment/fastmotion/FragmentFastMotionDescription;


# direct methods
.method public constructor <init>(Lcom/android/camera/fragment/fastmotion/FragmentFastMotionDescription;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastMotionDescription$FastmotionDescriptionItemDecoration;->this$0:Lcom/android/camera/fragment/fastmotion/FragmentFastMotionDescription;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/camera/fragment/fastmotion/FragmentFastMotionDescription;Lcom/android/camera/fragment/fastmotion/FragmentFastMotionDescription$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/fastmotion/FragmentFastMotionDescription$FastmotionDescriptionItemDecoration;-><init>(Lcom/android/camera/fragment/fastmotion/FragmentFastMotionDescription;)V

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 2

    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V

    iget-object p4, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastMotionDescription$FastmotionDescriptionItemDecoration;->this$0:Lcom/android/camera/fragment/fastmotion/FragmentFastMotionDescription;

    invoke-virtual {p4}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    const v0, 0x7f07027c

    invoke-virtual {p4, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p4

    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p2

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    const/4 v1, 0x0

    if-ne p2, v0, :cond_0

    iget-object p2, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastMotionDescription$FastmotionDescriptionItemDecoration;->this$0:Lcom/android/camera/fragment/fastmotion/FragmentFastMotionDescription;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f070274

    :goto_0
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    invoke-virtual {p1, p4, v1, p4, p2}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_1

    :cond_0
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p3

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    if-ne p2, p3, :cond_1

    iget-object p2, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastMotionDescription$FastmotionDescriptionItemDecoration;->this$0:Lcom/android/camera/fragment/fastmotion/FragmentFastMotionDescription;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f070273

    goto :goto_0

    :cond_1
    invoke-virtual {p1, p4, v1, p4, v1}, Landroid/graphics/Rect;->set(IIII)V

    :goto_1
    return-void
.end method
