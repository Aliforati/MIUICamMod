.class public Lcom/android/camera/SmartGuideSettingActivity$SmartGuideFragment$2;
.super Landroid/os/AsyncTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/SmartGuideSettingActivity$SmartGuideFragment;->installQRCodeReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/SmartGuideSettingActivity$SmartGuideFragment;


# direct methods
.method public constructor <init>(Lcom/android/camera/SmartGuideSettingActivity$SmartGuideFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/SmartGuideSettingActivity$SmartGuideFragment$2;->this$0:Lcom/android/camera/SmartGuideSettingActivity$SmartGuideFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/camera/SmartGuideSettingActivity$SmartGuideFragment$2;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 4

    sget-object p1, Lcom/android/camera/SmartGuideSettingActivity$SmartGuideFragment;->TAG:Ljava/lang/String;

    const-string v0, "installQRCode..."

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/camera/SmartGuideSettingActivity$SmartGuideFragment$2;->this$0:Lcom/android/camera/SmartGuideSettingActivity$SmartGuideFragment;

    invoke-virtual {p1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    iget-object v0, p0, Lcom/android/camera/SmartGuideSettingActivity$SmartGuideFragment$2;->this$0:Lcom/android/camera/SmartGuideSettingActivity$SmartGuideFragment;

    invoke-static {v0}, Lcom/android/camera/SmartGuideSettingActivity$SmartGuideFragment;->access$100(Lcom/android/camera/SmartGuideSettingActivity$SmartGuideFragment;)Lcom/android/camera/lib/compatibility/util/CompatibilityUtils$PackageInstallerListener;

    move-result-object v0

    const-string v1, "com.xiaomi.scanner"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {p1, v1, v0, v2, v3}, Lcom/android/camera/Util;->installPackage(Landroid/content/Context;Ljava/lang/String;Lcom/android/camera/lib/compatibility/util/CompatibilityUtils$PackageInstallerListener;ZZ)V

    const/4 p1, 0x0

    return-object p1
.end method
