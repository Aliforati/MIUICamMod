.class public Lcom/android/camera/dualvideo/DualVideoModuleBase$MyDualVideoRenderListener;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/camera/dualvideo/render/RenderManager$DualVideoRenderListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/dualvideo/DualVideoModuleBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyDualVideoRenderListener"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/dualvideo/DualVideoModuleBase;


# direct methods
.method public constructor <init>(Lcom/android/camera/dualvideo/DualVideoModuleBase;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase$MyDualVideoRenderListener;->this$0:Lcom/android/camera/dualvideo/DualVideoModuleBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic OooO00o(Lcom/android/camera/dualvideo/render/LayoutType;Lcom/android/camera/dualvideo/render/LayoutType;Lcom/android/camera/dualvideo/util/UserSelectData;)V
    .locals 1

    invoke-virtual {p2}, Lcom/android/camera/dualvideo/util/UserSelectData;->getmGridLayoutType()Lcom/android/camera/dualvideo/render/LayoutType;

    move-result-object v0

    if-ne v0, p0, :cond_0

    invoke-virtual {p2, p1}, Lcom/android/camera/dualvideo/util/UserSelectData;->setGridWindowLayoutType(Lcom/android/camera/dualvideo/render/LayoutType;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/android/camera/dualvideo/util/UserSelectData;->getmGridLayoutType()Lcom/android/camera/dualvideo/render/LayoutType;

    move-result-object v0

    if-ne v0, p1, :cond_1

    invoke-virtual {p2, p0}, Lcom/android/camera/dualvideo/util/UserSelectData;->setGridWindowLayoutType(Lcom/android/camera/dualvideo/render/LayoutType;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static synthetic OooO00o(Lcom/android/camera/dualvideo/util/DualVideoConfigManager$ConfigItem;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/camera/dualvideo/util/DualVideoConfigManager$ConfigItem;->getFaceType()Lcom/android/camera/dualvideo/render/FaceType;

    move-result-object p0

    sget-object v0, Lcom/android/camera/dualvideo/render/FaceType;->FACE_FRONT:Lcom/android/camera/dualvideo/render/FaceType;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic OooO0O0(Lcom/android/camera/dualvideo/util/DualVideoConfigManager$ConfigItem;)Lcom/android/camera/dualvideo/render/LayoutType;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/dualvideo/util/DualVideoConfigManager$ConfigItem;->mGridLayoutType:Lcom/android/camera/dualvideo/render/LayoutType;

    return-object p0
.end method

.method public static synthetic OooO0OO(Lcom/android/camera/dualvideo/util/DualVideoConfigManager$ConfigItem;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/camera/dualvideo/util/DualVideoConfigManager$ConfigItem;->getFaceType()Lcom/android/camera/dualvideo/render/FaceType;

    move-result-object p0

    sget-object v0, Lcom/android/camera/dualvideo/render/FaceType;->FACE_BACK:Lcom/android/camera/dualvideo/render/FaceType;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic OooO0Oo(Lcom/android/camera/dualvideo/util/DualVideoConfigManager$ConfigItem;)Lcom/android/camera/dualvideo/render/LayoutType;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/dualvideo/util/DualVideoConfigManager$ConfigItem;->mGridLayoutType:Lcom/android/camera/dualvideo/render/LayoutType;

    return-object p0
.end method


# virtual methods
.method public synthetic OooO00o(Lcom/android/camera/dualvideo/render/RenderManager;)V
    .locals 2

    invoke-virtual {p1}, Lcom/android/camera/dualvideo/render/RenderManager;->hasMiniComposeType()Z

    move-result p1

    iget-object v0, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase$MyDualVideoRenderListener;->this$0:Lcom/android/camera/dualvideo/DualVideoModuleBase;

    invoke-virtual {v0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase$MyDualVideoRenderListener;->this$0:Lcom/android/camera/dualvideo/DualVideoModuleBase;

    invoke-virtual {v0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->isRecordingPaused()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    const-string/jumbo v0, "value_preview_mini"

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "value_preview_equal"

    :goto_0
    const-string v1, "attr_compose_type"

    invoke-static {v1, v0}, Lcom/android/camera/statistic/CameraStatUtils;->trackDualVideoCommonAttr(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/statistic/CameraStatUtils;->mLayoutType:Ljava/lang/String;

    :cond_1
    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase$MyDualVideoRenderListener;->this$0:Lcom/android/camera/dualvideo/DualVideoModuleBase;

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase$MyDualVideoRenderListener;->this$0:Lcom/android/camera/dualvideo/DualVideoModuleBase;

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p1, v0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->notifyLayoutTypeToRemoteDevice(I)V

    return-void
.end method

.method public onAuxSourceImageAvailable()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase$MyDualVideoRenderListener;->this$0:Lcom/android/camera/dualvideo/DualVideoModuleBase;

    invoke-static {v0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->access$000(Lcom/android/camera/dualvideo/DualVideoModuleBase;)Lcom/android/camera/dualvideo/render/RenderTrigger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/dualvideo/render/RenderTrigger;->subFrameAvailable()V

    iget-object v0, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase$MyDualVideoRenderListener;->this$0:Lcom/android/camera/dualvideo/DualVideoModuleBase;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->access$102(Lcom/android/camera/dualvideo/DualVideoModuleBase;Z)Z

    iget-object v0, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase$MyDualVideoRenderListener;->this$0:Lcom/android/camera/dualvideo/DualVideoModuleBase;

    invoke-virtual {v0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->tryAnimBlackCover()V

    return-void
.end method

.method public onLayoutTypeChanged()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase$MyDualVideoRenderListener;->this$0:Lcom/android/camera/dualvideo/DualVideoModuleBase;

    invoke-virtual {v0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->getRenderManager()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LOooO0O0/OooO0OO/OooO00o/OooOOo/Oooo0;

    invoke-direct {v1, p0}, LOooO0O0/OooO0OO/OooO00o/OooOOo/Oooo0;-><init>(Lcom/android/camera/dualvideo/DualVideoModuleBase$MyDualVideoRenderListener;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onRenderRequestNeeded()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase$MyDualVideoRenderListener;->this$0:Lcom/android/camera/dualvideo/DualVideoModuleBase;

    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getGLView()Lcom/android/camera/ui/V6CameraGLSurfaceView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6CameraGLSurfaceView;->requestRender()V

    return-void
.end method

.method public onSwitchClicked()V
    .locals 5

    invoke-static {}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onSwitchClicked: "

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/camera/CameraSettings;->getDualVideoConfig()Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;->getSelectedData()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {}, Lcom/android/camera/dualvideo/util/DualVideoConfigManager;->instance()Lcom/android/camera/dualvideo/util/DualVideoConfigManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/dualvideo/util/DualVideoConfigManager;->getConfigs()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    sget-object v3, LOooO0O0/OooO0OO/OooO00o/OooOOo/Oooo00O;->OooO00o:LOooO0O0/OooO0OO/OooO00o/OooOOo/Oooo00O;

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v2

    sget-object v3, LOooO0O0/OooO0OO/OooO00o/OooOOo/Oooo0O0;->OooO00o:LOooO0O0/OooO0OO/OooO00o/OooOOo/Oooo0O0;

    invoke-virtual {v2, v3}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/dualvideo/render/LayoutType;

    invoke-virtual {v1}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    sget-object v4, LOooO0O0/OooO0OO/OooO00o/OooOOo/Oooo0OO;->OooO00o:LOooO0O0/OooO0OO/OooO00o/OooOOo/Oooo0OO;

    invoke-interface {v1, v4}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v1

    sget-object v4, LOooO0O0/OooO0OO/OooO00o/OooOOo/Oooo00o;->OooO00o:LOooO0O0/OooO0OO/OooO00o/OooOOo/Oooo00o;

    invoke-virtual {v1, v4}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/dualvideo/render/LayoutType;

    new-instance v3, LOooO0O0/OooO0OO/OooO00o/OooOOo/Oooo000;

    invoke-direct {v3, v2, v1}, LOooO0O0/OooO0OO/OooO00o/OooOOo/Oooo000;-><init>(Lcom/android/camera/dualvideo/render/LayoutType;Lcom/android/camera/dualvideo/render/LayoutType;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    iget-object v0, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase$MyDualVideoRenderListener;->this$0:Lcom/android/camera/dualvideo/DualVideoModuleBase;

    invoke-virtual {v0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->getRenderManager()Ljava/util/Optional;

    move-result-object v0

    sget-object v1, LOooO0O0/OooO0OO/OooO00o/OooOOo/o000OOo;->OooO00o:LOooO0O0/OooO0OO/OooO00o/OooOOo/o000OOo;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object v0, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase$MyDualVideoRenderListener;->this$0:Lcom/android/camera/dualvideo/DualVideoModuleBase;

    invoke-virtual {v0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->getRenderManager()Ljava/util/Optional;

    move-result-object v0

    sget-object v1, LOooO0O0/OooO0OO/OooO00o/OooOOo/o000000;->OooO00o:LOooO0O0/OooO0OO/OooO00o/OooOOo/o000000;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object v0, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase$MyDualVideoRenderListener;->this$0:Lcom/android/camera/dualvideo/DualVideoModuleBase;

    invoke-virtual {v0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->reStartCurrentModule()V

    return-void
.end method
