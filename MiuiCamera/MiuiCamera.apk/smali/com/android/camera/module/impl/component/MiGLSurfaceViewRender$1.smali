.class public Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;


# direct methods
.method public constructor <init>(Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender$1;->this$0:Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "camera surceface texture available: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MiGLSurfaceViewRender"

    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender$1;->this$0:Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;

    invoke-static {p1}, Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;->access$000(Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;)Landroid/opengl/GLSurfaceView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/opengl/GLSurfaceView;->requestRender()V

    return-void
.end method
