.class public Lcom/android/camera/fragment/top/FragmentTopAlert$18;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/fragment/top/FragmentTopAlert;->showCloseConfirm()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/fragment/top/FragmentTopAlert;


# direct methods
.method public constructor <init>(Lcom/android/camera/fragment/top/FragmentTopAlert;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert$18;->this$0:Lcom/android/camera/fragment/top/FragmentTopAlert;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert$18;->this$0:Lcom/android/camera/fragment/top/FragmentTopAlert;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->access$402(Lcom/android/camera/fragment/top/FragmentTopAlert;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    return-void
.end method
