.class public Lcom/android/camera/dualvideo/remote/setupwizard/screen/S$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/dualvideo/remote/setupwizard/screen/S;->onPrepareDialog(Landroid/app/Dialog;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/dualvideo/remote/setupwizard/screen/S;


# direct methods
.method public constructor <init>(Lcom/android/camera/dualvideo/remote/setupwizard/screen/S;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/S$2;->this$0:Lcom/android/camera/dualvideo/remote/setupwizard/screen/S;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/S$2;->this$0:Lcom/android/camera/dualvideo/remote/setupwizard/screen/S;

    invoke-static {p1}, Lcom/android/camera/dualvideo/remote/setupwizard/screen/S;->access$300(Lcom/android/camera/dualvideo/remote/setupwizard/screen/S;)Landroid/app/AlertDialog;

    move-result-object p1

    const v0, 0x7f10072b

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->setTitle(I)V

    iget-object p1, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/S$2;->this$0:Lcom/android/camera/dualvideo/remote/setupwizard/screen/S;

    invoke-static {p1}, Lcom/android/camera/dualvideo/remote/setupwizard/screen/S;->access$400(Lcom/android/camera/dualvideo/remote/setupwizard/screen/S;)Landroid/widget/ImageView;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/S$2;->this$0:Lcom/android/camera/dualvideo/remote/setupwizard/screen/S;

    invoke-static {p1}, Lcom/android/camera/dualvideo/remote/setupwizard/screen/S;->access$300(Lcom/android/camera/dualvideo/remote/setupwizard/screen/S;)Landroid/app/AlertDialog;

    move-result-object p1

    const/4 v1, -0x1

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    invoke-static {}, Lcom/android/camera/dualvideo/remote/RemoteOnlineController;->current()Lcom/android/camera/dualvideo/remote/RemoteOnlineController;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/camera/dualvideo/remote/RemoteOnlineController;->stopNetworkServer()V

    invoke-virtual {p1}, Lcom/android/camera/dualvideo/remote/RemoteOnlineController;->startNetworkServer()V

    :cond_0
    iget-object p1, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/S$2;->this$0:Lcom/android/camera/dualvideo/remote/setupwizard/screen/S;

    invoke-static {p1}, Lcom/android/camera/dualvideo/remote/setupwizard/screen/S;->access$600(Lcom/android/camera/dualvideo/remote/setupwizard/screen/S;)Landroid/widget/ImageView;

    move-result-object p1

    iget-object v0, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/S$2;->this$0:Lcom/android/camera/dualvideo/remote/setupwizard/screen/S;

    invoke-static {v0}, Lcom/android/camera/dualvideo/remote/setupwizard/screen/S;->access$500(Lcom/android/camera/dualvideo/remote/setupwizard/screen/S;)Landroid/view/animation/RotateAnimation;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method
