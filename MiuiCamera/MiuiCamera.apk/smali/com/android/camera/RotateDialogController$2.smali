.class public Lcom/android/camera/RotateDialogController$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/RotateDialogController;->showAlertDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/RotateDialogController;

.field public final synthetic val$r2:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/android/camera/RotateDialogController;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/RotateDialogController$2;->this$0:Lcom/android/camera/RotateDialogController;

    iput-object p2, p0, Lcom/android/camera/RotateDialogController$2;->val$r2:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/android/camera/RotateDialogController$2;->val$r2:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    iget-object p1, p0, Lcom/android/camera/RotateDialogController$2;->this$0:Lcom/android/camera/RotateDialogController;

    invoke-virtual {p1}, Lcom/android/camera/RotateDialogController;->dismissDialog()V

    return-void
.end method
