.class public Lcom/android/camera/dualvideo/remote/setupwizard/RemoteDeviceListAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/dualvideo/remote/setupwizard/RemoteDeviceListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewHolder"
.end annotation


# instance fields
.field public final mDeviceDesc:Landroid/widget/TextView;

.field public final mDeviceIcon:Landroid/widget/ImageView;

.field public mDeviceId:I

.field public mDeviceName:Ljava/lang/String;

.field public final mDeviceStatus:Landroid/widget/TextView;

.field public mIconHeight:I

.field public mIconWidth:I

.field public final mItemView:Landroid/view/View;

.field public final rotate:Landroid/view/animation/RotateAnimation;


# direct methods
.method public constructor <init>(Landroid/view/View;II)V
    .locals 7

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/android/camera/dualvideo/remote/setupwizard/RemoteDeviceListAdapter$ViewHolder;->mItemView:Landroid/view/View;

    const v0, 0x7f0902de

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/dualvideo/remote/setupwizard/RemoteDeviceListAdapter$ViewHolder;->mDeviceIcon:Landroid/widget/ImageView;

    const v0, 0x7f0902dd

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/dualvideo/remote/setupwizard/RemoteDeviceListAdapter$ViewHolder;->mDeviceDesc:Landroid/widget/TextView;

    const v0, 0x7f0902e0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/camera/dualvideo/remote/setupwizard/RemoteDeviceListAdapter$ViewHolder;->mDeviceStatus:Landroid/widget/TextView;

    iput p2, p0, Lcom/android/camera/dualvideo/remote/setupwizard/RemoteDeviceListAdapter$ViewHolder;->mIconWidth:I

    iput p3, p0, Lcom/android/camera/dualvideo/remote/setupwizard/RemoteDeviceListAdapter$ViewHolder;->mIconHeight:I

    new-instance p1, Landroid/view/animation/RotateAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x43b40000    # 360.0f

    const/4 v3, 0x1

    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v5, 0x1

    const/high16 v6, 0x3f000000    # 0.5f

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    iput-object p1, p0, Lcom/android/camera/dualvideo/remote/setupwizard/RemoteDeviceListAdapter$ViewHolder;->rotate:Landroid/view/animation/RotateAnimation;

    new-instance p1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iget-object p2, p0, Lcom/android/camera/dualvideo/remote/setupwizard/RemoteDeviceListAdapter$ViewHolder;->rotate:Landroid/view/animation/RotateAnimation;

    invoke-virtual {p2, p1}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object p1, p0, Lcom/android/camera/dualvideo/remote/setupwizard/RemoteDeviceListAdapter$ViewHolder;->rotate:Landroid/view/animation/RotateAnimation;

    const-wide/16 p2, 0x3e8

    invoke-virtual {p1, p2, p3}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    iget-object p1, p0, Lcom/android/camera/dualvideo/remote/setupwizard/RemoteDeviceListAdapter$ViewHolder;->rotate:Landroid/view/animation/RotateAnimation;

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Landroid/view/animation/RotateAnimation;->setRepeatCount(I)V

    iget-object p1, p0, Lcom/android/camera/dualvideo/remote/setupwizard/RemoteDeviceListAdapter$ViewHolder;->rotate:Landroid/view/animation/RotateAnimation;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/view/animation/RotateAnimation;->setFillAfter(Z)V

    iget-object p1, p0, Lcom/android/camera/dualvideo/remote/setupwizard/RemoteDeviceListAdapter$ViewHolder;->rotate:Landroid/view/animation/RotateAnimation;

    invoke-virtual {p1, p2}, Landroid/view/animation/RotateAnimation;->setRepeatMode(I)V

    return-void
.end method


# virtual methods
.method public setDeviceIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/dualvideo/remote/setupwizard/RemoteDeviceListAdapter$ViewHolder;->mDeviceIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/android/camera/dualvideo/remote/setupwizard/RemoteDeviceListAdapter$ViewHolder;->mDeviceIcon:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget v0, p0, Lcom/android/camera/dualvideo/remote/setupwizard/RemoteDeviceListAdapter$ViewHolder;->mIconWidth:I

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object p1, p0, Lcom/android/camera/dualvideo/remote/setupwizard/RemoteDeviceListAdapter$ViewHolder;->mDeviceIcon:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget v0, p0, Lcom/android/camera/dualvideo/remote/setupwizard/RemoteDeviceListAdapter$ViewHolder;->mIconHeight:I

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    return-void
.end method

.method public setDeviceId(I)V
    .locals 0

    iput p1, p0, Lcom/android/camera/dualvideo/remote/setupwizard/RemoteDeviceListAdapter$ViewHolder;->mDeviceId:I

    return-void
.end method

.method public setDeviceName(Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/android/camera/dualvideo/remote/setupwizard/RemoteDeviceListAdapter$ViewHolder;->mDeviceName:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/camera/dualvideo/remote/setupwizard/RemoteDeviceListAdapter$ViewHolder;->mDeviceDesc:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setDeviceStatus(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/dualvideo/remote/setupwizard/RemoteDeviceListAdapter$ViewHolder;->mDeviceStatus:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setDeviceStatusTextColor(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/dualvideo/remote/setupwizard/RemoteDeviceListAdapter$ViewHolder;->mDeviceStatus:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/dualvideo/remote/setupwizard/RemoteDeviceListAdapter$ViewHolder;->mItemView:Landroid/view/View;

    if-eqz p1, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const v1, 0x3f19999a    # 0.6f

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/camera/dualvideo/remote/setupwizard/RemoteDeviceListAdapter$ViewHolder;->mItemView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method public startRotate()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/dualvideo/remote/setupwizard/RemoteDeviceListAdapter$ViewHolder;->mDeviceIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/camera/dualvideo/remote/setupwizard/RemoteDeviceListAdapter$ViewHolder;->rotate:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    return-void
.end method

.method public stopRotate()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/dualvideo/remote/setupwizard/RemoteDeviceListAdapter$ViewHolder;->mDeviceIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    return-void
.end method
