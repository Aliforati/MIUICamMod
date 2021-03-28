.class public Lcom/android/camera/dualvideo/remote/setupwizard/screen/C$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/dualvideo/remote/setupwizard/screen/C;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/dualvideo/remote/setupwizard/screen/C;

.field public final synthetic val$device:Lcom/android/camera/dualvideo/remote/RemoteDevice;

.field public final synthetic val$holder:Lcom/android/camera/dualvideo/remote/setupwizard/RemoteDeviceListAdapter$ViewHolder;


# direct methods
.method public constructor <init>(Lcom/android/camera/dualvideo/remote/setupwizard/screen/C;Lcom/android/camera/dualvideo/remote/setupwizard/RemoteDeviceListAdapter$ViewHolder;Lcom/android/camera/dualvideo/remote/RemoteDevice;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/C$2;->this$0:Lcom/android/camera/dualvideo/remote/setupwizard/screen/C;

    iput-object p2, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/C$2;->val$holder:Lcom/android/camera/dualvideo/remote/setupwizard/RemoteDeviceListAdapter$ViewHolder;

    iput-object p3, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/C$2;->val$device:Lcom/android/camera/dualvideo/remote/RemoteDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    invoke-static {}, Lcom/android/camera/dualvideo/remote/RemoteOnlineController;->current()Lcom/android/camera/dualvideo/remote/RemoteOnlineController;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p2, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/C$2;->this$0:Lcom/android/camera/dualvideo/remote/setupwizard/screen/C;

    invoke-static {p2}, Lcom/android/camera/dualvideo/remote/setupwizard/screen/C;->access$200(Lcom/android/camera/dualvideo/remote/setupwizard/screen/C;)Landroid/app/AlertDialog;

    move-result-object p2

    const v0, 0x7f100722

    invoke-virtual {p2, v0}, Landroid/app/AlertDialog;->setTitle(I)V

    iget-object p2, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/C$2;->this$0:Lcom/android/camera/dualvideo/remote/setupwizard/screen/C;

    iget-object v0, p2, Lcom/android/camera/dualvideo/remote/setupwizard/screen/SetupWizardScreen;->mHandler:Landroid/os/Handler;

    invoke-static {p2}, Lcom/android/camera/dualvideo/remote/setupwizard/screen/C;->access$300(Lcom/android/camera/dualvideo/remote/setupwizard/screen/C;)Ljava/lang/Runnable;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p2, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/C$2;->this$0:Lcom/android/camera/dualvideo/remote/setupwizard/screen/C;

    iget-object v0, p2, Lcom/android/camera/dualvideo/remote/setupwizard/screen/SetupWizardScreen;->mHandler:Landroid/os/Handler;

    invoke-static {p2}, Lcom/android/camera/dualvideo/remote/setupwizard/screen/C;->access$400(Lcom/android/camera/dualvideo/remote/setupwizard/screen/C;)Ljava/lang/Runnable;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p2, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/C$2;->this$0:Lcom/android/camera/dualvideo/remote/setupwizard/screen/C;

    const/4 v0, -0x1

    iput v0, p2, Lcom/android/camera/dualvideo/remote/setupwizard/screen/SetupWizardScreen;->mSelectedRemoteDeviceId:I

    iget-object p2, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/C$2;->val$holder:Lcom/android/camera/dualvideo/remote/setupwizard/RemoteDeviceListAdapter$ViewHolder;

    iget p2, p2, Lcom/android/camera/dualvideo/remote/setupwizard/RemoteDeviceListAdapter$ViewHolder;->mDeviceId:I

    invoke-virtual {p1, p2}, Lcom/android/camera/dualvideo/remote/RemoteOnlineController;->disconnect(I)V

    iget-object p2, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/C$2;->val$device:Lcom/android/camera/dualvideo/remote/RemoteDevice;

    const/4 v0, 0x0

    iput v0, p2, Lcom/android/camera/dualvideo/remote/RemoteDevice;->connectivity:I

    iget-object p2, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/C$2;->this$0:Lcom/android/camera/dualvideo/remote/setupwizard/screen/C;

    invoke-static {p2, v0}, Lcom/android/camera/dualvideo/remote/setupwizard/screen/C;->access$002(Lcom/android/camera/dualvideo/remote/setupwizard/screen/C;Z)Z

    iget-object p2, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/C$2;->val$device:Lcom/android/camera/dualvideo/remote/RemoteDevice;

    invoke-virtual {p1, p2, v0}, Lcom/android/camera/dualvideo/remote/RemoteOnlineController;->setConnectionSuspended(Lcom/android/camera/dualvideo/remote/RemoteDevice;Z)V

    :cond_0
    return-void
.end method
