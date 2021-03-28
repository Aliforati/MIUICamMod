.class public Lcom/android/camera/dualvideo/render/AuxRenderSource;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/camera/dualvideo/render/RenderSource;


# static fields
.field public static final SKIP_FRAMES:I = 0x2

.field public static final TAG:Ljava/lang/String; = "RenderSource"


# instance fields
.field public mCanDraw:Z

.field public mFrameReady:Z

.field public mFramesNeedSkip:I

.field public mGLStatusEmitter:Lio/reactivex/CompletableEmitter;

.field public mHandler:Landroid/os/Handler;

.field public mListener:Lcom/android/camera/dualvideo/render/RenderSource$SourceListener;

.field public final mSourceType:Lcom/android/camera/dualvideo/util/RenderSourceType;

.field public mSurface:Landroid/view/Surface;

.field public mSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field public mTexture:Lcom/android/gallery3d/ui/ExtTexture;

.field public mTextureSize:Landroid/util/Size;


# direct methods
.method public constructor <init>(Lcom/android/camera/dualvideo/util/RenderSourceType;Landroid/os/Handler;Lio/reactivex/CompletableEmitter;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/camera/dualvideo/render/AuxRenderSource;->mFramesNeedSkip:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/dualvideo/render/AuxRenderSource;->mCanDraw:Z

    iput-object p1, p0, Lcom/android/camera/dualvideo/render/AuxRenderSource;->mSourceType:Lcom/android/camera/dualvideo/util/RenderSourceType;

    iput-object p2, p0, Lcom/android/camera/dualvideo/render/AuxRenderSource;->mHandler:Landroid/os/Handler;

    iput-object p3, p0, Lcom/android/camera/dualvideo/render/AuxRenderSource;->mGLStatusEmitter:Lio/reactivex/CompletableEmitter;

    invoke-direct {p0}, Lcom/android/camera/dualvideo/render/AuxRenderSource;->resetStatus()V

    return-void
.end method

.method private createSurfaceTexture()V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/dualvideo/render/AuxRenderSource;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/SurfaceTexture;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v0, p0, Lcom/android/camera/dualvideo/render/AuxRenderSource;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    :cond_0
    iget-object v0, p0, Lcom/android/camera/dualvideo/render/AuxRenderSource;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    iget-object v1, p0, Lcom/android/camera/dualvideo/render/AuxRenderSource;->mTextureSize:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/camera/dualvideo/render/AuxRenderSource;->mTextureSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    new-instance v0, Landroid/view/Surface;

    iget-object v1, p0, Lcom/android/camera/dualvideo/render/AuxRenderSource;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-direct {v0, v1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v0, p0, Lcom/android/camera/dualvideo/render/AuxRenderSource;->mSurface:Landroid/view/Surface;

    iget-object v0, p0, Lcom/android/camera/dualvideo/render/AuxRenderSource;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    new-instance v1, LOooO0O0/OooO0OO/OooO00o/OooOOo/o00000Oo/OooO0oO;

    invoke-direct {v1, p0}, LOooO0O0/OooO0OO/OooO00o/OooOOo/o00000Oo/OooO0oO;-><init>(Lcom/android/camera/dualvideo/render/AuxRenderSource;)V

    iget-object v2, p0, Lcom/android/camera/dualvideo/render/AuxRenderSource;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;Landroid/os/Handler;)V

    return-void
.end method

.method private getListener()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/android/camera/dualvideo/render/RenderSource$SourceListener;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/camera/dualvideo/render/AuxRenderSource;->mListener:Lcom/android/camera/dualvideo/render/RenderSource$SourceListener;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method private notifyTexReady()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/dualvideo/render/AuxRenderSource;->mGLStatusEmitter:Lio/reactivex/CompletableEmitter;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lio/reactivex/CompletableEmitter;->isDisposed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/dualvideo/render/AuxRenderSource;->mGLStatusEmitter:Lio/reactivex/CompletableEmitter;

    invoke-interface {v0}, Lio/reactivex/CompletableEmitter;->onComplete()V

    return-void

    :cond_1
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/dualvideo/render/AuxRenderSource;->mGLStatusEmitter:Lio/reactivex/CompletableEmitter;

    return-void
.end method

.method private resetStatus()V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/camera/dualvideo/render/AuxRenderSource;->mFramesNeedSkip:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/dualvideo/render/AuxRenderSource;->mFrameReady:Z

    iput-boolean v0, p0, Lcom/android/camera/dualvideo/render/AuxRenderSource;->mCanDraw:Z

    return-void
.end method


# virtual methods
.method public synthetic OooO00o(Landroid/graphics/SurfaceTexture;)V
    .locals 2

    iget-boolean p1, p0, Lcom/android/camera/dualvideo/render/AuxRenderSource;->mCanDraw:Z

    const/4 v0, 0x1

    if-nez p1, :cond_1

    iget p1, p0, Lcom/android/camera/dualvideo/render/AuxRenderSource;->mFramesNeedSkip:I

    const-string v1, "RenderSource"

    if-lez p1, :cond_0

    const-string p1, "frame skipped: "

    invoke-static {v1, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget p1, p0, Lcom/android/camera/dualvideo/render/AuxRenderSource;->mFramesNeedSkip:I

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/android/camera/dualvideo/render/AuxRenderSource;->mFramesNeedSkip:I

    goto :goto_0

    :cond_0
    const-string/jumbo p1, "subFrameReady"

    invoke-static {v1, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v0, p0, Lcom/android/camera/dualvideo/render/AuxRenderSource;->mCanDraw:Z

    invoke-direct {p0}, Lcom/android/camera/dualvideo/render/AuxRenderSource;->getListener()Ljava/util/Optional;

    move-result-object p1

    new-instance v1, LOooO0O0/OooO0OO/OooO00o/OooOOo/o00000Oo/OooO0o;

    invoke-direct {v1, p0}, LOooO0O0/OooO0OO/OooO00o/OooOOo/o00000Oo/OooO0o;-><init>(Lcom/android/camera/dualvideo/render/AuxRenderSource;)V

    invoke-virtual {p1, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_1
    :goto_0
    iput-boolean v0, p0, Lcom/android/camera/dualvideo/render/AuxRenderSource;->mFrameReady:Z

    invoke-direct {p0}, Lcom/android/camera/dualvideo/render/AuxRenderSource;->getListener()Ljava/util/Optional;

    move-result-object p1

    new-instance v0, LOooO0O0/OooO0OO/OooO00o/OooOOo/o00000Oo/OooO0o0;

    invoke-direct {v0, p0}, LOooO0O0/OooO0OO/OooO00o/OooOOo/o00000Oo/OooO0o0;-><init>(Lcom/android/camera/dualvideo/render/AuxRenderSource;)V

    invoke-virtual {p1, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public synthetic OooO00o(Lcom/android/camera/dualvideo/render/RenderSource$SourceListener;)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/dualvideo/render/AuxRenderSource;->mSourceType:Lcom/android/camera/dualvideo/util/RenderSourceType;

    invoke-interface {p1, v0}, Lcom/android/camera/dualvideo/render/RenderSource$SourceListener;->onNewStreamAvailable(Lcom/android/camera/dualvideo/util/RenderSourceType;)V

    return-void
.end method

.method public synthetic OooO0O0(Lcom/android/camera/dualvideo/render/RenderSource$SourceListener;)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/dualvideo/render/AuxRenderSource;->mSourceType:Lcom/android/camera/dualvideo/util/RenderSourceType;

    invoke-interface {p1, v0}, Lcom/android/camera/dualvideo/render/RenderSource$SourceListener;->onImageUpdated(Lcom/android/camera/dualvideo/util/RenderSourceType;)V

    return-void
.end method

.method public attachToGL(Lcom/android/gallery3d/ui/GLCanvas;)V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/dualvideo/render/AuxRenderSource;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/android/camera/dualvideo/util/Assert;->check(Z)V

    iget-object v0, p0, Lcom/android/camera/dualvideo/render/AuxRenderSource;->mTexture:Lcom/android/gallery3d/ui/ExtTexture;

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const-string v0, "RenderSource"

    const-string v1, "attachToGL: "

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/gallery3d/ui/ExtTexture;

    invoke-direct {v0}, Lcom/android/gallery3d/ui/ExtTexture;-><init>()V

    iput-object v0, p0, Lcom/android/camera/dualvideo/render/AuxRenderSource;->mTexture:Lcom/android/gallery3d/ui/ExtTexture;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/ui/ExtTexture;->onBind(Lcom/android/gallery3d/ui/GLCanvas;)Z

    iget-object p1, p0, Lcom/android/camera/dualvideo/render/AuxRenderSource;->mTexture:Lcom/android/gallery3d/ui/ExtTexture;

    iget-object v0, p0, Lcom/android/camera/dualvideo/render/AuxRenderSource;->mTextureSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/android/camera/dualvideo/render/AuxRenderSource;->mTextureSize:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/android/gallery3d/ui/BasicTexture;->setSize(II)V

    iget-object p1, p0, Lcom/android/camera/dualvideo/render/AuxRenderSource;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {p1}, Landroid/graphics/SurfaceTexture;->detachFromGLContext()V

    iget-object p1, p0, Lcom/android/camera/dualvideo/render/AuxRenderSource;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    iget-object v0, p0, Lcom/android/camera/dualvideo/render/AuxRenderSource;->mTexture:Lcom/android/gallery3d/ui/ExtTexture;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/BasicTexture;->getId()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/SurfaceTexture;->attachToGLContext(I)V

    invoke-direct {p0}, Lcom/android/camera/dualvideo/render/AuxRenderSource;->notifyTexReady()V

    return-void
.end method

.method public canDraw()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/dualvideo/render/AuxRenderSource;->mCanDraw:Z

    return v0
.end method

.method public getSourceType()Lcom/android/camera/dualvideo/util/RenderSourceType;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/dualvideo/render/AuxRenderSource;->mSourceType:Lcom/android/camera/dualvideo/util/RenderSourceType;

    return-object v0
.end method

.method public getSurface()Landroid/view/Surface;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/dualvideo/render/AuxRenderSource;->mSurface:Landroid/view/Surface;

    return-object v0
.end method

.method public getTexture()Lcom/android/gallery3d/ui/ExtTexture;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/dualvideo/render/AuxRenderSource;->mTexture:Lcom/android/gallery3d/ui/ExtTexture;

    return-object v0
.end method

.method public ismFrameReady()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/dualvideo/render/AuxRenderSource;->mFrameReady:Z

    return v0
.end method

.method public makeDrawable()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/dualvideo/render/AuxRenderSource;->mCanDraw:Z

    return-void
.end method

.method public prepare(Landroid/util/Size;)V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/dualvideo/render/AuxRenderSource;->mTextureSize:Landroid/util/Size;

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/android/camera/dualvideo/render/AuxRenderSource;->mTextureSize:Landroid/util/Size;

    invoke-direct {p0}, Lcom/android/camera/dualvideo/render/AuxRenderSource;->createSurfaceTexture()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Landroid/util/Size;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iput-object p1, p0, Lcom/android/camera/dualvideo/render/AuxRenderSource;->mTextureSize:Landroid/util/Size;

    iget-object v0, p0, Lcom/android/camera/dualvideo/render/AuxRenderSource;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    invoke-virtual {v0, v1, p1}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/android/camera/dualvideo/render/AuxRenderSource;->resetStatus()V

    return-void
.end method

.method public release()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/dualvideo/render/AuxRenderSource;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/camera/dualvideo/render/AuxRenderSource;->mCanDraw:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/dualvideo/render/AuxRenderSource;->mHandler:Landroid/os/Handler;

    iput-object v1, p0, Lcom/android/camera/dualvideo/render/AuxRenderSource;->mListener:Lcom/android/camera/dualvideo/render/RenderSource$SourceListener;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    iput-object v1, p0, Lcom/android/camera/dualvideo/render/AuxRenderSource;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    iget-object v0, p0, Lcom/android/camera/dualvideo/render/AuxRenderSource;->mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    iput-object v1, p0, Lcom/android/camera/dualvideo/render/AuxRenderSource;->mSurface:Landroid/view/Surface;

    :cond_1
    iget-object v0, p0, Lcom/android/camera/dualvideo/render/AuxRenderSource;->mTexture:Lcom/android/gallery3d/ui/ExtTexture;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/BasicTexture;->recycle()V

    iput-object v1, p0, Lcom/android/camera/dualvideo/render/AuxRenderSource;->mTexture:Lcom/android/gallery3d/ui/ExtTexture;

    :cond_2
    return-void
.end method

.method public setListener(Lcom/android/camera/dualvideo/render/RenderSource$SourceListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/dualvideo/render/AuxRenderSource;->mListener:Lcom/android/camera/dualvideo/render/RenderSource$SourceListener;

    return-void
.end method

.method public updateTexImage()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/dualvideo/render/AuxRenderSource;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    return-void
.end method
