.class public Lcom/ss/android/vesdk/TERecorder$4$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/vesdk/TERecorder$4;->onOpenGLCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/ss/android/vesdk/TERecorder$4;


# direct methods
.method public constructor <init>(Lcom/ss/android/vesdk/TERecorder$4;)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/vesdk/TERecorder$4$1;->this$1:Lcom/ss/android/vesdk/TERecorder$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 2

    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder$4$1;->this$1:Lcom/ss/android/vesdk/TERecorder$4;

    iget-object v0, v0, Lcom/ss/android/vesdk/TERecorder$4;->this$0:Lcom/ss/android/vesdk/TERecorder;

    invoke-static {v0}, Lcom/ss/android/vesdk/TERecorder;->access$200(Lcom/ss/android/vesdk/TERecorder;)Lcom/ss/android/medialib/FaceBeautyInvoker;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/ss/android/vesdk/TERecorder;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OnFrameAvailable encounter mNativeInvoker == null"

    invoke-static {p1, v0}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder$4$1;->this$1:Lcom/ss/android/vesdk/TERecorder$4;

    invoke-static {v0, p1}, Lcom/ss/android/vesdk/TERecorder$4;->access$600(Lcom/ss/android/vesdk/TERecorder$4;Landroid/graphics/SurfaceTexture;)[F

    move-result-object p1

    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder$4$1;->this$1:Lcom/ss/android/vesdk/TERecorder$4;

    iget-object v0, v0, Lcom/ss/android/vesdk/TERecorder$4;->this$0:Lcom/ss/android/vesdk/TERecorder;

    invoke-static {v0}, Lcom/ss/android/vesdk/TERecorder;->access$200(Lcom/ss/android/vesdk/TERecorder;)Lcom/ss/android/medialib/FaceBeautyInvoker;

    move-result-object v0

    iget-object v1, p0, Lcom/ss/android/vesdk/TERecorder$4$1;->this$1:Lcom/ss/android/vesdk/TERecorder$4;

    iget-object v1, v1, Lcom/ss/android/vesdk/TERecorder$4;->this$0:Lcom/ss/android/vesdk/TERecorder;

    invoke-static {v1}, Lcom/ss/android/vesdk/TERecorder;->access$500(Lcom/ss/android/vesdk/TERecorder;)Lcom/ss/android/vesdk/TERecorder$Texture;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ss/android/vesdk/TERecorder$Texture;->getTextureID()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/ss/android/medialib/FaceBeautyInvoker;->onDrawFrame(I[F)I

    return-void
.end method
