.class public Lcom/android/camera/dualvideo/remote/setupwizard/screen/C$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/dualvideo/remote/setupwizard/screen/C;->onPrepareDialog(Landroid/app/Dialog;)V
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

    iput-object p1, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/C$1;->this$0:Lcom/android/camera/dualvideo/remote/setupwizard/screen/C;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9

    iget-object p1, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/C$1;->this$0:Lcom/android/camera/dualvideo/remote/setupwizard/screen/C;

    iget v0, p1, Lcom/android/camera/dualvideo/remote/setupwizard/screen/SetupWizardScreen;->mSelectedRemoteDeviceId:I

    invoke-virtual {p1, v0}, Lcom/android/camera/dualvideo/remote/setupwizard/screen/SetupWizardScreen;->getRemoteDeviceById(I)Lcom/android/camera/dualvideo/remote/RemoteDevice;

    move-result-object p1

    iget-object v0, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/C$1;->this$0:Lcom/android/camera/dualvideo/remote/setupwizard/screen/C;

    iget v1, v0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/SetupWizardScreen;->mSelectedRemoteDeviceId:I

    const v2, 0x7f10029a

    const v3, 0x7f100296

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, -0x1

    if-eq v1, v6, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v0, v4}, Lcom/android/camera/dualvideo/remote/setupwizard/screen/C;->access$002(Lcom/android/camera/dualvideo/remote/setupwizard/screen/C;Z)Z

    iget-object v0, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/C$1;->this$0:Lcom/android/camera/dualvideo/remote/setupwizard/screen/C;

    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/C$1;->this$0:Lcom/android/camera/dualvideo/remote/setupwizard/screen/C;

    invoke-virtual {v6}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v6

    invoke-direct {v1, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v6, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/C$1;->this$0:Lcom/android/camera/dualvideo/remote/setupwizard/screen/C;

    const v7, 0x7f100723

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v8, p1, Lcom/android/camera/dualvideo/remote/RemoteDevice;->name:Ljava/lang/String;

    aput-object v8, v4, v5

    invoke-virtual {v6, v7, v4}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v4, Lcom/android/camera/dualvideo/remote/setupwizard/screen/C$1$4;

    invoke-direct {v4, p0, p1}, Lcom/android/camera/dualvideo/remote/setupwizard/screen/C$1$4;-><init>(Lcom/android/camera/dualvideo/remote/setupwizard/screen/C$1;Lcom/android/camera/dualvideo/remote/RemoteDevice;)V

    invoke-virtual {v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v1, Lcom/android/camera/dualvideo/remote/setupwizard/screen/C$1$3;

    invoke-direct {v1, p0}, Lcom/android/camera/dualvideo/remote/setupwizard/screen/C$1$3;-><init>(Lcom/android/camera/dualvideo/remote/setupwizard/screen/C$1;)V

    invoke-virtual {p1, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/camera/dualvideo/remote/setupwizard/screen/C;->access$102(Lcom/android/camera/dualvideo/remote/setupwizard/screen/C;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/C$1;->this$0:Lcom/android/camera/dualvideo/remote/setupwizard/screen/C;

    invoke-static {p1, v4}, Lcom/android/camera/dualvideo/remote/setupwizard/screen/C;->access$002(Lcom/android/camera/dualvideo/remote/setupwizard/screen/C;Z)Z

    iget-object p1, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/C$1;->this$0:Lcom/android/camera/dualvideo/remote/setupwizard/screen/C;

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/C$1;->this$0:Lcom/android/camera/dualvideo/remote/setupwizard/screen/C;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/C$1;->this$0:Lcom/android/camera/dualvideo/remote/setupwizard/screen/C;

    const v4, 0x7f100724

    invoke-virtual {v1, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/camera/dualvideo/remote/setupwizard/screen/C$1$2;

    invoke-direct {v1, p0}, Lcom/android/camera/dualvideo/remote/setupwizard/screen/C$1$2;-><init>(Lcom/android/camera/dualvideo/remote/setupwizard/screen/C$1;)V

    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/camera/dualvideo/remote/setupwizard/screen/C$1$1;

    invoke-direct {v1, p0}, Lcom/android/camera/dualvideo/remote/setupwizard/screen/C$1$1;-><init>(Lcom/android/camera/dualvideo/remote/setupwizard/screen/C$1;)V

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/camera/dualvideo/remote/setupwizard/screen/C;->access$102(Lcom/android/camera/dualvideo/remote/setupwizard/screen/C;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    :goto_1
    iget-object p1, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/C$1;->this$0:Lcom/android/camera/dualvideo/remote/setupwizard/screen/C;

    invoke-static {p1}, Lcom/android/camera/dualvideo/remote/setupwizard/screen/C;->access$100(Lcom/android/camera/dualvideo/remote/setupwizard/screen/C;)Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/app/AlertDialog;->setCancelable(Z)V

    iget-object p1, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/C$1;->this$0:Lcom/android/camera/dualvideo/remote/setupwizard/screen/C;

    invoke-static {p1}, Lcom/android/camera/dualvideo/remote/setupwizard/screen/C;->access$100(Lcom/android/camera/dualvideo/remote/setupwizard/screen/C;)Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    iget-object p1, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/C$1;->this$0:Lcom/android/camera/dualvideo/remote/setupwizard/screen/C;

    invoke-static {p1}, Lcom/android/camera/dualvideo/remote/setupwizard/screen/C;->access$100(Lcom/android/camera/dualvideo/remote/setupwizard/screen/C;)Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method
