.class public Lcom/android/camera/customization/FragmentCustomTint$TintPreviewAdapter;
.super Landroidx/viewpager/widget/PagerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/customization/FragmentCustomTint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TintPreviewAdapter"
.end annotation


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/camera/customization/TintColor;",
            ">;"
        }
    .end annotation
.end field

.field public mItemClickListener:Landroid/view/View$OnClickListener;

.field public final synthetic this$0:Lcom/android/camera/customization/FragmentCustomTint;


# direct methods
.method public constructor <init>(Lcom/android/camera/customization/FragmentCustomTint;Landroid/content/Context;Ljava/util/List;Landroid/view/View$OnClickListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/android/camera/customization/TintColor;",
            ">;",
            "Landroid/view/View$OnClickListener;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/camera/customization/FragmentCustomTint$TintPreviewAdapter;->this$0:Lcom/android/camera/customization/FragmentCustomTint;

    invoke-direct {p0}, Landroidx/viewpager/widget/PagerAdapter;-><init>()V

    iput-object p2, p0, Lcom/android/camera/customization/FragmentCustomTint$TintPreviewAdapter;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/camera/customization/FragmentCustomTint$TintPreviewAdapter;->mData:Ljava/util/List;

    iput-object p4, p0, Lcom/android/camera/customization/FragmentCustomTint$TintPreviewAdapter;->mItemClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    check-cast p3, Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/camera/customization/FragmentCustomTint$TintPreviewAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 3

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c002d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const v1, 0x7f0900dc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/camera/customization/FragmentCustomTint$TintPreviewAdapter;->mData:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/customization/TintColor;

    invoke-virtual {v2}, Lcom/android/camera/customization/TintColor;->previewResource()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const p1, 0x7f09019f

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/android/camera/customization/FragmentCustomTint$TintPreviewAdapter;->this$0:Lcom/android/camera/customization/FragmentCustomTint;

    invoke-static {p2, v0}, Lcom/android/camera/customization/FragmentCustomTint;->access$400(Lcom/android/camera/customization/FragmentCustomTint;Landroid/view/View;)V

    iget-object p2, p0, Lcom/android/camera/customization/FragmentCustomTint$TintPreviewAdapter;->this$0:Lcom/android/camera/customization/FragmentCustomTint;

    invoke-static {p2, v0}, Lcom/android/camera/customization/FragmentCustomTint;->access$500(Lcom/android/camera/customization/FragmentCustomTint;Landroid/view/View;)V

    iget-object p2, p0, Lcom/android/camera/customization/FragmentCustomTint$TintPreviewAdapter;->this$0:Lcom/android/camera/customization/FragmentCustomTint;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/android/camera/customization/FragmentCustomTint;->access$600(Lcom/android/camera/customization/FragmentCustomTint;Landroid/view/View;)V

    iget-object p2, p0, Lcom/android/camera/customization/FragmentCustomTint$TintPreviewAdapter;->mItemClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 0

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
