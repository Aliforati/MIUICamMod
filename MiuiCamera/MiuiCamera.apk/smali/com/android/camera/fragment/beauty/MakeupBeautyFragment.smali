.class public Lcom/android/camera/fragment/beauty/MakeupBeautyFragment;
.super Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;
.source ""


# static fields
.field public static final TAG:Ljava/lang/String; = "MakeupBeautyFragment"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getClassString()Ljava/lang/String;
    .locals 1

    const-class v0, Lcom/android/camera/fragment/beauty/MakeupBeautyFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getShineType()Ljava/lang/String;
    .locals 1

    const-string v0, "5"

    return-object v0
.end method

.method public initExtraType()V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mAlphaElement:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mBetaElement:I

    return-void
.end method

.method public onAdapterItemClick(Lcom/android/camera/data/data/TypeItem;)V
    .locals 4

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xb4

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$MakeupProtocol;

    if-eqz v0, :cond_0

    iget-object v1, p1, Lcom/android/camera/data/data/TypeItem;->mKeyOrType:Ljava/lang/String;

    iget v2, p1, Lcom/android/camera/data/data/TypeItem;->mDisplayNameRes:I

    const/4 v3, 0x1

    invoke-interface {v0, v1, v2, v3}, Lcom/android/camera/protocol/ModeProtocol$MakeupProtocol;->onMakeupItemSelected(Ljava/lang/String;IZ)V

    :cond_0
    iget-object p1, p1, Lcom/android/camera/data/data/TypeItem;->mKeyOrType:Ljava/lang/String;

    const-string v0, "5"

    invoke-static {v0, p1}, Lcom/android/camera/statistic/CameraStatUtils;->trackBeautyClick(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onClearClick()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "attr_operate_state"

    const-string v2, "makeup_clear"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "key_beauty_face"

    invoke-static {v1, v0}, Lcom/android/camera/statistic/MistatsWrapper;->mistatEvent(Ljava/lang/String;Ljava/util/Map;)V

    invoke-static {}, Lcom/android/camera/CameraSettings;->resetEyeLight()V

    invoke-static {}, Lcom/android/camera/fragment/beauty/ShineHelper;->clearBeauty()V

    invoke-virtual {p0}, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->selectFirstItem()V

    return-void
.end method

.method public onResetClick()V
    .locals 2

    invoke-static {}, Lcom/android/camera/CameraSettings;->resetEyeLight()V

    invoke-static {}, Lcom/android/camera/fragment/beauty/ShineHelper;->resetBeauty()V

    invoke-virtual {p0}, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->selectFirstItem()V

    const-string v0, "5"

    const-string v1, "RESET"

    invoke-static {v0, v1}, Lcom/android/camera/statistic/CameraStatUtils;->trackBeautyClick(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1003a0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->toast(Ljava/lang/String;)V

    return-void
.end method
