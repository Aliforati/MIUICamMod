.class public Lcom/android/camera/fragment/settings/CameraPreferenceFragment$7;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/fragment/settings/CameraPreferenceFragment;->showCTADialog(Landroid/app/Fragment;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/fragment/settings/CameraPreferenceFragment;


# direct methods
.method public constructor <init>(Lcom/android/camera/fragment/settings/CameraPreferenceFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/fragment/settings/CameraPreferenceFragment$7;->this$0:Lcom/android/camera/fragment/settings/CameraPreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    sget-object v0, Lcom/android/camera/fragment/settings/CameraPreferenceFragment;->TAG:Ljava/lang/String;

    const-string v1, "onClick LocationAccess PositiveButton"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/camera/statistic/CameraStatUtils;->trackCTADialogAgree()V

    iget-object v0, p0, Lcom/android/camera/fragment/settings/CameraPreferenceFragment$7;->this$0:Lcom/android/camera/fragment/settings/CameraPreferenceFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/camera/fragment/settings/CameraPreferenceFragment;->access$202(Lcom/android/camera/fragment/settings/CameraPreferenceFragment;Z)Z

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->updateCTAPreference(Z)V

    return-void
.end method
