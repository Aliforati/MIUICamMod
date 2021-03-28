.class public Lcom/android/camera/dualvideo/remote/setupwizard/screen/H$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/dualvideo/remote/setupwizard/screen/H;->onPrepareDialog(Landroid/app/Dialog;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/dualvideo/remote/setupwizard/screen/H;


# direct methods
.method public constructor <init>(Lcom/android/camera/dualvideo/remote/setupwizard/screen/H;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/H$3;->this$0:Lcom/android/camera/dualvideo/remote/setupwizard/screen/H;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/H$3;->this$0:Lcom/android/camera/dualvideo/remote/setupwizard/screen/H;

    invoke-virtual {p1}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    iget-object p1, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/H$3;->this$0:Lcom/android/camera/dualvideo/remote/setupwizard/screen/H;

    iget-object p1, p1, Lcom/android/camera/dualvideo/remote/setupwizard/screen/SetupWizardScreen;->mSetupWizard:Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard;

    sget-object v0, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard$Type;->SCAN:Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard$Type;

    invoke-virtual {p1, v0}, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard;->show(Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard$Type;)V

    return-void
.end method
