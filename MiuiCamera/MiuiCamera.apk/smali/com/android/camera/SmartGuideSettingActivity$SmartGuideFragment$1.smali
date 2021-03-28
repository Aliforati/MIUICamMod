.class public Lcom/android/camera/SmartGuideSettingActivity$SmartGuideFragment$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/SmartGuideSettingActivity$SmartGuideFragment;->onPreferenceClick(Landroidx/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/SmartGuideSettingActivity$SmartGuideFragment;


# direct methods
.method public constructor <init>(Lcom/android/camera/SmartGuideSettingActivity$SmartGuideFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/SmartGuideSettingActivity$SmartGuideFragment$1;->this$0:Lcom/android/camera/SmartGuideSettingActivity$SmartGuideFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object p1, p0, Lcom/android/camera/SmartGuideSettingActivity$SmartGuideFragment$1;->this$0:Lcom/android/camera/SmartGuideSettingActivity$SmartGuideFragment;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/camera/SmartGuideSettingActivity$SmartGuideFragment;->access$002(Lcom/android/camera/SmartGuideSettingActivity$SmartGuideFragment;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    return-void
.end method
