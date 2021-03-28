.class public Lcom/android/camera/dualvideo/render/RenderManager;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/camera/SurfaceTextureScreenNail$ExternalFrameProcessor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/dualvideo/render/RenderManager$DualVideoRenderListener;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "RenderManager"


# instance fields
.field public mBlurRect:Landroid/graphics/Rect;

.field public mCameraItemManager:Lcom/android/camera/dualvideo/render/CameraItemManager;

.field public mCanvas:Lcom/android/gallery3d/ui/GLCanvas;

.field public mCaptureResult:Landroid/hardware/camera2/CaptureResult;

.field public mDrawBlur:Z

.field public mJpegCallback:Lcom/android/camera/dualvideo/DualVideoRecordModule$JpegPictureCallback;

.field public mListener:Lcom/android/camera/dualvideo/render/RenderManager$DualVideoRenderListener;

.field public mMainDrawAttribute:Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

.field public final mMiscTexManager:Lcom/android/camera/dualvideo/render/MiscTextureManager;

.field public mNeedRecording:Z

.field public mNeedUpdateBlurTex:Z

.field public final mRecordRenderHandler:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/camera/module/encoder/RenderHandler;",
            ">;"
        }
    .end annotation
.end field

.field public mRenderHandler:Landroid/os/Handler;

.field public mRenderHandlerThread:Landroid/os/HandlerThread;

.field public final mRenderLock:Ljava/lang/Object;

.field public mRenderSources:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/camera/dualvideo/render/RenderSource;",
            ">;"
        }
    .end annotation
.end field

.field public mResources:Landroid/content/res/Resources;

.field public final mSnapAnimDualVideoTimer:Lcom/android/camera/dualvideo/render/DualVideoTimer;

.field public mSnapOrientation:I

.field public final mSnapPending:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public mSnapReader:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/media/ImageReader;",
            ">;"
        }
    .end annotation
.end field

.field public mSnapRenderHandler:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/camera/module/encoder/RenderHandler;",
            ">;"
        }
    .end annotation
.end field

.field public mStatCaptureTimes:I

.field public final mUpdateBlurConditionVar:Landroid/os/ConditionVariable;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mRecordRenderHandler:Landroid/util/SparseArray;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mSnapReader:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mSnapRenderHandler:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/camera/dualvideo/render/DualVideoTimer;

    invoke-direct {v0}, Lcom/android/camera/dualvideo/render/DualVideoTimer;-><init>()V

    iput-object v0, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mSnapAnimDualVideoTimer:Lcom/android/camera/dualvideo/render/DualVideoTimer;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mNeedRecording:Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mRenderSources:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mRenderLock:Ljava/lang/Object;

    iput-boolean v0, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mNeedUpdateBlurTex:Z

    new-instance v1, Landroid/os/ConditionVariable;

    invoke-direct {v1}, Landroid/os/ConditionVariable;-><init>()V

    iput-object v1, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mUpdateBlurConditionVar:Landroid/os/ConditionVariable;

    new-instance v1, Lcom/android/camera/dualvideo/render/MiscTextureManager;

    invoke-direct {v1}, Lcom/android/camera/dualvideo/render/MiscTextureManager;-><init>()V

    iput-object v1, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mMiscTexManager:Lcom/android/camera/dualvideo/render/MiscTextureManager;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mSnapPending:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput v0, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mSnapOrientation:I

    iput v0, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mStatCaptureTimes:I

    return-void
.end method

