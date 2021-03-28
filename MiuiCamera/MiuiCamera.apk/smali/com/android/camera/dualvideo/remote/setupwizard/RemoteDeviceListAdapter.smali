.class public Lcom/android/camera/dualvideo/remote/setupwizard/RemoteDeviceListAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/dualvideo/remote/setupwizard/RemoteDeviceListAdapter$ItemDecoration;,
        Lcom/android/camera/dualvideo/remote/setupwizard/RemoteDeviceListAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/android/camera/dualvideo/remote/setupwizard/RemoteDeviceListAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mIconHeight:I

.field public mIconWidth:I

.field public final mOnClickListener:Landroid/view/View$OnClickListener;

.field public final mRemoteDeviceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/camera/dualvideo/remote/RemoteDevice;",
            ">;"
        }
    .end annotation
.end field

.field public final mSetupWizardScreen:Lcom/android/camera/dualvideo/remote/setupwizard/screen/SetupWizardScreen;


# direct methods
.method public constructor <init>(Lcom/android/camera/dualvideo/remote/setupwizard/screen/SetupWizardScreen;Ljava/util/List;IILandroid/view/View$OnClickListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/dualvideo/remote/setupwizard/screen/SetupWizardScreen;",
            "Ljava/util/List<",
            "Lcom/android/camera/dualvideo/remote/RemoteDevice;",
            ">;II",
            "Landroid/view/View$OnClickListener;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    iput-object p1, p0, Lcom/android/camera/dualvideo/remote/setupwizard/RemoteDeviceListAdapter;->mSetupWizardScreen:Lcom/android/camera/dualvideo/remote/setupwizard/screen/SetupWizardScreen;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/dualvideo/remote/setupwizard/RemoteDeviceListAdapter;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/camera/dualvideo/remote/setupwizard/RemoteDeviceListAdapter;->mRemoteDeviceList:Ljava/util/List;

    iput-object p5, p0, Lcom/android/camera/dualvideo/remote/setupwizard/RemoteDeviceListAdapter;->mOnClickListener:Landroid/view/View$OnClickListener;

    iput p3, p0, Lcom/android/camera/dualvideo/remote/setupwizard/RemoteDeviceListAdapter;->mIconWidth:I

    iput p4, p0, Lcom/android/camera/dualvideo/remote/setupwizard/RemoteDeviceListAdapter;->mIconHeight:I

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/camera/dualvideo/remote/setupwizard/RemoteDeviceListAdapter;->mRemoteDeviceList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    check-cast p1, Lcom/android/camera/dualvideo/remote/setupwizard/RemoteDeviceListAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/dualvideo/remote/setupwizard/RemoteDeviceListAdapter;->onBindViewHolder(Lcom/android/camera/dualvideo/remote/setupwizard/RemoteDeviceListAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/android/camera/dualvideo/remote/setupwizard/RemoteDeviceListAdapter$ViewHolder;I)V
    .locals 6

    iget-object v0, p0, Lcom/android/camera/dualvideo/remote/setupwizard/RemoteDeviceListAdapter;->mRemoteDeviceList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/camera/dualvideo/remote/RemoteDevice;

    const/4 v0, -0x1

    const v1, 0x7f080375

    const/4 v2, 0x0

    const/4 v3, 0x1

    const v4, 0x7f06017e

    if-nez p2, :cond_0

    invoke-virtual {p1, v3}, Lcom/android/camera/dualvideo/remote/setupwizard/RemoteDeviceListAdapter$ViewHolder;->setEnabled(Z)V

    const-string p2, "UNKNOWN"

    invoke-virtual {p1, p2}, Lcom/android/camera/dualvideo/remote/setupwizard/RemoteDeviceListAdapter$ViewHolder;->setDeviceName(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/android/camera/dualvideo/remote/setupwizard/RemoteDeviceListAdapter$ViewHolder;->setDeviceId(I)V

    :goto_0
    invoke-virtual {p1, v2}, Lcom/android/camera/dualvideo/remote/setupwizard/RemoteDeviceListAdapter$ViewHolder;->setDeviceStatus(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/camera/dualvideo/remote/setupwizard/RemoteDeviceListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p2, v4}, Landroid/content/Context;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/camera/dualvideo/remote/setupwizard/RemoteDeviceListAdapter$ViewHolder;->setDeviceStatusTextColor(I)V

    iget-object p2, p0, Lcom/android/camera/dualvideo/remote/setupwizard/RemoteDeviceListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p2, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/camera/dualvideo/remote/setupwizard/RemoteDeviceListAdapter$ViewHolder;->setDeviceIcon(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1}, Lcom/android/camera/dualvideo/remote/setupwizard/RemoteDeviceListAdapter$ViewHolder;->stopRotate()V

    return-void

    :cond_0
    iget-object v5, p0, Lcom/android/camera/dualvideo/remote/setupwizard/RemoteDeviceListAdapter;->mSetupWizardScreen:Lcom/android/camera/dualvideo/remote/setupwizard/screen/SetupWizardScreen;

    invoke-virtual {v5}, Lcom/android/camera/dualvideo/remote/setupwizard/screen/SetupWizardScreen;->getSelectedRemoteDeviceId()I

    move-result v5

    if-eq v5, v0, :cond_7

    iget v0, p2, Lcom/android/camera/dualvideo/remote/RemoteDevice;->id:I

    if-ne v0, v5, :cond_1

    move v0, v3

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p1, v0}, Lcom/android/camera/dualvideo/remote/setupwizard/RemoteDeviceListAdapter$ViewHolder;->setEnabled(Z)V

    iget-object v5, p2, Lcom/android/camera/dualvideo/remote/RemoteDevice;->name:Ljava/lang/String;

    invoke-virtual {p1, v5}, Lcom/android/camera/dualvideo/remote/setupwizard/RemoteDeviceListAdapter$ViewHolder;->setDeviceName(Ljava/lang/String;)V

    iget v5, p2, Lcom/android/camera/dualvideo/remote/RemoteDevice;->id:I

    invoke-virtual {p1, v5}, Lcom/android/camera/dualvideo/remote/setupwizard/RemoteDeviceListAdapter$ViewHolder;->setDeviceId(I)V

    if-eqz v0, :cond_6

    iget p2, p2, Lcom/android/camera/dualvideo/remote/RemoteDevice;->connectivity:I

    if-eq p2, v3, :cond_5

    const/4 v0, 0x3

    const v3, 0x7f080372

    const v5, 0x7f06017d

    if-eq p2, v0, :cond_4

    const/4 v0, 0x4

    if-eq p2, v0, :cond_3

    const/4 v0, 0x5

    if-eq p2, v0, :cond_2

    iget-object p2, p0, Lcom/android/camera/dualvideo/remote/setupwizard/RemoteDeviceListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p2, v4}, Landroid/content/Context;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/camera/dualvideo/remote/setupwizard/RemoteDeviceListAdapter$ViewHolder;->setDeviceStatusTextColor(I)V

    invoke-virtual {p1, v2}, Lcom/android/camera/dualvideo/remote/setupwizard/RemoteDeviceListAdapter$ViewHolder;->setDeviceStatus(Ljava/lang/String;)V

    goto :goto_3

    :cond_2
    iget-object p2, p0, Lcom/android/camera/dualvideo/remote/setupwizard/RemoteDeviceListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f10044d

    goto :goto_2

    :cond_3
    iget-object p2, p0, Lcom/android/camera/dualvideo/remote/setupwizard/RemoteDeviceListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f10044c

    goto :goto_2

    :cond_4
    iget-object p2, p0, Lcom/android/camera/dualvideo/remote/setupwizard/RemoteDeviceListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f100449

    :goto_2
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/camera/dualvideo/remote/setupwizard/RemoteDeviceListAdapter$ViewHolder;->setDeviceStatus(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/camera/dualvideo/remote/setupwizard/RemoteDeviceListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p2, v5}, Landroid/content/Context;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/camera/dualvideo/remote/setupwizard/RemoteDeviceListAdapter$ViewHolder;->setDeviceStatusTextColor(I)V

    iget-object p2, p0, Lcom/android/camera/dualvideo/remote/setupwizard/RemoteDeviceListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p2, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    goto :goto_4

    :cond_5
    iget-object p2, p0, Lcom/android/camera/dualvideo/remote/setupwizard/RemoteDeviceListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f10044a

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/camera/dualvideo/remote/setupwizard/RemoteDeviceListAdapter$ViewHolder;->setDeviceStatus(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/camera/dualvideo/remote/setupwizard/RemoteDeviceListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p2, v4}, Landroid/content/Context;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/camera/dualvideo/remote/setupwizard/RemoteDeviceListAdapter$ViewHolder;->setDeviceStatusTextColor(I)V

    iget-object p2, p0, Lcom/android/camera/dualvideo/remote/setupwizard/RemoteDeviceListAdapter;->mContext:Landroid/content/Context;

    const v0, 0x7f080373

    invoke-virtual {p2, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/camera/dualvideo/remote/setupwizard/RemoteDeviceListAdapter$ViewHolder;->setDeviceIcon(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1}, Lcom/android/camera/dualvideo/remote/setupwizard/RemoteDeviceListAdapter$ViewHolder;->startRotate()V

    goto :goto_5

    :cond_6
    invoke-virtual {p1, v2}, Lcom/android/camera/dualvideo/remote/setupwizard/RemoteDeviceListAdapter$ViewHolder;->setDeviceStatus(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/camera/dualvideo/remote/setupwizard/RemoteDeviceListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p2, v4}, Landroid/content/Context;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/camera/dualvideo/remote/setupwizard/RemoteDeviceListAdapter$ViewHolder;->setDeviceStatusTextColor(I)V

    :goto_3
    iget-object p2, p0, Lcom/android/camera/dualvideo/remote/setupwizard/RemoteDeviceListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p2, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    :goto_4
    invoke-virtual {p1, p2}, Lcom/android/camera/dualvideo/remote/setupwizard/RemoteDeviceListAdapter$ViewHolder;->setDeviceIcon(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1}, Lcom/android/camera/dualvideo/remote/setupwizard/RemoteDeviceListAdapter$ViewHolder;->stopRotate()V

    :goto_5
    return-void

    :cond_7
    invoke-virtual {p1, v3}, Lcom/android/camera/dualvideo/remote/setupwizard/RemoteDeviceListAdapter$ViewHolder;->setEnabled(Z)V

    iget-object v0, p2, Lcom/android/camera/dualvideo/remote/RemoteDevice;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/android/camera/dualvideo/remote/setupwizard/RemoteDeviceListAdapter$ViewHolder;->setDeviceName(Ljava/lang/String;)V

    iget p2, p2, Lcom/android/camera/dualvideo/remote/RemoteDevice;->id:I

    invoke-virtual {p1, p2}, Lcom/android/camera/dualvideo/remote/setupwizard/RemoteDeviceListAdapter$ViewHolder;->setDeviceId(I)V

    goto/16 :goto_0
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/dualvideo/remote/setupwizard/RemoteDeviceListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/camera/dualvideo/remote/setupwizard/RemoteDeviceListAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/camera/dualvideo/remote/setupwizard/RemoteDeviceListAdapter$ViewHolder;
    .locals 2

    iget-object p2, p0, Lcom/android/camera/dualvideo/remote/setupwizard/RemoteDeviceListAdapter;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0c0123

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iget-object p2, p0, Lcom/android/camera/dualvideo/remote/setupwizard/RemoteDeviceListAdapter;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {p1}, Lcom/android/camera/animation/FolmeUtils;->handleListItemTouch(Landroid/view/View;)V

    new-instance p2, Lcom/android/camera/dualvideo/remote/setupwizard/RemoteDeviceListAdapter$ViewHolder;

    iget v0, p0, Lcom/android/camera/dualvideo/remote/setupwizard/RemoteDeviceListAdapter;->mIconWidth:I

    iget v1, p0, Lcom/android/camera/dualvideo/remote/setupwizard/RemoteDeviceListAdapter;->mIconHeight:I

    invoke-direct {p2, p1, v0, v1}, Lcom/android/camera/dualvideo/remote/setupwizard/RemoteDeviceListAdapter$ViewHolder;-><init>(Landroid/view/View;II)V

    return-object p2
.end method
