.class public Lcom/android/camera/dualvideo/remote/setupwizard/screen/C;
.super Lcom/android/camera/dualvideo/remote/setupwizard/screen/SetupWizardScreen;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public mAdapter:Lcom/android/camera/dualvideo/remote/setupwizard/RemoteDeviceListAdapter;

.field public mAlertDialog:Landroid/app/AlertDialog;

.field public final mCancel:Ljava/lang/Runnable;

.field public mConfirmationDialog:Landroid/app/AlertDialog;

.field public mIconHeight:I

.field public mIconWidth:I

.field public mIsSuspended:Z

.field public mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field public final mReset:Ljava/lang/Runnable;

.field public mTempList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/camera/dualvideo/remote/RemoteDevice;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/dualvideo/remote/setupwizard/screen/SetupWizardScreen;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/C;->mTempList:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/C;->mIsSuspended:Z

    new-instance v0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/C$4;

    invoke-direct {v0, p0}, Lcom/android/camera/dualvideo/remote/setupwizard/screen/C$4;-><init>(Lcom/android/camera/dualvideo/remote/setupwizard/screen/C;)V

    iput-object v0, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/C;->mCancel:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/C$5;

    invoke-direct {v0, p0}, Lcom/android/camera/dualvideo/remote/setupwizard/screen/C$5;-><init>(Lcom/android/camera/dualvideo/remote/setupwizard/screen/C;)V

    iput-object v0, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/C;->mReset:Ljava/lang/Runnable;

    return-void
.end method

