.class public Lcom/ss/android/vesdk/VEEditor$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/vesdk/VEEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/ss/android/vesdk/VEEditor;


# direct methods
.method public constructor <init>(Lcom/ss/android/vesdk/VEEditor;)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/vesdk/VEEditor$3;->this$0:Lcom/ss/android/vesdk/VEEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    iget-object p2, p0, Lcom/ss/android/vesdk/VEEditor$3;->this$0:Lcom/ss/android/vesdk/VEEditor;

    invoke-static {p2}, Lcom/ss/android/vesdk/VEEditor;->access$1000(Lcom/ss/android/vesdk/VEEditor;)Landroid/graphics/SurfaceTexture;

    move-result-object p2

    if-ne p2, p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/ss/android/vesdk/VEEditor$3;->this$0:Lcom/ss/android/vesdk/VEEditor;

    new-instance p3, Landroid/view/Surface;

    invoke-direct {p3, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    invoke-static {p2, p3}, Lcom/ss/android/vesdk/VEEditor;->access$1102(Lcom/ss/android/vesdk/VEEditor;Landroid/view/Surface;)Landroid/view/Surface;

    :goto_0
    iget-object p2, p0, Lcom/ss/android/vesdk/VEEditor$3;->this$0:Lcom/ss/android/vesdk/VEEditor;

    invoke-static {p2}, Lcom/ss/android/vesdk/VEEditor;->access$1100(Lcom/ss/android/vesdk/VEEditor;)Landroid/view/Surface;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/ss/android/vesdk/VEEditor;->access$1200(Lcom/ss/android/vesdk/VEEditor;Landroid/view/Surface;)V

    iget-object p2, p0, Lcom/ss/android/vesdk/VEEditor$3;->this$0:Lcom/ss/android/vesdk/VEEditor;

    invoke-static {p2, p1}, Lcom/ss/android/vesdk/VEEditor;->access$1002(Lcom/ss/android/vesdk/VEEditor;Landroid/graphics/SurfaceTexture;)Landroid/graphics/SurfaceTexture;

    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 0

    iget-object p1, p0, Lcom/ss/android/vesdk/VEEditor$3;->this$0:Lcom/ss/android/vesdk/VEEditor;

    invoke-static {p1}, Lcom/ss/android/vesdk/VEEditor;->access$1600(Lcom/ss/android/vesdk/VEEditor;)V

    iget-object p1, p0, Lcom/ss/android/vesdk/VEEditor$3;->this$0:Lcom/ss/android/vesdk/VEEditor;

    invoke-static {p1}, Lcom/ss/android/vesdk/VEEditor;->access$1100(Lcom/ss/android/vesdk/VEEditor;)Landroid/view/Surface;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Surface;->release()V

    const/4 p1, 0x1

    return p1
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    iget-object p1, p0, Lcom/ss/android/vesdk/VEEditor$3;->this$0:Lcom/ss/android/vesdk/VEEditor;

    invoke-static {p1, p2}, Lcom/ss/android/vesdk/VEEditor;->access$1302(Lcom/ss/android/vesdk/VEEditor;I)I

    iget-object p1, p0, Lcom/ss/android/vesdk/VEEditor$3;->this$0:Lcom/ss/android/vesdk/VEEditor;

    invoke-static {p1, p3}, Lcom/ss/android/vesdk/VEEditor;->access$1402(Lcom/ss/android/vesdk/VEEditor;I)I

    iget-object p1, p0, Lcom/ss/android/vesdk/VEEditor$3;->this$0:Lcom/ss/android/vesdk/VEEditor;

    invoke-static {p1}, Lcom/ss/android/vesdk/VEEditor;->access$1500(Lcom/ss/android/vesdk/VEEditor;)V

    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    return-void
.end method
