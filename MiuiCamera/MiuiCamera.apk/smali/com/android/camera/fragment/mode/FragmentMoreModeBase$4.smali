.class public Lcom/android/camera/fragment/mode/FragmentMoreModeBase$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/fragment/mode/FragmentMoreModeBase;->showDownloadCancelDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/fragment/mode/FragmentMoreModeBase;


# direct methods
.method public constructor <init>(Lcom/android/camera/fragment/mode/FragmentMoreModeBase;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/fragment/mode/FragmentMoreModeBase$4;->this$0:Lcom/android/camera/fragment/mode/FragmentMoreModeBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object p1, p0, Lcom/android/camera/fragment/mode/FragmentMoreModeBase$4;->this$0:Lcom/android/camera/fragment/mode/FragmentMoreModeBase;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/camera/fragment/mode/FragmentMoreModeBase;->access$202(Lcom/android/camera/fragment/mode/FragmentMoreModeBase;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    return-void
.end method