.method public static synthetic access$002(Lcom/android/camera/dualvideo/remote/setupwizard/screen/C;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/C;->mIsSuspended:Z

    return p1
.end method

.method public static synthetic access$100(Lcom/android/camera/dualvideo/remote/setupwizard/screen/C;)Landroid/app/AlertDialog;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/C;->mConfirmationDialog:Landroid/app/AlertDialog;

    return-object p0
.end method

.method public static synthetic access$102(Lcom/android/camera/dualvideo/remote/setupwizard/screen/C;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    iput-object p1, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/C;->mConfirmationDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method public static synthetic access$200(Lcom/android/camera/dualvideo/remote/setupwizard/screen/C;)Landroid/app/AlertDialog;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/C;->mAlertDialog:Landroid/app/AlertDialog;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/android/camera/dualvideo/remote/setupwizard/screen/C;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/C;->mReset:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/android/camera/dualvideo/remote/setupwizard/screen/C;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/C;->mCancel:Ljava/lang/Runnable;

    return-object p0
.end method

.method private updateListView()V
    .locals 6

    invoke-static {}, Lcom/android/camera/dualvideo/remote/RemoteOnlineController;->current()Lcom/android/camera/dualvideo/remote/RemoteOnlineController;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/C;->mTempList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/C;->mTempList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/android/camera/dualvideo/remote/RemoteOnlineController;->populateRemoteDeviceList(Ljava/util/List;)I

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    iget-object v0, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/C;->mAdapter:Lcom/android/camera/dualvideo/remote/setupwizard/RemoteDeviceListAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void

    :cond_1
    iget v0, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/SetupWizardScreen;->mSelectedRemoteDeviceId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    :goto_1
    iget-object v0, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/SetupWizardScreen;->mRemoteDeviceList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :goto_2
    iget-object v0, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/SetupWizardScreen;->mRemoteDeviceList:Ljava/util/List;

    iget-object v1, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/C;->mTempList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v0}, Lcom/android/camera/dualvideo/remote/setupwizard/screen/SetupWizardScreen;->getRemoteDeviceById(I)Lcom/android/camera/dualvideo/remote/RemoteDevice;

    move-result-object v0

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/C;->mTempList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/dualvideo/remote/RemoteDevice;

    iget v4, v3, Lcom/android/camera/dualvideo/remote/RemoteDevice;->id:I

    iget v5, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/SetupWizardScreen;->mSelectedRemoteDeviceId:I

    if-eq v4, v5, :cond_5

    iget-object v3, v3, Lcom/android/camera/dualvideo/remote/RemoteDevice;->hash:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/camera/dualvideo/remote/RemoteDevice;->hash:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_5
    const/4 v1, 0x1

    :cond_6
    if-eqz v1, :cond_7

    goto :goto_1

    :cond_7
    iget-object v1, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/SetupWizardScreen;->mRemoteDeviceList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/SetupWizardScreen;->mRemoteDeviceList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method


# virtual methods
.method public onAvailabilityStateChanged(Lcom/android/camera/dualvideo/remote/RemoteDevice;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/dualvideo/remote/setupwizard/screen/C;->updateListView()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7

    invoke-static {}, Lcom/android/camera/dualvideo/remote/RemoteOnlineController;->current()Lcom/android/camera/dualvideo/remote/RemoteOnlineController;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/C;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    check-cast p1, Lcom/android/camera/dualvideo/remote/setupwizard/RemoteDeviceListAdapter$ViewHolder;

    if-eqz p1, :cond_6

    iget v1, p1, Lcom/android/camera/dualvideo/remote/setupwizard/RemoteDeviceListAdapter$ViewHolder;->mDeviceId:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    goto/16 :goto_0

    :cond_1
    iget v3, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/SetupWizardScreen;->mSelectedRemoteDeviceId:I

    const-wide/32 v4, 0xea60

    const v6, 0x7f10072e

    if-ne v3, v2, :cond_2

    iget-object v1, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/C;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1, v6}, Landroid/app/AlertDialog;->setTitle(I)V

    iget p1, p1, Lcom/android/camera/dualvideo/remote/setupwizard/RemoteDeviceListAdapter$ViewHolder;->mDeviceId:I

    iput p1, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/SetupWizardScreen;->mSelectedRemoteDeviceId:I

    invoke-virtual {v0, p1}, Lcom/android/camera/dualvideo/remote/RemoteOnlineController;->connect(I)V

    iget-object p1, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/SetupWizardScreen;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/C;->mCancel:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/SetupWizardScreen;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/C;->mReset:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/SetupWizardScreen;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/C;->mCancel:Ljava/lang/Runnable;

    invoke-virtual {p1, v0, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_2
    if-ne v1, v3, :cond_6

    invoke-virtual {p0, v3}, Lcom/android/camera/dualvideo/remote/setupwizard/screen/SetupWizardScreen;->getRemoteDeviceById(I)Lcom/android/camera/dualvideo/remote/RemoteDevice;

    move-result-object v1

    if-nez v1, :cond_3

    return-void

    :cond_3
    iget v2, v1, Lcom/android/camera/dualvideo/remote/RemoteDevice;->connectivity:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_5

    const/4 v1, 0x3

    if-eq v2, v1, :cond_4

    const/4 v1, 0x4

    if-eq v2, v1, :cond_4

    const/4 v1, 0x5

    if-eq v2, v1, :cond_4

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/C;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1, v6}, Landroid/app/AlertDialog;->setTitle(I)V

    iget p1, p1, Lcom/android/camera/dualvideo/remote/setupwizard/RemoteDeviceListAdapter$ViewHolder;->mDeviceId:I

    iput p1, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/SetupWizardScreen;->mSelectedRemoteDeviceId:I

    invoke-virtual {v0, p1}, Lcom/android/camera/dualvideo/remote/RemoteOnlineController;->connect(I)V

    iget-object p1, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/SetupWizardScreen;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/C;->mCancel:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/SetupWizardScreen;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/C;->mReset:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/SetupWizardScreen;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/C;->mCancel:Ljava/lang/Runnable;

    invoke-virtual {p1, v0, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_5
    iput-boolean v3, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/C;->mIsSuspended:Z

    invoke-virtual {v0, v1, v3}, Lcom/android/camera/dualvideo/remote/RemoteOnlineController;->setConnectionSuspended(Lcom/android/camera/dualvideo/remote/RemoteDevice;Z)V

    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f100723

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v5, v1, Lcom/android/camera/dualvideo/remote/RemoteDevice;->name:Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v3, v6

    invoke-virtual {p0, v4, v3}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f100296

    new-instance v4, Lcom/android/camera/dualvideo/remote/setupwizard/screen/C$3;

    invoke-direct {v4, p0, v0, v1}, Lcom/android/camera/dualvideo/remote/setupwizard/screen/C$3;-><init>(Lcom/android/camera/dualvideo/remote/setupwizard/screen/C;Lcom/android/camera/dualvideo/remote/RemoteOnlineController;Lcom/android/camera/dualvideo/remote/RemoteDevice;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f10029a

    new-instance v3, Lcom/android/camera/dualvideo/remote/setupwizard/screen/C$2;

    invoke-direct {v3, p0, p1, v1}, Lcom/android/camera/dualvideo/remote/setupwizard/screen/C$2;-><init>(Lcom/android/camera/dualvideo/remote/setupwizard/screen/C;Lcom/android/camera/dualvideo/remote/setupwizard/RemoteDeviceListAdapter$ViewHolder;Lcom/android/camera/dualvideo/remote/RemoteDevice;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/C;->mConfirmationDialog:Landroid/app/AlertDialog;

    invoke-virtual {p1, v6}, Landroid/app/AlertDialog;->setCancelable(Z)V

    iget-object p1, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/C;->mConfirmationDialog:Landroid/app/AlertDialog;

    invoke-virtual {p1, v6}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    iget-object p1, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/C;->mConfirmationDialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    :cond_6
    :goto_0
    return-void
.end method

.method public onConnectivityStateChanged(Lcom/android/camera/dualvideo/remote/RemoteDevice;)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/C;->mIsSuspended:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget p1, p1, Lcom/android/camera/dualvideo/remote/RemoteDevice;->connectivity:I

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p1, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/C;->mAdapter:Lcom/android/camera/dualvideo/remote/setupwizard/RemoteDeviceListAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    iget-object p1, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/SetupWizardScreen;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/C;->mCancel:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/SetupWizardScreen;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/C;->mReset:Ljava/lang/Runnable;

    const-wide/16 v1, 0xbb8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :pswitch_1
    iget-object p1, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/SetupWizardScreen;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/C;->mReset:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/SetupWizardScreen;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/C;->mCancel:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    goto :goto_0

    :pswitch_2
    const/4 p1, -0x1

    iput p1, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/SetupWizardScreen;->mSelectedRemoteDeviceId:I

    :pswitch_3
    iget-object p1, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/C;->mAdapter:Lcom/android/camera/dualvideo/remote/setupwizard/RemoteDeviceListAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4

    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f100722

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const/4 v0, 0x0

    const v1, 0x7f100296

    invoke-virtual {p1, v1, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v2, 0x0

    const v3, 0x7f0c0126

    invoke-virtual {v1, v3, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0, v0}, Lcom/android/camera/dualvideo/remote/setupwizard/screen/C;->onViewCreated(Landroid/view/View;)V

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/C;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {p1, v2}, Landroid/app/AlertDialog;->setCancelable(Z)V

    iget-object p1, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/C;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {p1, v2}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    iget-object p1, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/C;->mAlertDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method public onPause()V
    .locals 3

    invoke-super {p0}, Lcom/android/camera/dualvideo/remote/setupwizard/screen/SetupWizardScreen;->onPause()V

    iget-object v0, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/C;->mConfirmationDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/C;->mConfirmationDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/C;->mIsSuspended:Z

    invoke-static {}, Lcom/android/camera/dualvideo/remote/RemoteOnlineController;->current()Lcom/android/camera/dualvideo/remote/RemoteOnlineController;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lcom/android/camera/dualvideo/remote/RemoteOnlineController;->setConnectionSuspended(Lcom/android/camera/dualvideo/remote/RemoteDevice;Z)V

    :cond_1
    iget-object v0, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/SetupWizardScreen;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/C;->mCancel:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/SetupWizardScreen;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/C;->mReset:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onPrepareDialog(Landroid/app/Dialog;)V
    .locals 1

    check-cast p1, Landroid/app/AlertDialog;

    const/4 v0, -0x2

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    new-instance v0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/C$1;

    invoke-direct {v0, p0}, Lcom/android/camera/dualvideo/remote/setupwizard/screen/C$1;-><init>(Lcom/android/camera/dualvideo/remote/setupwizard/screen/C;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onResume()V
    .locals 3

    invoke-super {p0}, Lcom/android/camera/dualvideo/remote/setupwizard/screen/SetupWizardScreen;->onResume()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/C;->mIsSuspended:Z

    invoke-static {}, Lcom/android/camera/dualvideo/remote/RemoteOnlineController;->current()Lcom/android/camera/dualvideo/remote/RemoteOnlineController;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lcom/android/camera/dualvideo/remote/RemoteOnlineController;->setConnectionSuspended(Lcom/android/camera/dualvideo/remote/RemoteDevice;Z)V

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;)V
    .locals 7

    const v0, 0x7f0902df

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/C;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p1, Lcom/xiaomi/camera/ui/layout/CenterAlignedLayoutManager;

    invoke-direct {p1}, Lcom/xiaomi/camera/ui/layout/CenterAlignedLayoutManager;-><init>()V

    iget-object v0, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/C;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    new-instance p1, Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-direct {p1}, Landroidx/recyclerview/widget/DefaultItemAnimator;-><init>()V

    const-wide/16 v0, 0x96

    invoke-virtual {p1, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setChangeDuration(J)V

    invoke-virtual {p1, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setMoveDuration(J)V

    invoke-virtual {p1, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setAddDuration(J)V

    iget-object v0, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/C;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f080375

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/C;->mIconWidth:I

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    iput v5, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/C;->mIconHeight:I

    new-instance p1, Lcom/android/camera/dualvideo/remote/setupwizard/RemoteDeviceListAdapter;

    iget-object v3, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/SetupWizardScreen;->mRemoteDeviceList:Ljava/util/List;

    iget v4, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/C;->mIconWidth:I

    move-object v1, p1

    move-object v2, p0

    move-object v6, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/camera/dualvideo/remote/setupwizard/RemoteDeviceListAdapter;-><init>(Lcom/android/camera/dualvideo/remote/setupwizard/screen/SetupWizardScreen;Ljava/util/List;IILandroid/view/View$OnClickListener;)V

    iput-object p1, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/C;->mAdapter:Lcom/android/camera/dualvideo/remote/setupwizard/RemoteDeviceListAdapter;

    iget-object v0, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/C;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object p1, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/C;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Lcom/android/camera/dualvideo/remote/setupwizard/RemoteDeviceListAdapter$ItemDecoration;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/camera/dualvideo/remote/setupwizard/RemoteDeviceListAdapter$ItemDecoration;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    return-void
.end method
