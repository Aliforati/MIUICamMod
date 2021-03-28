.class public Lcom/android/camera/dualvideo/remote/setupwizard/screen/C$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/dualvideo/remote/setupwizard/screen/C;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/dualvideo/remote/setupwizard/screen/C;


# direct methods
.method public constructor <init>(Lcom/android/camera/dualvideo/remote/setupwizard/screen/C;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/C$4;->this$0:Lcom/android/camera/dualvideo/remote/setupwizard/screen/C;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/C$4;->this$0:Lcom/android/camera/dualvideo/remote/setupwizard/screen/C;

    invoke-static {v0}, Lcom/android/camera/dualvideo/remote/setupwizard/screen/C;->access$200(Lcom/android/camera/dualvideo/remote/setupwizard/screen/C;)Landroid/app/AlertDialog;

    move-result-object v0

    const v1, 0x7f100722

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(I)V

    invoke-static {}, Lcom/android/camera/dualvideo/remote/RemoteOnlineController;->current()Lcom/android/camera/dualvideo/remote/RemoteOnlineController;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/C$4;->this$0:Lcom/android/camera/dualvideo/remote/setupwizard/screen/C;

    iget v1, v0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/SetupWizardScreen;->mSelectedRemoteDeviceId:I

    invoke-virtual {v0, v1}, Lcom/android/camera/dualvideo/remote/setupwizard/screen/SetupWizardScreen;->getRemoteDeviceById(I)Lcom/android/camera/dualvideo/remote/RemoteDevice;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x5

    iput v1, v0, Lcom/android/camera/dualvideo/remote/RemoteDevice;->connectivity:I

    iget-object v1, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/C$4;->this$0:Lcom/android/camera/dualvideo/remote/setupwizard/screen/C;

    invoke-virtual {v1, v0}, Lcom/android/camera/dualvideo/remote/setupwizard/screen/C;->onConnectivityStateChanged(Lcom/android/camera/dualvideo/remote/RemoteDevice;)V

    :cond_0
    return-void
.end method
