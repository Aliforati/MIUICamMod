.class public Lcom/android/camera/module/LiveModuleSubVV$1$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/module/LiveModuleSubVV$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/android/camera/module/LiveModuleSubVV$1;


# direct methods
.method public constructor <init>(Lcom/android/camera/module/LiveModuleSubVV$1;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/module/LiveModuleSubVV$1$1;->this$1:Lcom/android/camera/module/LiveModuleSubVV$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object p1, p0, Lcom/android/camera/module/LiveModuleSubVV$1$1;->this$1:Lcom/android/camera/module/LiveModuleSubVV$1;

    iget-object p1, p1, Lcom/android/camera/module/LiveModuleSubVV$1;->this$0:Lcom/android/camera/module/LiveModuleSubVV;

    iget-object p1, p1, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    new-instance p2, Landroid/content/Intent;

    const-string v0, "android.settings.DATE_SETTINGS"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
