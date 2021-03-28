.class public Lcom/android/camera/dualvideo/remote/setupwizard/screen/C$1$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/dualvideo/remote/setupwizard/screen/C$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/android/camera/dualvideo/remote/setupwizard/screen/C$1;

.field public final synthetic val$device:Lcom/android/camera/dualvideo/remote/RemoteDevice;


# direct methods
.method public constructor <init>(Lcom/android/camera/dualvideo/remote/setupwizard/screen/C$1;Lcom/android/camera/dualvideo/remote/RemoteDevice;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/C$1$4;->this$1:Lcom/android/camera/dualvideo/remote/setupwizard/screen/C$1;

    iput-object p2, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/C$1$4;->val$device:Lcom/android/camera/dualvideo/remote/RemoteDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/C$1$4;->this$1:Lcom/android/camera/dualvideo/remote/setupwizard/screen/C$1;

    iget-object p1, p1, Lcom/android/camera/dualvideo/remote/setupwizard/screen/C$1;->this$0:Lcom/android/camera/dualvideo/remote/setupwizard/screen/C;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/android/camera/dualvideo/remote/setupwizard/screen/C;->access$002(Lcom/android/camera/dualvideo/remote/setupwizard/screen/C;Z)Z

    iget-object p1, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/C$1$4;->this$1:Lcom/android/camera/dualvideo/remote/setupwizard/screen/C$1;

    iget-object p1, p1, Lcom/android/camera/dualvideo/remote/setupwizard/screen/C$1;->this$0:Lcom/android/camera/dualvideo/remote/setupwizard/screen/C;

    iget-object p2, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/C$1$4;->val$device:Lcom/android/camera/dualvideo/remote/RemoteDevice;

    invoke-virtual {p1, p2}, Lcom/android/camera/dualvideo/remote/setupwizard/screen/C;->onConnectivityStateChanged(Lcom/android/camera/dualvideo/remote/RemoteDevice;)V

    return-void
.end method
