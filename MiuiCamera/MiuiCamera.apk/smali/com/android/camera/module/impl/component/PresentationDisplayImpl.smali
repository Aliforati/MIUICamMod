.class public Lcom/android/camera/module/impl/component/PresentationDisplayImpl;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/camera/protocol/ModeProtocol$PresentationDisplay;


# static fields
.field public static final MIUI_MULTI_DMS_NAME:Ljava/lang/String; = "miui_multi_display"

.field public static final TAG:Ljava/lang/String; = "PresentationDisplayImpl"


# instance fields
.field public SUB_SCREEN_DISPLAY_NUM:I

.field public mActivity:Lcom/android/camera/Camera;

.field public mPresentationDisplay:Lcom/android/camera/PresentationDisplay;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/ActivityBase;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/camera/module/impl/component/PresentationDisplayImpl;->SUB_SCREEN_DISPLAY_NUM:I

    check-cast p1, Lcom/android/camera/Camera;

    iput-object p1, p0, Lcom/android/camera/module/impl/component/PresentationDisplayImpl;->mActivity:Lcom/android/camera/Camera;

    iget-object p1, p0, Lcom/android/camera/module/impl/component/PresentationDisplayImpl;->mPresentationDisplay:Lcom/android/camera/PresentationDisplay;

    if-nez p1, :cond_0

    new-instance p1, Lcom/android/camera/PresentationDisplay;

    iget-object v0, p0, Lcom/android/camera/module/impl/component/PresentationDisplayImpl;->mActivity:Lcom/android/camera/Camera;

    invoke-direct {p1, v0}, Lcom/android/camera/PresentationDisplay;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/camera/module/impl/component/PresentationDisplayImpl;->mPresentationDisplay:Lcom/android/camera/PresentationDisplay;

    :cond_0
    return-void
.end method

.method public static create(Lcom/android/camera/ActivityBase;)Lcom/android/camera/module/impl/component/PresentationDisplayImpl;
    .locals 1

    new-instance v0, Lcom/android/camera/module/impl/component/PresentationDisplayImpl;

    invoke-direct {v0, p0}, Lcom/android/camera/module/impl/component/PresentationDisplayImpl;-><init>(Lcom/android/camera/ActivityBase;)V

    return-object v0
.end method

.method private getActivity()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/android/camera/Camera;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/camera/module/impl/component/PresentationDisplayImpl;->mActivity:Lcom/android/camera/Camera;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public cancel()V
    .locals 2

    invoke-static {}, LOooO0O0/OooO0o0/OooO00o/OooO0O0;->o0O00O()LOooO0O0/OooO0o0/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0o0/OooO00o/OooO0O0;->o00OO0oo()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/PresentationDisplayImpl;->getActivity()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/impl/component/PresentationDisplayImpl;->mPresentationDisplay:Lcom/android/camera/PresentationDisplay;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/app/Presentation;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/module/impl/component/PresentationDisplayImpl;->mPresentationDisplay:Lcom/android/camera/PresentationDisplay;

    invoke-virtual {v0}, Lcom/android/camera/PresentationDisplay;->dismiss()V

    :cond_2
    invoke-static {}, Lcom/android/camera/Display;->closePresentationDisplay()V

    sget-object v0, Lcom/android/camera/module/impl/component/PresentationDisplayImpl;->TAG:Ljava/lang/String;

    const-string v1, "presentation display cancel"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public getESPRatioSize(I)F
    .locals 1

    const/16 v0, 0xa2

    if-eq p1, v0, :cond_1

    const/16 v0, 0xb4

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigRatio()Lcom/android/camera/data/data/config/ComponentConfigRatio;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera/data/data/config/ComponentConfigRatio;->getPictureSizeRatioString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/camera/Util;->getRatio(Ljava/lang/String;)F

    move-result p1

    return p1

    :cond_1
    :goto_0
    const p1, 0x3fe38e38

    return p1
.end method

.method public isModeSupportPresentation()Z
    .locals 2

    invoke-static {}, LOooO0O0/OooO0o0/OooO00o/OooO0O0;->o0O00O()LOooO0O0/OooO0o0/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0o0/OooO00o/OooO0O0;->o00OO0oo()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Lcom/android/camera/Display;->getDisplayFoldState()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public registerProtocol()V
    .locals 2

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0x3b1

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->attachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    return-void
.end method

.method public show(I)V
    .locals 2

    invoke-static {}, LOooO0O0/OooO0o0/OooO00o/OooO0O0;->o0O00O()LOooO0O0/OooO0o0/OooO00o/OooO0O0;

    move-result-object p1

    invoke-virtual {p1}, LOooO0O0/OooO0o0/OooO00o/OooO0O0;->o00OO0oo()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/PresentationDisplayImpl;->getActivity()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Optional;->isPresent()Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/PresentationDisplayImpl;->isModeSupportPresentation()Z

    move-result p1

    if-nez p1, :cond_2

    return-void

    :cond_2
    invoke-static {}, Lcom/android/camera/CameraSettings;->isESPDisplayOn()Z

    move-result p1

    if-nez p1, :cond_3

    return-void

    :cond_3
    iget-object p1, p0, Lcom/android/camera/module/impl/component/PresentationDisplayImpl;->mPresentationDisplay:Lcom/android/camera/PresentationDisplay;

    if-nez p1, :cond_4

    return-void

    :cond_4
    invoke-static {}, Lcom/android/camera/Display;->openPresentationDisplay()V

    iget-object p1, p0, Lcom/android/camera/module/impl/component/PresentationDisplayImpl;->mPresentationDisplay:Lcom/android/camera/PresentationDisplay;

    invoke-virtual {p1}, Landroid/app/Presentation;->isShowing()Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/android/camera/module/impl/component/PresentationDisplayImpl;->mPresentationDisplay:Lcom/android/camera/PresentationDisplay;

    invoke-virtual {p1}, Landroid/app/Presentation;->cancel()V

    :cond_5
    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/PresentationDisplayImpl;->updateTextureSize()V

    iget-object p1, p0, Lcom/android/camera/module/impl/component/PresentationDisplayImpl;->mPresentationDisplay:Lcom/android/camera/PresentationDisplay;

    invoke-virtual {p1}, Lcom/android/camera/PresentationDisplay;->show()V

    sget-object p1, Lcom/android/camera/module/impl/component/PresentationDisplayImpl;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "presentation display show:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/camera/module/impl/component/PresentationDisplayImpl;->getActivity()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getCurrentModuleIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public unRegisterProtocol()V
    .locals 2

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0x3b1

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->detachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    return-void
.end method

.method public updateTextureSize()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/module/impl/component/PresentationDisplayImpl;->mPresentationDisplay:Lcom/android/camera/PresentationDisplay;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/camera/PresentationDisplay;->updateTextureSize()V

    :cond_0
    return-void
.end method
