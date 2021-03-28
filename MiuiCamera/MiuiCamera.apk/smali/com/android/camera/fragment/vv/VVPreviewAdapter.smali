.class public Lcom/android/camera/fragment/vv/VVPreviewAdapter;
.super Landroidx/viewpager/widget/PagerAdapter;
.source ""


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public mClickListener:Landroid/view/View$OnClickListener;

.field public mVVList:Lcom/android/camera/fragment/vv/VVList;


# direct methods
.method public constructor <init>(Lcom/android/camera/fragment/vv/VVList;Landroid/view/View$OnClickListener;)V
    .locals 0

    invoke-direct {p0}, Landroidx/viewpager/widget/PagerAdapter;-><init>()V

    iput-object p1, p0, Lcom/android/camera/fragment/vv/VVPreviewAdapter;->mVVList:Lcom/android/camera/fragment/vv/VVList;

    iput-object p2, p0, Lcom/android/camera/fragment/vv/VVPreviewAdapter;->mClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method private getDurationString(J)Ljava/lang/String;
    .locals 2

    long-to-float p1, p1

    const/high16 p2, 0x447a0000    # 1000.0f

    div-float/2addr p1, p2

    sget-object p2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "%.1f"

    invoke-static {p2, p1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    check-cast p3, Landroid/view/View;

    return-void
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/camera/fragment/vv/VVPreviewAdapter;->mVVList:Lcom/android/camera/fragment/vv/VVList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/camera/resource/BaseResourceList;->getSize()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 8

    iget-object v0, p0, Lcom/android/camera/fragment/vv/VVPreviewAdapter;->mVVList:Lcom/android/camera/fragment/vv/VVList;

    invoke-virtual {v0, p2}, Lcom/android/camera/resource/BaseResourceList;->getItem(I)Lcom/android/camera/resource/BaseResourceItem;

    move-result-object v0

    check-cast v0, Lcom/android/camera/fragment/vv/VVItem;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v2, 0x0

    const v3, 0x7f0c00b2

    invoke-virtual {v1, v3, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    const v3, 0x7f09041c

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    const v4, 0x7f09041a

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    const v5, 0x7f090427

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/camera/ui/TextureVideoView;

    const v5, 0x7f09041b

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/android/camera/fragment/vv/VVPreviewAdapter;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, v0, Lcom/android/camera/fragment/vv/VVItem;->name:Ljava/lang/String;

    invoke-static {v3, p2}, Landroidx/core/view/ViewCompat;->setTransitionName(Landroid/view/View;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object p2

    iget-object v4, v0, Lcom/android/camera/fragment/vv/VVItem;->coverPath:Ljava/lang/String;

    invoke-virtual {p2, v4}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p2

    invoke-virtual {p2, v3}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    invoke-virtual {v5}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, v0, Lcom/android/camera/fragment/vv/VVItem;->name:Ljava/lang/String;

    aput-object v4, v3, v2

    invoke-virtual {v0}, Lcom/android/camera/fragment/vv/VVItem;->getEssentialFragmentSize()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v3, v4

    invoke-virtual {v0}, Lcom/android/camera/fragment/vv/VVItem;->getTotalDuration()J

    move-result-wide v6

    invoke-direct {p0, v6, v7}, Lcom/android/camera/fragment/vv/VVPreviewAdapter;->getDurationString(J)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x2

    aput-object v0, v3, v2

    const v0, 0x7f1007ee

    invoke-virtual {p2, v0, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v5, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object v1
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
