.class public Lcom/android/camera/fragment/fullscreen/FragmentFullScreen$TextureListenerWrapper;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TextureListenerWrapper"
.end annotation


# instance fields
.field public mOnFrameUpdatedCallback:Lcom/android/camera/fragment/fullscreen/FragmentFullScreen$OnFrameUpdatedCallback;

.field public volatile mRequestCapture:Z

.field public mSuperListener:Landroid/view/TextureView$SurfaceTextureListener;

.field public mTextureHolder:Landroid/view/TextureView;

.field public final synthetic this$0:Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;


# direct methods
.method public constructor <init>(Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;Landroid/view/TextureView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen$TextureListenerWrapper;->this$0:Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen$TextureListenerWrapper;->mTextureHolder:Landroid/view/TextureView;

    invoke-virtual {p2}, Landroid/view/TextureView;->getSurfaceTextureListener()Landroid/view/TextureView$SurfaceTextureListener;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen$TextureListenerWrapper;->mSuperListener:Landroid/view/TextureView$SurfaceTextureListener;

    if-eqz p1, :cond_0

    invoke-virtual {p2, p0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "plz call this after videoEditor.init()~"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private getFrame()Landroid/graphics/Bitmap;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen$TextureListenerWrapper;->mTextureHolder:Landroid/view/TextureView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/TextureView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public clearRequest()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen$TextureListenerWrapper;->mOnFrameUpdatedCallback:Lcom/android/camera/fragment/fullscreen/FragmentFullScreen$OnFrameUpdatedCallback;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen$TextureListenerWrapper;->mRequestCapture:Z

    return-void
.end method

.method public hasCaptureRequest()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen$TextureListenerWrapper;->mRequestCapture:Z

    return v0
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen$TextureListenerWrapper;->mSuperListener:Landroid/view/TextureView$SurfaceTextureListener;

    invoke-interface {v0, p1, p2, p3}, Landroid/view/TextureView$SurfaceTextureListener;->onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onSurfaceTextureAvailable : "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "FullScreen"

    invoke-static {p2, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen$TextureListenerWrapper;->mSuperListener:Landroid/view/TextureView$SurfaceTextureListener;

    invoke-interface {v0, p1}, Landroid/view/TextureView$SurfaceTextureListener;->onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSurfaceTextureDestroyed : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "FullScreen"

    invoke-static {v1, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen$TextureListenerWrapper;->mSuperListener:Landroid/view/TextureView$SurfaceTextureListener;

    invoke-interface {v0, p1, p2, p3}, Landroid/view/TextureView$SurfaceTextureListener;->onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onSurfaceTextureAvailable : "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "FullScreen"

    invoke-static {p2, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen$TextureListenerWrapper;->mSuperListener:Landroid/view/TextureView$SurfaceTextureListener;

    invoke-interface {v0, p1}, Landroid/view/TextureView$SurfaceTextureListener;->onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V

    iget-object v0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen$TextureListenerWrapper;->this$0:Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;

    invoke-static {v0}, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->access$1200(Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen$TextureListenerWrapper;->this$0:Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;

    invoke-static {v0}, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->access$1000(Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSurfaceTextureUpdated : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FullScreen"

    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen$TextureListenerWrapper;->this$0:Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;

    invoke-direct {p0}, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen$TextureListenerWrapper;->getFrame()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->access$1302(Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    :cond_0
    iget-object p1, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen$TextureListenerWrapper;->mOnFrameUpdatedCallback:Lcom/android/camera/fragment/fullscreen/FragmentFullScreen$OnFrameUpdatedCallback;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen$OnFrameUpdatedCallback;->onUpdate()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen$TextureListenerWrapper;->mOnFrameUpdatedCallback:Lcom/android/camera/fragment/fullscreen/FragmentFullScreen$OnFrameUpdatedCallback;

    :cond_1
    return-void
.end method

.method public requestCapture()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen$TextureListenerWrapper;->mRequestCapture:Z

    return-void
.end method

.method public requestUpdateCallbackOnce(Lcom/android/camera/fragment/fullscreen/FragmentFullScreen$OnFrameUpdatedCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen$TextureListenerWrapper;->mOnFrameUpdatedCallback:Lcom/android/camera/fragment/fullscreen/FragmentFullScreen$OnFrameUpdatedCallback;

    return-void
.end method