.method public static synthetic OooO00o(Lcom/android/camera/dualvideo/render/CameraItemManager;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/camera/dualvideo/render/CameraItemManager;->updateTextureId()V

    return-void
.end method

.method public static synthetic OooO00o(Lcom/android/camera/dualvideo/util/RenderSourceType;Landroid/util/Size;Lcom/android/camera/dualvideo/render/RenderSource;)V
    .locals 1

    invoke-interface {p2}, Lcom/android/camera/dualvideo/render/RenderSource;->getSourceType()Lcom/android/camera/dualvideo/util/RenderSourceType;

    move-result-object v0

    if-ne v0, p0, :cond_0

    invoke-interface {p2, p1}, Lcom/android/camera/dualvideo/render/RenderSource;->prepare(Landroid/util/Size;)V

    sget-object p1, Lcom/android/camera/dualvideo/util/RenderSourceType;->REMOTE_SOURCE:Lcom/android/camera/dualvideo/util/RenderSourceType;

    if-ne p0, p1, :cond_0

    invoke-interface {p2}, Lcom/android/camera/dualvideo/render/RenderSource;->makeDrawable()V

    :cond_0
    return-void
.end method

.method public static synthetic OooO00o(Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;)V
    .locals 1

    sget-object v0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction$BackgroundType;->GRAY:Lcom/android/camera/fragment/bottom/action/FragmentBottomAction$BackgroundType;

    invoke-interface {p0, v0}, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;->setBackgroundColor(Lcom/android/camera/fragment/bottom/action/FragmentBottomAction$BackgroundType;)V

    return-void
.end method

.method public static synthetic OooO00o(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/dualvideo/render/RenderSource;)V
    .locals 0

    invoke-interface {p1, p0}, Lcom/android/camera/dualvideo/render/RenderSource;->attachToGL(Lcom/android/gallery3d/ui/GLCanvas;)V

    return-void
.end method

.method public static synthetic OooO00o(Ljava/lang/StringBuilder;Lcom/android/camera/dualvideo/render/CameraItemInterface;)V
    .locals 1

    sget-object v0, Lcom/android/camera/dualvideo/render/ContentType;->CONTENT_PREVIEW:Lcom/android/camera/dualvideo/render/ContentType;

    invoke-interface {p1, v0}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->getRenderAttri(Lcom/android/camera/dualvideo/render/ContentType;)Lcom/android/camera/effect/draw_mode/DrawRectShapeAttributeBase;

    move-result-object p1

    check-cast p1, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    const-string v0, " id: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;->mExtTexture:Lcom/android/gallery3d/ui/ExtTexture;

    invoke-virtual {p1}, Lcom/android/gallery3d/ui/BasicTexture;->getId()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    return-void
.end method

.method public static synthetic OooO00o(Ljava/util/List;Lcom/android/camera/module/encoder/RenderHandler;)V
    .locals 0

    invoke-virtual {p1, p0}, Lcom/android/camera/module/encoder/RenderHandler;->draw(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic OooO00o(FFLcom/android/camera/dualvideo/render/CameraItemInterface;)Z
    .locals 1

    sget-object v0, Lcom/android/camera/dualvideo/render/ContentType;->CONTENT_PREVIEW:Lcom/android/camera/dualvideo/render/ContentType;

    invoke-interface {p2, v0}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->getRenderAttri(Lcom/android/camera/dualvideo/render/ContentType;)Lcom/android/camera/effect/draw_mode/DrawRectShapeAttributeBase;

    move-result-object v0

    iget-object v0, v0, Lcom/android/camera/effect/draw_mode/DrawRectShapeAttributeBase;->mDrawRect:Landroid/graphics/Rect;

    float-to-int p0, p0

    float-to-int p1, p1

    invoke-virtual {v0, p0, p1}, Landroid/graphics/Rect;->contains(II)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-interface {p2}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->getRenderLayoutType()Lcom/android/camera/dualvideo/render/LayoutType;

    move-result-object p0

    sget-object p1, Lcom/android/camera/dualvideo/render/LayoutType;->MINI:Lcom/android/camera/dualvideo/render/LayoutType;

    if-eq p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic OooO00o(Lcom/android/camera/dualvideo/render/FaceType;Lcom/android/camera/dualvideo/render/CameraItemInterface;)Z
    .locals 1

    invoke-interface {p1}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->getFaceType()Lcom/android/camera/dualvideo/render/FaceType;

    move-result-object p1

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic OooO00o(Lcom/android/camera/dualvideo/render/LayoutType;Lcom/android/camera/dualvideo/render/CameraItemInterface;)Z
    .locals 0

    invoke-interface {p1}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->getGridWindowLayoutType()Lcom/android/camera/dualvideo/render/LayoutType;

    move-result-object p1

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic OooO00o(Lcom/android/camera/dualvideo/render/RenderSource;)Z
    .locals 1

    invoke-interface {p0}, Lcom/android/camera/dualvideo/render/RenderSource;->getSourceType()Lcom/android/camera/dualvideo/util/RenderSourceType;

    move-result-object p0

    sget-object v0, Lcom/android/camera/dualvideo/util/RenderSourceType;->REMOTE_SOURCE:Lcom/android/camera/dualvideo/util/RenderSourceType;

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic OooO00o(Lcom/android/camera/dualvideo/util/RenderSourceType;Lcom/android/camera/dualvideo/render/RenderSource;)Z
    .locals 0

    invoke-interface {p1}, Lcom/android/camera/dualvideo/render/RenderSource;->getSourceType()Lcom/android/camera/dualvideo/util/RenderSourceType;

    move-result-object p1

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic OooO00o(Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;Lcom/android/camera/dualvideo/render/RenderSource;)Z
    .locals 0

    invoke-interface {p1}, Lcom/android/camera/dualvideo/render/RenderSource;->getTexture()Lcom/android/gallery3d/ui/ExtTexture;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/gallery3d/ui/BasicTexture;->getId()I

    move-result p1

    iget-object p0, p0, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;->mExtTexture:Lcom/android/gallery3d/ui/ExtTexture;

    invoke-virtual {p0}, Lcom/android/gallery3d/ui/BasicTexture;->getId()I

    move-result p0

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic OooO0O0(Lcom/android/camera/dualvideo/render/RenderSource;)V
    .locals 0

    invoke-interface {p0}, Lcom/android/camera/dualvideo/render/RenderSource;->updateTexImage()V

    return-void
.end method

.method public static synthetic OooO0O0(Lcom/android/camera/dualvideo/util/UserSelectData;)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/camera/dualvideo/util/UserSelectData;->getSelectIndex()Lcom/android/camera/dualvideo/util/SelectIndex;

    move-result-object v0

    sget-object v1, Lcom/android/camera/dualvideo/util/SelectIndex;->INDEX_1:Lcom/android/camera/dualvideo/util/SelectIndex;

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/android/camera/dualvideo/util/SelectIndex;->INDEX_2:Lcom/android/camera/dualvideo/util/SelectIndex;

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/camera/dualvideo/util/UserSelectData;->setSelectIndex(Lcom/android/camera/dualvideo/util/SelectIndex;)V

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/dualvideo/util/UserSelectData;->getSelectIndex()Lcom/android/camera/dualvideo/util/SelectIndex;

    move-result-object v0

    sget-object v1, Lcom/android/camera/dualvideo/util/SelectIndex;->INDEX_2:Lcom/android/camera/dualvideo/util/SelectIndex;

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/android/camera/dualvideo/util/SelectIndex;->INDEX_1:Lcom/android/camera/dualvideo/util/SelectIndex;

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public static synthetic OooO0O0(Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;)V
    .locals 1

    sget-object v0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction$BackgroundType;->TRANS:Lcom/android/camera/fragment/bottom/action/FragmentBottomAction$BackgroundType;

    invoke-interface {p0, v0}, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;->setBackgroundColor(Lcom/android/camera/fragment/bottom/action/FragmentBottomAction$BackgroundType;)V

    return-void
.end method

.method public static synthetic OooO0O0(FFLcom/android/camera/dualvideo/render/CameraItemInterface;)Z
    .locals 1

    sget-object v0, Lcom/android/camera/dualvideo/render/ContentType;->CONTENT_PREVIEW:Lcom/android/camera/dualvideo/render/ContentType;

    invoke-interface {p2, v0}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->getRenderAttri(Lcom/android/camera/dualvideo/render/ContentType;)Lcom/android/camera/effect/draw_mode/DrawRectShapeAttributeBase;

    move-result-object v0

    iget-object v0, v0, Lcom/android/camera/effect/draw_mode/DrawRectShapeAttributeBase;->mDrawRect:Landroid/graphics/Rect;

    float-to-int p0, p0

    float-to-int p1, p1

    invoke-virtual {v0, p0, p1}, Landroid/graphics/Rect;->contains(II)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-interface {p2}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->getRenderLayoutType()Lcom/android/camera/dualvideo/render/LayoutType;

    move-result-object p0

    sget-object p1, Lcom/android/camera/dualvideo/render/LayoutType;->MINI:Lcom/android/camera/dualvideo/render/LayoutType;

    if-eq p0, p1, :cond_0

    invoke-interface {p2}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->isVisible()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic OooO0O0(Lcom/android/camera/dualvideo/render/CameraItemInterface;)Z
    .locals 1

    invoke-interface {p0}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->getRenderLayoutType()Lcom/android/camera/dualvideo/render/LayoutType;

    move-result-object p0

    sget-object v0, Lcom/android/camera/dualvideo/render/LayoutType;->DOWN_FULL:Lcom/android/camera/dualvideo/render/LayoutType;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic OooO0O0(Lcom/android/camera/dualvideo/util/RenderSourceType;Lcom/android/camera/dualvideo/render/RenderSource;)Z
    .locals 0

    invoke-interface {p1}, Lcom/android/camera/dualvideo/render/RenderSource;->getSourceType()Lcom/android/camera/dualvideo/util/RenderSourceType;

    move-result-object p1

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic OooO0OO(Lcom/android/camera/dualvideo/render/RenderSource;)Landroid/view/Surface;
    .locals 0

    invoke-interface {p0}, Lcom/android/camera/dualvideo/render/RenderSource;->getSurface()Landroid/view/Surface;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic OooO0OO(Lcom/android/camera/dualvideo/render/CameraItemInterface;)Z
    .locals 1

    invoke-interface {p0}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->getFaceType()Lcom/android/camera/dualvideo/render/FaceType;

    move-result-object p0

    sget-object v0, Lcom/android/camera/dualvideo/render/FaceType;->FACE_REMOTE:Lcom/android/camera/dualvideo/render/FaceType;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic OooO0OO(Lcom/android/camera/dualvideo/util/RenderSourceType;Lcom/android/camera/dualvideo/render/RenderSource;)Z
    .locals 1

    invoke-interface {p1}, Lcom/android/camera/dualvideo/render/RenderSource;->getSourceType()Lcom/android/camera/dualvideo/util/RenderSourceType;

    move-result-object v0

    if-ne v0, p0, :cond_0

    invoke-interface {p1}, Lcom/android/camera/dualvideo/render/RenderSource;->release()V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic OooO0Oo(Lcom/android/camera/dualvideo/render/RenderSource;)Ljava/lang/Boolean;
    .locals 0

    invoke-interface {p0}, Lcom/android/camera/dualvideo/render/RenderSource;->ismFrameReady()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic OooO0Oo(Lcom/android/camera/dualvideo/render/CameraItemInterface;)Ljava/lang/Integer;
    .locals 2

    invoke-interface {p0}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->getGridWindowLayoutType()Lcom/android/camera/dualvideo/render/LayoutType;

    move-result-object p0

    invoke-static {}, Lcom/android/camera/dualvideo/util/DualVideoConfigManager;->instance()Lcom/android/camera/dualvideo/util/DualVideoConfigManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/camera/dualvideo/util/DualVideoConfigManager;->getCameraId(Lcom/android/camera/dualvideo/render/LayoutType;)I

    move-result p0

    invoke-static {}, Lcom/android/camera/CameraSettings;->getDualVideoConfig()Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;->ismDrawGridWindow()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getCapabilities(I)Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {v0}, Lcom/android/camera2/CameraCapabilities;->getFacing()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-static {}, Lcom/android/camera/dualvideo/util/DualVideoConfigManager;->instance()Lcom/android/camera/dualvideo/util/DualVideoConfigManager;

    move-result-object p0

    sget-object v0, Lcom/android/camera/dualvideo/render/LayoutType;->PATCH_0:Lcom/android/camera/dualvideo/render/LayoutType;

    invoke-virtual {p0, v0}, Lcom/android/camera/dualvideo/util/DualVideoConfigManager;->getCameraId(Lcom/android/camera/dualvideo/render/LayoutType;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic OooO0o(Lcom/android/camera/dualvideo/render/RenderSource;)V
    .locals 0

    invoke-interface {p0}, Lcom/android/camera/dualvideo/render/RenderSource;->release()V

    return-void
.end method

.method public static synthetic OooO0o(Lcom/android/camera/dualvideo/render/CameraItemInterface;)Z
    .locals 1

    invoke-interface {p0}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->getRenderLayoutType()Lcom/android/camera/dualvideo/render/LayoutType;

    move-result-object p0

    sget-object v0, Lcom/android/camera/dualvideo/render/LayoutType;->MINI:Lcom/android/camera/dualvideo/render/LayoutType;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic OooO0o0(Lcom/android/camera/dualvideo/render/CameraItemInterface;)Z
    .locals 1

    invoke-interface {p0}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->getFaceType()Lcom/android/camera/dualvideo/render/FaceType;

    move-result-object p0

    sget-object v0, Lcom/android/camera/dualvideo/render/FaceType;->FACE_REMOTE:Lcom/android/camera/dualvideo/render/FaceType;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic OooO0o0(Lcom/android/camera/dualvideo/render/RenderSource;)Z
    .locals 1

    invoke-interface {p0}, Lcom/android/camera/dualvideo/render/RenderSource;->getSourceType()Lcom/android/camera/dualvideo/util/RenderSourceType;

    move-result-object p0

    sget-object v0, Lcom/android/camera/dualvideo/util/RenderSourceType;->MAIN_SOURCE:Lcom/android/camera/dualvideo/util/RenderSourceType;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic OooO0oO(Lcom/android/camera/dualvideo/render/CameraItemInterface;)Z
    .locals 2

    invoke-interface {p0}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->getFaceType()Lcom/android/camera/dualvideo/render/FaceType;

    move-result-object v0

    sget-object v1, Lcom/android/camera/dualvideo/render/FaceType;->FACE_BACK:Lcom/android/camera/dualvideo/render/FaceType;

    if-eq v0, v1, :cond_0

    invoke-interface {p0}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->getRenderLayoutType()Lcom/android/camera/dualvideo/render/LayoutType;

    move-result-object p0

    sget-object v0, Lcom/android/camera/dualvideo/render/LayoutType;->FULL:Lcom/android/camera/dualvideo/render/LayoutType;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic access$000(Lcom/android/camera/dualvideo/render/RenderManager;)Lcom/android/camera/dualvideo/render/RenderManager$DualVideoRenderListener;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mListener:Lcom/android/camera/dualvideo/render/RenderManager$DualVideoRenderListener;

    return-object p0
.end method

.method public static synthetic access$100()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/camera/dualvideo/render/RenderManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private attachSurfaceTexture(Lcom/android/gallery3d/ui/GLCanvas;)V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mRenderSources:Ljava/util/ArrayList;

    new-instance v1, LOooO0O0/OooO0OO/OooO00o/OooOOo/o00000Oo/o0Oo0oo;

    invoke-direct {v1, p1}, LOooO0O0/OooO0OO/OooO00o/OooOOo/o00000Oo/o0Oo0oo;-><init>(Lcom/android/gallery3d/ui/GLCanvas;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    iput-object p1, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    return-void
.end method

.method private canDraw()Z
    .locals 3

    iget-boolean v0, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mDrawBlur:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mRenderSources:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mRenderSources:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v2, LOooO0O0/OooO0OO/OooO00o/OooOOo/o00000Oo/OooO0Oo;->OooO00o:LOooO0O0/OooO0OO/OooO00o/OooOOo/o00000Oo/OooO0Oo;

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->allMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method private canTouch()Z
    .locals 2

    iget-object v0, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mRenderSources:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, LOooO0O0/OooO0OO/OooO00o/OooOOo/o00000Oo/o0000;->OooO00o:LOooO0O0/OooO0OO/OooO00o/OooOOo/o00000Oo/o0000;

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, LOooO0O0/OooO0OO/OooO00o/OooOOo/o00000Oo/OooO0Oo;->OooO00o:LOooO0O0/OooO0OO/OooO00o/OooOOo/o00000Oo/OooO0Oo;

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->allMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mCameraItemManager:Lcom/android/camera/dualvideo/render/CameraItemManager;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private changeBottomIconBackground()V
    .locals 2

    invoke-static {}, Lcom/android/camera/CameraSettings;->getDualVideoConfig()Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;->getRecordType()Lcom/android/camera/dualvideo/recorder/RecordType;

    move-result-object v0

    sget-object v1, Lcom/android/camera/dualvideo/recorder/RecordType;->MERGED:Lcom/android/camera/dualvideo/recorder/RecordType;

    if-eq v0, v1, :cond_2

    invoke-static {}, Lcom/android/camera/dualvideo/ModuleUtil;->isFatScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mCameraItemManager:Lcom/android/camera/dualvideo/render/CameraItemManager;

    invoke-virtual {v0}, Lcom/android/camera/dualvideo/render/CameraItemManager;->getRenderableList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, LOooO0O0/OooO0OO/OooO00o/OooOOo/o00000Oo/o00ooo;->OooO00o:LOooO0O0/OooO0OO/OooO00o/OooOOo/o00000Oo/o00ooo;

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/camera/dualvideo/render/RenderManager;->getActionProcess()Ljava/util/Optional;

    move-result-object v0

    sget-object v1, LOooO0O0/OooO0OO/OooO00o/OooOOo/o00000Oo/o0000oO;->OooO00o:LOooO0O0/OooO0OO/OooO00o/OooOOo/o00000Oo/o0000oO;

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/android/camera/dualvideo/render/RenderManager;->getActionProcess()Ljava/util/Optional;

    move-result-object v0

    sget-object v1, LOooO0O0/OooO0OO/OooO00o/OooOOo/o00000Oo/o00000O0;->OooO00o:LOooO0O0/OooO0OO/OooO00o/OooOOo/o00000Oo/o00000O0;

    :goto_0
    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_2
    :goto_1
    return-void
.end method

.method private drawBlur(Lcom/android/gallery3d/ui/GLCanvasImpl;Lcom/android/camera/CameraScreenNail;Landroid/graphics/Rect;[F)V
    .locals 0

    invoke-virtual {p2, p1, p3, p4}, Lcom/android/camera/CameraScreenNail;->drawBlurTexture(Lcom/android/gallery3d/ui/GLCanvas;Landroid/graphics/Rect;[F)V

    iget-object p1, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mListener:Lcom/android/camera/dualvideo/render/RenderManager$DualVideoRenderListener;

    invoke-interface {p1}, Lcom/android/camera/dualvideo/render/RenderManager$DualVideoRenderListener;->onRenderRequestNeeded()V

    return-void
.end method

.method private drawBottomMask(Lcom/android/gallery3d/ui/GLCanvas;)V
    .locals 8

    iget-object v0, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mCameraItemManager:Lcom/android/camera/dualvideo/render/CameraItemManager;

    invoke-virtual {v0}, Lcom/android/camera/dualvideo/render/CameraItemManager;->hasMiniCameraItem()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/dualvideo/render/RenderManager;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/camera/Util;->getDisplayRect(I)Landroid/graphics/Rect;

    move-result-object v0

    new-instance v7, Lcom/android/camera/effect/draw_mode/DrawFillRectAttribute;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-interface {p1}, Lcom/android/gallery3d/ui/GLCanvas;->getHeight()I

    move-result v5

    const/high16 v6, -0x1000000

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/android/camera/effect/draw_mode/DrawFillRectAttribute;-><init>(IIIII)V

    invoke-interface {p1, v7}, Lcom/android/gallery3d/ui/GLCanvas;->draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)V

    :cond_0
    return-void
.end method

.method private drawDualVideo(Lcom/android/gallery3d/ui/GLCanvas;)Z
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/camera/dualvideo/render/RenderManager;->prepare(Lcom/android/gallery3d/ui/GLCanvas;)V

    iget-object v0, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mRenderSources:Ljava/util/ArrayList;

    sget-object v1, LOooO0O0/OooO0OO/OooO00o/OooOOo/o00000Oo/o0000oo;->OooO00o:LOooO0O0/OooO0OO/OooO00o/OooOOo/o00000Oo/o0000oo;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    invoke-direct {p0}, Lcom/android/camera/dualvideo/render/RenderManager;->canDraw()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/camera/dualvideo/render/RenderManager;->drawForRecording()V

    invoke-direct {p0, p1}, Lcom/android/camera/dualvideo/render/RenderManager;->drawForPreview(Lcom/android/gallery3d/ui/GLCanvas;)V

    invoke-direct {p0}, Lcom/android/camera/dualvideo/render/RenderManager;->waitVideoDrawFinish()V

    invoke-direct {p0, p1}, Lcom/android/camera/dualvideo/render/RenderManager;->drawBottomMask(Lcom/android/gallery3d/ui/GLCanvas;)V

    invoke-direct {p0, p1}, Lcom/android/camera/dualvideo/render/RenderManager;->updateBlurTex(Lcom/android/gallery3d/ui/GLCanvas;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private drawForPreview(Lcom/android/gallery3d/ui/GLCanvas;)V
    .locals 7

    iget-object v0, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mCameraItemManager:Lcom/android/camera/dualvideo/render/CameraItemManager;

    invoke-virtual {v0}, Lcom/android/camera/dualvideo/render/CameraItemManager;->getRenderableList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, LOooO0O0/OooO0OO/OooO00o/OooOOo/o00000Oo/Ooooooo;->OooO00o:LOooO0O0/OooO0OO/OooO00o/OooOOo/o00000Oo/Ooooooo;

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, LOooO0O0/OooO0OO/OooO00o/OooOOo/o00000Oo/o0000o0o;->OooO00o:LOooO0O0/OooO0OO/OooO00o/OooOOo/o00000Oo/o0000o0o;

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->sorted(Ljava/util/Comparator;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    sget-object v2, LOooO0O0/OooO0OO/OooO00o/OooOOo/o00000Oo/o00000;->OooO00o:LOooO0O0/OooO0OO/OooO00o/OooOOo/o00000Oo/o00000;

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v1

    iget-object v2, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mSnapAnimDualVideoTimer:Lcom/android/camera/dualvideo/render/DualVideoTimer;

    invoke-virtual {v2}, Lcom/android/camera/dualvideo/render/DualVideoTimer;->isValid()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/dualvideo/render/CameraItemInterface;

    invoke-interface {p1}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v5

    invoke-interface {v3}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->getAlpha()F

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/camera/effect/GLCanvasState;->setAlpha(F)V

    iget-boolean v5, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mDrawBlur:Z

    if-eqz v5, :cond_0

    sget-object v5, Lcom/android/camera/dualvideo/render/ContentType;->CONTENT_BLUR:Lcom/android/camera/dualvideo/render/ContentType;

    goto :goto_1

    :cond_0
    sget-object v5, Lcom/android/camera/dualvideo/render/ContentType;->CONTENT_PREVIEW:Lcom/android/camera/dualvideo/render/ContentType;

    :goto_1
    iget-object v6, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mMiscTexManager:Lcom/android/camera/dualvideo/render/MiscTextureManager;

    invoke-interface {v3, p1, v5, v6}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->draw(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/dualvideo/render/ContentType;Lcom/android/camera/dualvideo/render/MiscTextureManager;)V

    sget-object v5, Lcom/android/camera/dualvideo/render/ContentType;->CONTENT_GRID_LINE:Lcom/android/camera/dualvideo/render/ContentType;

    iget-object v6, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mMiscTexManager:Lcom/android/camera/dualvideo/render/MiscTextureManager;

    invoke-interface {v3, p1, v5, v6}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->draw(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/dualvideo/render/ContentType;Lcom/android/camera/dualvideo/render/MiscTextureManager;)V

    invoke-interface {v3}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->getRenderLayoutType()Lcom/android/camera/dualvideo/render/LayoutType;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/dualvideo/render/LayoutType;->isGridWindowType()Z

    move-result v5

    if-eqz v5, :cond_1

    sget-object v5, Lcom/android/camera/dualvideo/render/ContentType;->CONTENT_DARK_CORNER:Lcom/android/camera/dualvideo/render/ContentType;

    iget-object v6, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mMiscTexManager:Lcom/android/camera/dualvideo/render/MiscTextureManager;

    invoke-interface {v3, p1, v5, v6}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->draw(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/dualvideo/render/ContentType;Lcom/android/camera/dualvideo/render/MiscTextureManager;)V

    sget-object v5, Lcom/android/camera/dualvideo/render/ContentType;->CONTENT_SELECTED_FRAME:Lcom/android/camera/dualvideo/render/ContentType;

    iget-object v6, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mMiscTexManager:Lcom/android/camera/dualvideo/render/MiscTextureManager;

    invoke-interface {v3, p1, v5, v6}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->draw(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/dualvideo/render/ContentType;Lcom/android/camera/dualvideo/render/MiscTextureManager;)V

    :cond_1
    iget-boolean v5, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mDrawBlur:Z

    if-nez v5, :cond_2

    sget-object v5, Lcom/android/camera/dualvideo/render/ContentType;->CONTENT_LABEL:Lcom/android/camera/dualvideo/render/ContentType;

    iget-object v6, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mMiscTexManager:Lcom/android/camera/dualvideo/render/MiscTextureManager;

    invoke-interface {v3, p1, v5, v6}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->draw(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/dualvideo/render/ContentType;Lcom/android/camera/dualvideo/render/MiscTextureManager;)V

    :cond_2
    invoke-interface {p1}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/android/camera/effect/GLCanvasState;->setAlpha(F)V

    goto :goto_0

    :cond_3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/dualvideo/render/CameraItemInterface;

    invoke-interface {p1}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v3

    invoke-interface {v2}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->getAlpha()F

    move-result v5

    invoke-virtual {v3, v5}, Lcom/android/camera/effect/GLCanvasState;->setAlpha(F)V

    iget-boolean v3, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mDrawBlur:Z

    if-nez v3, :cond_4

    sget-object v3, Lcom/android/camera/dualvideo/render/ContentType;->CONTENT_SCALING_HANDLE:Lcom/android/camera/dualvideo/render/ContentType;

    iget-object v5, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mMiscTexManager:Lcom/android/camera/dualvideo/render/MiscTextureManager;

    invoke-interface {v2, p1, v3, v5}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->draw(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/dualvideo/render/ContentType;Lcom/android/camera/dualvideo/render/MiscTextureManager;)V

    if-eqz v1, :cond_4

    invoke-static {}, LOooO0O0/OooO0o0/OooO00o/OooO0O0;->o0O00O()LOooO0O0/OooO0o0/OooO00o/OooO0O0;

    move-result-object v3

    invoke-virtual {v3}, LOooO0O0/OooO0o0/OooO00o/OooO0O0;->o00O000()Z

    move-result v3

    if-nez v3, :cond_4

    sget-object v3, Lcom/android/camera/dualvideo/render/ContentType;->CONTENT_SWITCH_HANDLE:Lcom/android/camera/dualvideo/render/ContentType;

    iget-object v5, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mMiscTexManager:Lcom/android/camera/dualvideo/render/MiscTextureManager;

    invoke-interface {v2, p1, v3, v5}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->draw(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/dualvideo/render/ContentType;Lcom/android/camera/dualvideo/render/MiscTextureManager;)V

    :cond_4
    invoke-interface {p1}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/android/camera/effect/GLCanvasState;->setAlpha(F)V

    goto :goto_2

    :cond_5
    return-void
.end method

.method private drawForRecording()V
    .locals 5

    iget-boolean v0, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mNeedRecording:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mRecordRenderHandler:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mCameraItemManager:Lcom/android/camera/dualvideo/render/CameraItemManager;

    invoke-virtual {v0}, Lcom/android/camera/dualvideo/render/CameraItemManager;->getRenderableListForRecord()Ljava/util/List;

    move-result-object v0

    move v1, v2

    :goto_0
    iget-object v3, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mRecordRenderHandler:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    iget-object v3, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mRecordRenderHandler:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/module/encoder/RenderHandler;

    invoke-virtual {v3, v0}, Lcom/android/camera/module/encoder/RenderHandler;->draw(Ljava/util/List;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mSnapPending:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mSnapRenderHandler:Ljava/util/ArrayList;

    new-instance v3, LOooO0O0/OooO0OO/OooO00o/OooOOo/o00000Oo/o00000Oo;

    invoke-direct {v3, v0}, LOooO0O0/OooO0OO/OooO00o/OooOOo/o00000Oo/o00000Oo;-><init>(Ljava/util/List;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mRecordRenderHandler:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    move v0, v2

    :goto_1
    iget-object v1, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mRecordRenderHandler:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    iget-object v1, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mRecordRenderHandler:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    iget-object v3, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mRecordRenderHandler:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/module/encoder/RenderHandler;

    iget-object v4, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mCameraItemManager:Lcom/android/camera/dualvideo/render/CameraItemManager;

    invoke-static {v1}, Lcom/android/camera/dualvideo/util/RenderSourceType;->getTagByIndex(I)Lcom/android/camera/dualvideo/util/RenderSourceType;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/android/camera/dualvideo/render/CameraItemManager;->getFullTypeRecordAttri(Lcom/android/camera/dualvideo/util/RenderSourceType;)Lcom/android/camera/effect/draw_mode/DrawAttribute;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/android/camera/module/encoder/RenderHandler;->draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)V

    iget-object v3, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mSnapPending:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mSnapRenderHandler:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/module/encoder/RenderHandler;

    invoke-virtual {v3, v1}, Lcom/android/camera/module/encoder/RenderHandler;->draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)V

    invoke-virtual {v3}, Lcom/android/camera/module/encoder/RenderHandler;->waitDrawFinish()V

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mSnapPending:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_5

    :goto_2
    iget-object v0, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mSnapPending:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_5
    return-void
.end method

.method private getActionProcess()Ljava/util/Optional;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa2

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method private getBlurTex(Lcom/android/camera/dualvideo/render/FaceType;)Lcom/android/gallery3d/ui/RawTexture;
    .locals 3

    sget-object v0, Lcom/android/camera/dualvideo/render/RenderManager$3;->$SwitchMap$com$android$camera$dualvideo$render$FaceType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object p1, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mMiscTexManager:Lcom/android/camera/dualvideo/render/MiscTextureManager;

    const-string/jumbo v0, "r_b"

    :goto_0
    invoke-virtual {p1, v0}, Lcom/android/camera/dualvideo/render/MiscTextureManager;->getOrGenBlurTexture(Ljava/lang/String;)Lcom/android/gallery3d/ui/BasicTexture;

    move-result-object p1

    check-cast p1, Lcom/android/gallery3d/ui/RawTexture;

    return-object p1

    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "param error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object p1, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mMiscTexManager:Lcom/android/camera/dualvideo/render/MiscTextureManager;

    const-string v0, "f_b"

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mMiscTexManager:Lcom/android/camera/dualvideo/render/MiscTextureManager;

    const-string v0, "b_b"

    goto :goto_0
.end method

.method private getRecordTypeBySelectType(Lcom/android/camera/dualvideo/render/LayoutType;)Lcom/android/camera/dualvideo/render/LayoutType;
    .locals 2

    iget-object v0, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mCameraItemManager:Lcom/android/camera/dualvideo/render/CameraItemManager;

    invoke-virtual {v0}, Lcom/android/camera/dualvideo/render/CameraItemManager;->getRenderableList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, LOooO0O0/OooO0OO/OooO00o/OooOOo/o00000Oo/o0OOO0o;

    invoke-direct {v1, p1}, LOooO0O0/OooO0OO/OooO00o/OooOOo/o00000Oo/o0OOO0o;-><init>(Lcom/android/camera/dualvideo/render/LayoutType;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/stream/Stream;->findAny()Ljava/util/Optional;

    move-result-object p1

    sget-object v0, LOooO0O0/OooO0OO/OooO00o/OooOOo/o00000Oo/OooO0OO;->OooO00o:LOooO0O0/OooO0OO/OooO00o/OooOOo/o00000Oo/OooO0OO;

    invoke-virtual {p1, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p1

    sget-object v0, Lcom/android/camera/dualvideo/render/LayoutType;->UNDEFINED:Lcom/android/camera/dualvideo/render/LayoutType;

    invoke-virtual {p1, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera/dualvideo/render/LayoutType;

    return-object p1
.end method

.method private handleScaling(Landroid/view/MotionEvent;)Z
    .locals 5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    iget-object v2, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mRenderLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mCameraItemManager:Lcom/android/camera/dualvideo/render/CameraItemManager;

    invoke-virtual {v3}, Lcom/android/camera/dualvideo/render/CameraItemManager;->getRenderableList()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v4, LOooO0O0/OooO0OO/OooO00o/OooOOo/o00000Oo/o0000O00;

    invoke-direct {v4, p0, v0, p1}, LOooO0O0/OooO0OO/OooO00o/OooOOo/o00000Oo/o0000O00;-><init>(Lcom/android/camera/dualvideo/render/RenderManager;II)V

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p1

    new-instance v0, LOooO0O0/OooO0OO/OooO00o/OooOOo/o00000Oo/o00o0O;

    invoke-direct {v0, p0}, LOooO0O0/OooO0OO/OooO00o/OooOOo/o00000Oo/o00o0O;-><init>(Lcom/android/camera/dualvideo/render/RenderManager;)V

    invoke-virtual {p1, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    monitor-exit v2

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private handleSwitch(Landroid/view/MotionEvent;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mCameraItemManager:Lcom/android/camera/dualvideo/render/CameraItemManager;

    invoke-virtual {v0}, Lcom/android/camera/dualvideo/render/CameraItemManager;->getVisibleRenderList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, LOooO0O0/OooO0OO/OooO00o/OooOOo/o00000Oo/o0ooOO0;->OooO00o:LOooO0O0/OooO0OO/OooO00o/OooOOo/o00000Oo/o0ooOO0;

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->noneMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    invoke-static {}, LOooO0O0/OooO0o0/OooO00o/OooO0O0;->o0O00O()LOooO0O0/OooO0o0/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0o0/OooO00o/OooO0O0;->o00O000()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    iget-object v1, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mCameraItemManager:Lcom/android/camera/dualvideo/render/CameraItemManager;

    invoke-virtual {v1}, Lcom/android/camera/dualvideo/render/CameraItemManager;->getRenderableList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, LOooO0O0/OooO0OO/OooO00o/OooOOo/o00000Oo/o000000O;

    invoke-direct {v2, p0, v0, p1}, LOooO0O0/OooO0OO/OooO00o/OooOOo/o00000Oo/o000000O;-><init>(Lcom/android/camera/dualvideo/render/RenderManager;II)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Optional;->isPresent()Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    return v1
.end method

.method private isSoruceFrameReady(Lcom/android/camera/dualvideo/render/CameraItemInterface;)Z
    .locals 2

    sget-object v0, Lcom/android/camera/dualvideo/render/ContentType;->CONTENT_PREVIEW:Lcom/android/camera/dualvideo/render/ContentType;

    invoke-interface {p1, v0}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->getRenderAttri(Lcom/android/camera/dualvideo/render/ContentType;)Lcom/android/camera/effect/draw_mode/DrawRectShapeAttributeBase;

    move-result-object p1

    check-cast p1, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    iget-object v0, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mRenderSources:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, LOooO0O0/OooO0OO/OooO00o/OooOOo/o00000Oo/o00000oo;

    invoke-direct {v1, p1}, LOooO0O0/OooO0OO/OooO00o/OooOOo/o00000Oo/o00000oo;-><init>(Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p1

    sget-object v0, LOooO0O0/OooO0OO/OooO00o/OooOOo/o00000Oo/o00000oO;->OooO00o:LOooO0O0/OooO0OO/OooO00o/OooOOo/o00000Oo/o00000oO;

    invoke-virtual {p1, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method private prepare(Lcom/android/gallery3d/ui/GLCanvas;)V
    .locals 4

    iget-object v0, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mMiscTexManager:Lcom/android/camera/dualvideo/render/MiscTextureManager;

    iget-object v1, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p1, v1}, Lcom/android/camera/dualvideo/render/MiscTextureManager;->init(Lcom/android/gallery3d/ui/GLCanvas;Landroid/content/res/Resources;)V

    iget-object v0, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mRenderSources:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, LOooO0O0/OooO0OO/OooO00o/OooOOo/o00000Oo/o0ooOOo;->OooO00o:LOooO0O0/OooO0OO/OooO00o/OooOOo/o00000Oo/o0ooOOo;

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->noneMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mRenderSources:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/camera/dualvideo/render/MainRenderSource;

    sget-object v2, Lcom/android/camera/dualvideo/util/RenderSourceType;->MAIN_SOURCE:Lcom/android/camera/dualvideo/util/RenderSourceType;

    iget-object v3, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mMainDrawAttribute:Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    iget-object v3, v3, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;->mExtTexture:Lcom/android/gallery3d/ui/ExtTexture;

    invoke-direct {v1, v2, v3}, Lcom/android/camera/dualvideo/render/MainRenderSource;-><init>(Lcom/android/camera/dualvideo/util/RenderSourceType;Lcom/android/gallery3d/ui/ExtTexture;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/camera/dualvideo/render/RenderManager;->attachSurfaceTexture(Lcom/android/gallery3d/ui/GLCanvas;)V

    iget-object p1, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mCameraItemManager:Lcom/android/camera/dualvideo/render/CameraItemManager;

    if-nez p1, :cond_1

    new-instance p1, Lcom/android/camera/dualvideo/render/CameraItemManager;

    iget-object v0, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mRenderLock:Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mRenderSources:Ljava/util/ArrayList;

    invoke-direct {p1, v0, v1}, Lcom/android/camera/dualvideo/render/CameraItemManager;-><init>(Ljava/lang/Object;Ljava/util/ArrayList;)V

    iput-object p1, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mCameraItemManager:Lcom/android/camera/dualvideo/render/CameraItemManager;

    :cond_1
    return-void
.end method

.method private prepareForCapture(Landroid/opengl/EGLContext;)V
    .locals 5

    sget-object v0, Lcom/android/camera/dualvideo/render/RenderUtil;->OUTPUT_SIZE:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    sget-object v1, Lcom/android/camera/dualvideo/render/RenderUtil;->OUTPUT_SIZE:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v2}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v0

    new-instance v1, LOooO0O0/OooO0OO/OooO00o/OooOOo/o00000Oo/o000000o;

    invoke-direct {v1, p0}, LOooO0O0/OooO0OO/OooO00o/OooOOo/o00000Oo/o000000o;-><init>(Lcom/android/camera/dualvideo/render/RenderManager;)V

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    iget-object v1, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mSnapReader:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/android/camera/dualvideo/render/RenderManager;->TAG:Ljava/lang/String;

    sget-object v3, Lcom/android/camera/dualvideo/render/RenderUtil;->OUTPUT_SIZE:Landroid/util/Size;

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v3

    sget-object v4, Lcom/android/camera/dualvideo/render/RenderUtil;->OUTPUT_SIZE:Landroid/util/Size;

    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v4

    invoke-static {v1, v3, v4}, Lcom/android/camera/module/encoder/RenderHandler;->createHandler(Ljava/lang/String;II)Lcom/android/camera/module/encoder/RenderHandler;

    move-result-object v1

    invoke-virtual {v0}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-virtual {v1, p1, v0, v2}, Lcom/android/camera/module/encoder/RenderHandler;->setEglContext(Landroid/opengl/EGLContext;Ljava/lang/Object;Z)V

    iget-object p1, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mSnapRenderHandler:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private printTexId(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/camera/dualvideo/render/CameraItemInterface;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " tex id:  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, LOooO0O0/OooO0OO/OooO00o/OooOOo/o00000Oo/o00O0O;

    invoke-direct {v1, v0}, LOooO0O0/OooO0OO/OooO00o/OooOOo/o00000Oo/o00O0O;-><init>(Ljava/lang/StringBuilder;)V

    invoke-interface {p1, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    sget-object p1, Lcom/android/camera/dualvideo/render/RenderManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "printTexId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private releaseRecordingRelated()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mRecordRenderHandler:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mRecordRenderHandler:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mRecordRenderHandler:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/module/encoder/RenderHandler;

    invoke-virtual {v1}, Lcom/android/camera/module/encoder/RenderHandler;->release()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mRecordRenderHandler:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    :cond_1
    iget-object v0, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mSnapReader:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mSnapReader:Ljava/util/ArrayList;

    sget-object v1, LOooO0O0/OooO0OO/OooO00o/OooOOo/o00000Oo/o0000o0;->OooO00o:LOooO0O0/OooO0OO/OooO00o/OooOOo/o00000Oo/o0000o0;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    iget-object v0, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mSnapReader:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mSnapRenderHandler:Ljava/util/ArrayList;

    sget-object v1, LOooO0O0/OooO0OO/OooO00o/OooOOo/o00000Oo/o0000OOO;->OooO00o:LOooO0O0/OooO0OO/OooO00o/OooOOo/o00000Oo/o0000OOO;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    iget-object v0, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mSnapRenderHandler:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_2
    return-void
.end method

.method private releaseRenderHandlerThread()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mRenderHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mRenderHandlerThread:Landroid/os/HandlerThread;

    iput-object v0, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mRenderHandler:Landroid/os/Handler;

    :cond_0
    return-void
.end method

.method private releaseSurfaceTexture()V
    .locals 3

    sget-object v0, Lcom/android/camera/dualvideo/render/RenderManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "releaseSurfaceTexture: "

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mRenderLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mRenderSources:Ljava/util/ArrayList;

    sget-object v2, LOooO0O0/OooO0OO/OooO00o/OooOOo/o00000Oo/oo0o0Oo;->OooO00o:LOooO0O0/OooO0OO/OooO00o/OooOOo/o00000Oo/oo0o0Oo;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    iget-object v1, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mRenderSources:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-direct {p0}, Lcom/android/camera/dualvideo/render/RenderManager;->releaseRenderHandlerThread()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private saveJpeg(Landroid/media/Image;)V
    .locals 7

    sget-object v0, Lcom/android/camera/dualvideo/render/RenderManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "saveJpeg: "

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/media/Image;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/media/Image;->getHeight()I

    move-result v1

    invoke-virtual {p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v4, v2, v3

    invoke-virtual {v4}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v4

    aget-object v5, v2, v3

    invoke-virtual {v5}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v5

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v2

    mul-int v6, v5, v0

    sub-int/2addr v2, v6

    div-int v5, v2, v5

    add-int/2addr v5, v0

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v1, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-static {v1, v3, v3, v0, v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    move-object v1, v0

    :cond_0
    invoke-virtual {p1}, Landroid/media/Image;->close()V

    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iget v0, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mSnapOrientation:I

    iget-object v2, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mCaptureResult:Landroid/hardware/camera2/CaptureResult;

    invoke-static {v1, p1, v0, v2}, Lcom/android/camera/Util;->appendExifToBitmap(Landroid/graphics/Bitmap;Ljava/io/OutputStream;ILandroid/hardware/camera2/CaptureResult;)V

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    iget-object v0, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mJpegCallback:Lcom/android/camera/dualvideo/DualVideoRecordModule$JpegPictureCallback;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/dualvideo/DualVideoRecordModule$JpegPictureCallback;->onPictureTaken([BLandroid/hardware/camera2/CaptureResult;)V

    :cond_1
    :try_start_0
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method

.method private startHandlerThread()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mRenderHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "dual video handler"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mRenderHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/android/camera/dualvideo/render/RenderManager$1;

    iget-object v1, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mRenderHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/camera/dualvideo/render/RenderManager$1;-><init>(Lcom/android/camera/dualvideo/render/RenderManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mRenderHandler:Landroid/os/Handler;

    return-void
.end method

.method private switchSelectIndex()V
    .locals 2

    invoke-static {}, Lcom/android/camera/CameraSettings;->getDualVideoConfig()Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;->getSelectedData()Ljava/util/ArrayList;

    move-result-object v0

    sget-object v1, LOooO0O0/OooO0OO/OooO00o/OooOOo/o00000Oo/ooOO;->OooO00o:LOooO0O0/OooO0OO/OooO00o/OooOOo/o00000Oo/ooOO;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private updateBlurTex(Lcom/android/gallery3d/ui/GLCanvas;)V
    .locals 7

    iget-boolean v0, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mNeedUpdateBlurTex:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/android/camera/dualvideo/render/FaceType;->values()[Lcom/android/camera/dualvideo/render/FaceType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    iget-object v5, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mCameraItemManager:Lcom/android/camera/dualvideo/render/CameraItemManager;

    invoke-virtual {v5}, Lcom/android/camera/dualvideo/render/CameraItemManager;->getRenderableList()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v5

    new-instance v6, LOooO0O0/OooO0OO/OooO00o/OooOOo/o00000Oo/o00000o0;

    invoke-direct {v6, v4}, LOooO0O0/OooO0OO/OooO00o/OooOOo/o00000Oo/o00000o0;-><init>(Lcom/android/camera/dualvideo/render/FaceType;)V

    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/stream/Stream;->findAny()Ljava/util/Optional;

    move-result-object v5

    new-instance v6, LOooO0O0/OooO0OO/OooO00o/OooOOo/o00000Oo/o000OOo;

    invoke-direct {v6, p0, v4, p1}, LOooO0O0/OooO0OO/OooO00o/OooOOo/o00000Oo/o000OOo;-><init>(Lcom/android/camera/dualvideo/render/RenderManager;Lcom/android/camera/dualvideo/render/FaceType;Lcom/android/gallery3d/ui/GLCanvas;)V

    invoke-virtual {v5, v6}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iput-boolean v2, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mNeedUpdateBlurTex:Z

    iget-object p1, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mUpdateBlurConditionVar:Landroid/os/ConditionVariable;

    invoke-virtual {p1}, Landroid/os/ConditionVariable;->open()V

    return-void
.end method

.method private updateSelectDataWhenRenderLayoutChanged()V
    .locals 2

    invoke-static {}, Lcom/android/camera/CameraSettings;->getDualVideoConfig()Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;->getSelectedData()Ljava/util/ArrayList;

    move-result-object v0

    new-instance v1, LOooO0O0/OooO0OO/OooO00o/OooOOo/o00000Oo/o00000O;

    invoke-direct {v1, p0}, LOooO0O0/OooO0OO/OooO00o/OooOOo/o00000Oo/o00000O;-><init>(Lcom/android/camera/dualvideo/render/RenderManager;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private waitVideoDrawFinish()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mNeedRecording:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mRecordRenderHandler:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mRecordRenderHandler:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/module/encoder/RenderHandler;

    invoke-virtual {v1}, Lcom/android/camera/module/encoder/RenderHandler;->waitDrawFinish()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public synthetic OooO00o(Lcom/android/camera/dualvideo/render/CameraItemInterface;)Ljava/lang/Boolean;
    .locals 2

    sget-object v0, Lcom/android/camera/dualvideo/render/RenderManager$3;->$SwitchMap$com$android$camera$dualvideo$render$LayoutType:[I

    invoke-interface {p1}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->getRenderLayoutType()Lcom/android/camera/dualvideo/render/LayoutType;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    const/4 v1, 0x5

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mCameraItemManager:Lcom/android/camera/dualvideo/render/CameraItemManager;

    invoke-virtual {p1}, Lcom/android/camera/dualvideo/render/CameraItemManager;->expandBottom()V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mCameraItemManager:Lcom/android/camera/dualvideo/render/CameraItemManager;

    invoke-virtual {p1}, Lcom/android/camera/dualvideo/render/CameraItemManager;->expandOrShrinkTop()V

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public synthetic OooO00o(Landroid/media/ImageReader;)V
    .locals 0

    invoke-virtual {p1}, Landroid/media/ImageReader;->acquireNextImage()Landroid/media/Image;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/camera/dualvideo/render/RenderManager;->saveJpeg(Landroid/media/Image;)V

    return-void
.end method

.method public synthetic OooO00o(Lcom/android/camera/dualvideo/render/FaceType;Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/dualvideo/render/CameraItemInterface;)V
    .locals 3

    sget-object v0, Lcom/android/camera/dualvideo/render/RenderManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateBlurTex: E "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p3}, Lcom/android/camera/dualvideo/render/RenderManager;->isSoruceFrameReady(Lcom/android/camera/dualvideo/render/CameraItemInterface;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/camera/dualvideo/render/RenderManager;->getBlurTex(Lcom/android/camera/dualvideo/render/FaceType;)Lcom/android/gallery3d/ui/RawTexture;

    move-result-object v0

    sget-object v1, Lcom/android/camera/dualvideo/render/ContentType;->CONTENT_PREVIEW:Lcom/android/camera/dualvideo/render/ContentType;

    invoke-interface {p3, v1}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->getRenderAttri(Lcom/android/camera/dualvideo/render/ContentType;)Lcom/android/camera/effect/draw_mode/DrawRectShapeAttributeBase;

    move-result-object v1

    check-cast v1, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    invoke-interface {p3}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->getFaceType()Lcom/android/camera/dualvideo/render/FaceType;

    move-result-object p3

    invoke-static {p2, v0, v1, p3}, Lcom/android/camera/dualvideo/render/RenderUtil;->copyPreviewTexture(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/gallery3d/ui/RawTexture;Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;Lcom/android/camera/dualvideo/render/FaceType;)V

    invoke-direct {p0, p1}, Lcom/android/camera/dualvideo/render/RenderManager;->getBlurTex(Lcom/android/camera/dualvideo/render/FaceType;)Lcom/android/gallery3d/ui/RawTexture;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/android/camera/dualvideo/render/RenderUtil;->blurTex(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/gallery3d/ui/RawTexture;)V

    sget-object p2, Lcom/android/camera/dualvideo/render/RenderManager;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "updateBlurTex: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public synthetic OooO00o(Lcom/android/camera/dualvideo/util/UserSelectData;)V
    .locals 1

    invoke-virtual {p1}, Lcom/android/camera/dualvideo/util/UserSelectData;->getmGridLayoutType()Lcom/android/camera/dualvideo/render/LayoutType;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/camera/dualvideo/render/RenderManager;->getRecordTypeBySelectType(Lcom/android/camera/dualvideo/render/LayoutType;)Lcom/android/camera/dualvideo/render/LayoutType;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/camera/dualvideo/util/UserSelectData;->setmRecordLayoutType(Lcom/android/camera/dualvideo/render/LayoutType;)V

    return-void
.end method

.method public synthetic OooO00o(IILcom/android/camera/dualvideo/render/CameraItemInterface;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mMiscTexManager:Lcom/android/camera/dualvideo/render/MiscTextureManager;

    invoke-interface {p3, v0}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->getScalingHandleArea(Lcom/android/camera/dualvideo/render/MiscTextureManager;)Landroid/graphics/Rect;

    move-result-object p3

    if-eqz p3, :cond_0

    const/16 v0, -0xa

    invoke-virtual {p3, v0, v0}, Landroid/graphics/Rect;->inset(II)V

    invoke-virtual {p3, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public synthetic OooO0O0(IILcom/android/camera/dualvideo/render/CameraItemInterface;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mMiscTexManager:Lcom/android/camera/dualvideo/render/MiscTextureManager;

    invoke-interface {p3, v0}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->getSwitchHandleArea(Lcom/android/camera/dualvideo/render/MiscTextureManager;)Landroid/graphics/Rect;

    move-result-object p3

    if-eqz p3, :cond_0

    const/16 v0, -0xa

    invoke-virtual {p3, v0, v0}, Landroid/graphics/Rect;->inset(II)V

    invoke-virtual {p3, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public captureVideoSnapshot(Lcom/android/camera/dualvideo/DualVideoRecordModule$JpegPictureCallback;ILandroid/hardware/camera2/CaptureResult;)V
    .locals 4

    iget-object v0, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mSnapPending:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mSnapPending:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iput-object p1, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mJpegCallback:Lcom/android/camera/dualvideo/DualVideoRecordModule$JpegPictureCallback;

    iput-object p3, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mCaptureResult:Landroid/hardware/camera2/CaptureResult;

    iget-object p1, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mSnapAnimDualVideoTimer:Lcom/android/camera/dualvideo/render/DualVideoTimer;

    const-wide/16 v2, 0x3c

    invoke-virtual {p1, v2, v3}, Lcom/android/camera/dualvideo/render/DualVideoTimer;->init(J)V

    const/4 p1, -0x1

    if-ne p2, p1, :cond_1

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mSnapOrientation:I

    goto :goto_0

    :cond_1
    iput p2, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mSnapOrientation:I

    :goto_0
    iget p1, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mStatCaptureTimes:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mStatCaptureTimes:I

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-direct {p0}, Lcom/android/camera/dualvideo/render/RenderManager;->canTouch()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0, p1}, Lcom/android/camera/dualvideo/render/RenderManager;->handleScaling(Landroid/view/MotionEvent;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mListener:Lcom/android/camera/dualvideo/render/RenderManager$DualVideoRenderListener;

    invoke-interface {p1}, Lcom/android/camera/dualvideo/render/RenderManager$DualVideoRenderListener;->onLayoutTypeChanged()V

    invoke-direct {p0}, Lcom/android/camera/dualvideo/render/RenderManager;->changeBottomIconBackground()V

    invoke-direct {p0}, Lcom/android/camera/dualvideo/render/RenderManager;->updateSelectDataWhenRenderLayoutChanged()V

    return v1

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/camera/dualvideo/render/RenderManager;->handleSwitch(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mListener:Lcom/android/camera/dualvideo/render/RenderManager$DualVideoRenderListener;

    invoke-interface {p1}, Lcom/android/camera/dualvideo/render/RenderManager$DualVideoRenderListener;->onSwitchClicked()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mCameraItemManager:Lcom/android/camera/dualvideo/render/CameraItemManager;

    invoke-virtual {v0}, Lcom/android/camera/dualvideo/render/CameraItemManager;->hasMiniCameraItem()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mCameraItemManager:Lcom/android/camera/dualvideo/render/CameraItemManager;

    invoke-virtual {v0, p1}, Lcom/android/camera/dualvideo/render/CameraItemManager;->updateMiniWindowLocation(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_2
    iget-object v0, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mCameraItemManager:Lcom/android/camera/dualvideo/render/CameraItemManager;

    invoke-virtual {v0}, Lcom/android/camera/dualvideo/render/CameraItemManager;->isGridWindow()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mCameraItemManager:Lcom/android/camera/dualvideo/render/CameraItemManager;

    invoke-virtual {v0, p1}, Lcom/android/camera/dualvideo/render/CameraItemManager;->selectItem(Landroid/view/MotionEvent;)V

    return v1

    :cond_3
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public enableDrawBlur(Z)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mDrawBlur:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/android/camera/dualvideo/render/RenderManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableDrawBlur: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x3

    invoke-static {v2}, Lcom/android/camera/Util;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mDrawBlur:Z

    return-void
.end method

.method public genOrUpdateRenderSource(Lcom/android/camera/dualvideo/util/RenderSourceType;Landroid/util/Size;Lio/reactivex/CompletableEmitter;)Landroid/view/Surface;
    .locals 2

    sget-object v0, Lcom/android/camera/dualvideo/render/RenderManager;->TAG:Ljava/lang/String;

    const-string v1, "createRemoteCameraSurfaceIfNeed: "

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/camera/dualvideo/render/RenderManager;->startHandlerThread()V

    iget-object v0, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mRenderSources:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, LOooO0O0/OooO0OO/OooO00o/OooOOo/o00000Oo/oo000o;

    invoke-direct {v1, p1}, LOooO0O0/OooO0OO/OooO00o/OooOOo/o00000Oo/oo000o;-><init>(Lcom/android/camera/dualvideo/util/RenderSourceType;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->noneMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/android/camera/dualvideo/render/AuxRenderSource;

    iget-object v1, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mRenderHandler:Landroid/os/Handler;

    invoke-direct {v0, p1, v1, p3}, Lcom/android/camera/dualvideo/render/AuxRenderSource;-><init>(Lcom/android/camera/dualvideo/util/RenderSourceType;Landroid/os/Handler;Lio/reactivex/CompletableEmitter;)V

    invoke-virtual {v0, p2}, Lcom/android/camera/dualvideo/render/AuxRenderSource;->prepare(Landroid/util/Size;)V

    sget-object p2, Lcom/android/camera/dualvideo/util/RenderSourceType;->REMOTE_SOURCE:Lcom/android/camera/dualvideo/util/RenderSourceType;

    if-ne p1, p2, :cond_0

    invoke-virtual {v0}, Lcom/android/camera/dualvideo/render/AuxRenderSource;->makeDrawable()V

    :cond_0
    new-instance p2, Lcom/android/camera/dualvideo/render/RenderManager$2;

    invoke-direct {p2, p0, v0}, Lcom/android/camera/dualvideo/render/RenderManager$2;-><init>(Lcom/android/camera/dualvideo/render/RenderManager;Lcom/android/camera/dualvideo/render/AuxRenderSource;)V

    invoke-virtual {v0, p2}, Lcom/android/camera/dualvideo/render/AuxRenderSource;->setListener(Lcom/android/camera/dualvideo/render/RenderSource$SourceListener;)V

    iget-object p3, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mRenderLock:Ljava/lang/Object;

    monitor-enter p3

    :try_start_0
    iget-object p2, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mRenderSources:Ljava/util/ArrayList;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit p3

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    iget-object p3, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mRenderLock:Ljava/lang/Object;

    monitor-enter p3

    :try_start_1
    iget-object v0, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mRenderSources:Ljava/util/ArrayList;

    new-instance v1, LOooO0O0/OooO0OO/OooO00o/OooOOo/o00000Oo/o000000;

    invoke-direct {v1, p1, p2}, LOooO0O0/OooO0OO/OooO00o/OooOOo/o00000Oo/o000000;-><init>(Lcom/android/camera/dualvideo/util/RenderSourceType;Landroid/util/Size;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_0
    iget-object p2, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mRenderSources:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object p2

    new-instance p3, LOooO0O0/OooO0OO/OooO00o/OooOOo/o00000Oo/o0ooOoO;

    invoke-direct {p3, p1}, LOooO0O0/OooO0OO/OooO00o/OooOOo/o00000Oo/o0ooOoO;-><init>(Lcom/android/camera/dualvideo/util/RenderSourceType;)V

    invoke-interface {p2, p3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p1

    sget-object p2, LOooO0O0/OooO0OO/OooO00o/OooOOo/o00000Oo/o00Ooo;->OooO00o:LOooO0O0/OooO0OO/OooO00o/OooOOo/o00000Oo/o00Ooo;

    invoke-virtual {p1, p2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/Surface;

    return-object p1

    :catchall_1
    move-exception p1

    :try_start_2
    monitor-exit p3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public getCameraItemManager()Lcom/android/camera/dualvideo/render/CameraItemManager;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mCameraItemManager:Lcom/android/camera/dualvideo/render/CameraItemManager;

    return-object v0
.end method

.method public getIdByPosition(FF)I
    .locals 3

    iget-object v0, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mCameraItemManager:Lcom/android/camera/dualvideo/render/CameraItemManager;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/camera/dualvideo/render/CameraItemManager;->getVisibleRenderList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v2, LOooO0O0/OooO0OO/OooO00o/OooOOo/o00000Oo/o00oO0O;

    invoke-direct {v2, p1, p2}, LOooO0O0/OooO0OO/OooO00o/OooOOo/o00000Oo/o00oO0O;-><init>(FF)V

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p1

    sget-object p2, LOooO0O0/OooO0OO/OooO00o/OooOOo/o00000Oo/o00000OO;->OooO00o:LOooO0O0/OooO0OO/OooO00o/OooOOo/o00000Oo/o00000OO;

    invoke-virtual {p1, p2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public getMiscTextureManager()Lcom/android/camera/dualvideo/render/MiscTextureManager;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mMiscTexManager:Lcom/android/camera/dualvideo/render/MiscTextureManager;

    return-object v0
.end method

.method public getProcessorType()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getRenderComposeTypeByPosition(FF)Lcom/android/camera/dualvideo/render/LayoutType;
    .locals 2

    iget-object v0, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mCameraItemManager:Lcom/android/camera/dualvideo/render/CameraItemManager;

    if-nez v0, :cond_0

    sget-object p1, Lcom/android/camera/dualvideo/render/LayoutType;->UNDEFINED:Lcom/android/camera/dualvideo/render/LayoutType;

    return-object p1

    :cond_0
    invoke-virtual {v0}, Lcom/android/camera/dualvideo/render/CameraItemManager;->getRenderableList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, LOooO0O0/OooO0OO/OooO00o/OooOOo/o00000Oo/o00Oo0;

    invoke-direct {v1, p1, p2}, LOooO0O0/OooO0OO/OooO00o/OooOOo/o00000Oo/o00Oo0;-><init>(FF)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p1

    sget-object p2, LOooO0O0/OooO0OO/OooO00o/OooOOo/o00000Oo/OooO0OO;->OooO00o:LOooO0O0/OooO0OO/OooO00o/OooOOo/o00000Oo/OooO0OO;

    invoke-virtual {p1, p2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p1

    sget-object p2, Lcom/android/camera/dualvideo/render/LayoutType;->UNDEFINED:Lcom/android/camera/dualvideo/render/LayoutType;

    invoke-virtual {p1, p2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera/dualvideo/render/LayoutType;

    return-object p1
.end method

.method public hasMiniComposeType()Z
    .locals 2

    iget-object v0, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mCameraItemManager:Lcom/android/camera/dualvideo/render/CameraItemManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/camera/dualvideo/render/CameraItemManager;->getRenderableList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mCameraItemManager:Lcom/android/camera/dualvideo/render/CameraItemManager;

    invoke-virtual {v0}, Lcom/android/camera/dualvideo/render/CameraItemManager;->getRenderableList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, LOooO0O0/OooO0OO/OooO00o/OooOOo/o00000Oo/o0OO00O;->OooO00o:LOooO0O0/OooO0OO/OooO00o/OooOOo/o00000Oo/o0OO00O;

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public isAnimating()Z
    .locals 1

    iget-object v0, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mCameraItemManager:Lcom/android/camera/dualvideo/render/CameraItemManager;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/android/camera/dualvideo/render/CameraItemManager;->isAnimating()Z

    move-result v0

    return v0
.end method

.method public isDrawBlur()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mDrawBlur:Z

    return v0
.end method

.method public isProcessorReady()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isRecording()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mNeedRecording:Z

    return v0
.end method

.method public isZoomEnabled()Z
    .locals 2

    iget-object v0, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mCameraItemManager:Lcom/android/camera/dualvideo/render/CameraItemManager;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/android/camera/dualvideo/render/CameraItemManager;->getRenderableList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, LOooO0O0/OooO0OO/OooO00o/OooOOo/o00000Oo/o00oO0o;->OooO00o:LOooO0O0/OooO0OO/OooO00o/OooOOo/o00000Oo/o00oO0o;

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->noneMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public onDrawFrame(Lcom/android/gallery3d/ui/GLCanvasImpl;Lcom/android/camera/CameraScreenNail;)V
    .locals 4

    invoke-virtual {p1}, Lcom/android/gallery3d/ui/BaseGLCanvas;->clearBuffer()V

    const/16 v0, 0x10

    new-array v0, v0, [F

    invoke-virtual {p2}, Lcom/android/camera/SurfaceTextureScreenNail;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    invoke-virtual {p2}, Lcom/android/camera/CameraScreenNail;->getDisplayRect()Landroid/graphics/Rect;

    move-result-object v1

    if-nez v1, :cond_0

    sget-object p1, Lcom/android/camera/dualvideo/render/RenderManager;->TAG:Ljava/lang/String;

    const-string p2, "onDrawFrame: display rect is null"

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mBlurRect:Landroid/graphics/Rect;

    if-nez v2, :cond_1

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v2, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mBlurRect:Landroid/graphics/Rect;

    :cond_1
    new-instance v2, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    invoke-virtual {p2}, Lcom/android/camera/SurfaceTextureScreenNail;->getExtTexture()Lcom/android/gallery3d/ui/ExtTexture;

    move-result-object v3

    invoke-direct {v2, v3, v0, v1}, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;-><init>(Lcom/android/gallery3d/ui/ExtTexture;[FLandroid/graphics/Rect;)V

    invoke-virtual {p0, p1, v2}, Lcom/android/camera/dualvideo/render/RenderManager;->onDrawFrame(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mBlurRect:Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/camera/dualvideo/render/RenderManager;->drawBlur(Lcom/android/gallery3d/ui/GLCanvasImpl;Lcom/android/camera/CameraScreenNail;Landroid/graphics/Rect;[F)V

    :cond_2
    return-void
.end method

.method public onDrawFrame(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;)Z
    .locals 0

    iput-object p2, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mMainDrawAttribute:Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    iget-object p2, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mRenderLock:Ljava/lang/Object;

    monitor-enter p2

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/camera/dualvideo/render/RenderManager;->drawDualVideo(Lcom/android/gallery3d/ui/GLCanvas;)Z

    move-result p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-boolean p2, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mDrawBlur:Z

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mListener:Lcom/android/camera/dualvideo/render/RenderManager$DualVideoRenderListener;

    invoke-interface {p2}, Lcom/android/camera/dualvideo/render/RenderManager$DualVideoRenderListener;->onRenderRequestNeeded()V

    :cond_0
    return p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public release()V
    .locals 2

    sget-object v0, Lcom/android/camera/dualvideo/render/RenderManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "release: "

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mRenderLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mJpegCallback:Lcom/android/camera/dualvideo/DualVideoRecordModule$JpegPictureCallback;

    invoke-direct {p0}, Lcom/android/camera/dualvideo/render/RenderManager;->releaseRecordingRelated()V

    invoke-direct {p0}, Lcom/android/camera/dualvideo/render/RenderManager;->releaseSurfaceTexture()V

    iget-object v1, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mMiscTexManager:Lcom/android/camera/dualvideo/render/MiscTextureManager;

    invoke-virtual {v1}, Lcom/android/camera/dualvideo/render/MiscTextureManager;->release()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public releaseSourceType(Lcom/android/camera/dualvideo/util/RenderSourceType;)V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mRenderLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mRenderSources:Ljava/util/ArrayList;

    new-instance v2, LOooO0O0/OooO0OO/OooO00o/OooOOo/o00000Oo/o0000Ooo;

    invoke-direct {v2, p1}, LOooO0O0/OooO0OO/OooO00o/OooOOo/o00000Oo/o0000Ooo;-><init>(Lcom/android/camera/dualvideo/util/RenderSourceType;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setListener(Lcom/android/camera/dualvideo/render/RenderManager$DualVideoRenderListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mListener:Lcom/android/camera/dualvideo/render/RenderManager$DualVideoRenderListener;

    return-void
.end method

.method public setOrientation(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mMiscTexManager:Lcom/android/camera/dualvideo/render/MiscTextureManager;

    invoke-virtual {v0, p1}, Lcom/android/camera/dualvideo/render/MiscTextureManager;->setTexTransDegree(I)V

    return-void
.end method

.method public setResources(Landroid/content/res/Resources;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mResources:Landroid/content/res/Resources;

    return-void
.end method

.method public startRecording(Landroid/opengl/EGLContext;Landroid/util/SparseArray;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/opengl/EGLContext;",
            "Landroid/util/SparseArray<",
            "Landroid/view/Surface;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/android/camera/dualvideo/render/RenderManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "startRecording: "

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mSnapReader:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mSnapRenderHandler:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mRecordRenderHandler:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/android/camera/dualvideo/util/Assert;->check(Z)V

    iget-object v0, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mRenderLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v3, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mRecordRenderHandler:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-nez v3, :cond_1

    move v3, v1

    :goto_1
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    invoke-virtual {p2, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-virtual {p2, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/Surface;

    sget-object v6, Lcom/android/camera/dualvideo/render/RenderManager;->TAG:Ljava/lang/String;

    sget-object v7, Lcom/android/camera/dualvideo/render/RenderUtil;->OUTPUT_SIZE:Landroid/util/Size;

    invoke-virtual {v7}, Landroid/util/Size;->getWidth()I

    move-result v7

    sget-object v8, Lcom/android/camera/dualvideo/render/RenderUtil;->OUTPUT_SIZE:Landroid/util/Size;

    invoke-virtual {v8}, Landroid/util/Size;->getHeight()I

    move-result v8

    invoke-static {v6, v7, v8}, Lcom/android/camera/module/encoder/RenderHandler;->createHandler(Ljava/lang/String;II)Lcom/android/camera/module/encoder/RenderHandler;

    move-result-object v6

    invoke-virtual {v6, p1, v5, v2}, Lcom/android/camera/module/encoder/RenderHandler;->setEglContext(Landroid/opengl/EGLContext;Ljava/lang/Object;Z)V

    iget-object v5, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mRecordRenderHandler:Landroid/util/SparseArray;

    invoke-virtual {v5, v4, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-direct {p0, p1}, Lcom/android/camera/dualvideo/render/RenderManager;->prepareForCapture(Landroid/opengl/EGLContext;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    iput-boolean v2, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mNeedRecording:Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput v1, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mStatCaptureTimes:I

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public stopRecording()V
    .locals 3

    sget-object v0, Lcom/android/camera/dualvideo/render/RenderManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "stopRecording: "

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mRenderLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mNeedRecording:Z

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mJpegCallback:Lcom/android/camera/dualvideo/DualVideoRecordModule$JpegPictureCallback;

    invoke-direct {p0}, Lcom/android/camera/dualvideo/render/RenderManager;->releaseRecordingRelated()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput v1, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mStatCaptureTimes:I

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public switchToGridWindow()V
    .locals 2

    sget-object v0, Lcom/android/camera/dualvideo/render/RenderManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "switchToGridWindow: "

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mCameraItemManager:Lcom/android/camera/dualvideo/render/CameraItemManager;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mDrawBlur:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/dualvideo/render/RenderManager;->triggerUpdateBlurTex()V

    iget-object v0, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mCameraItemManager:Lcom/android/camera/dualvideo/render/CameraItemManager;

    invoke-virtual {v0}, Lcom/android/camera/dualvideo/render/CameraItemManager;->switchRecordToGridWindow()V

    iget-object v0, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mCameraItemManager:Lcom/android/camera/dualvideo/render/CameraItemManager;

    invoke-virtual {v0}, Lcom/android/camera/dualvideo/render/CameraItemManager;->printRenderList()V

    :cond_0
    return-void
.end method

.method public switchToRecordWindow()V
    .locals 2

    sget-object v0, Lcom/android/camera/dualvideo/render/RenderManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "switchToRecordWindow: "

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mCameraItemManager:Lcom/android/camera/dualvideo/render/CameraItemManager;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mDrawBlur:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/dualvideo/render/RenderManager;->triggerUpdateBlurTex()V

    iget-object v0, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mCameraItemManager:Lcom/android/camera/dualvideo/render/CameraItemManager;

    invoke-virtual {v0}, Lcom/android/camera/dualvideo/render/CameraItemManager;->switchGridToRecordWindow()V

    :cond_0
    return-void
.end method

.method public switchTopBottom()Z
    .locals 2

    sget-object v0, Lcom/android/camera/dualvideo/render/RenderManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "switchTopBottom: "

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mCameraItemManager:Lcom/android/camera/dualvideo/render/CameraItemManager;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/camera/dualvideo/render/CameraItemManager;->switchTopBottom()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/camera/dualvideo/render/RenderManager;->switchSelectIndex()V

    :cond_0
    invoke-direct {p0}, Lcom/android/camera/dualvideo/render/RenderManager;->updateSelectDataWhenRenderLayoutChanged()V

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public triggerUpdateBlurTex()V
    .locals 3

    sget-object v0, Lcom/android/camera/dualvideo/render/RenderManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "triggerUpdateBlurTex: "

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mUpdateBlurConditionVar:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mNeedUpdateBlurTex:Z

    iget-object v0, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mUpdateBlurConditionVar:Landroid/os/ConditionVariable;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/os/ConditionVariable;->block(J)Z

    return-void
.end method

.method public updateRenderData()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mCameraItemManager:Lcom/android/camera/dualvideo/render/CameraItemManager;

    invoke-static {v0}, Lcom/android/camera/dualvideo/render/UpdateHelper;->updateCameraItemList(Lcom/android/camera/dualvideo/render/CameraItemManager;)V

    return-void
.end method

.method public updateRenderDataAnyway()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mCameraItemManager:Lcom/android/camera/dualvideo/render/CameraItemManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/dualvideo/render/CameraItemManager;->updateRenderlistAnyway(Z)V

    return-void
.end method

.method public updateTextureId()V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mRenderLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mCameraItemManager:Lcom/android/camera/dualvideo/render/CameraItemManager;

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    sget-object v2, LOooO0O0/OooO0OO/OooO00o/OooOOo/o00000Oo/o0O0O00;->OooO00o:LOooO0O0/OooO0OO/OooO00o/OooOOo/o00000Oo/o0O0O00;

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
