.class public Lcom/android/gallery3d/ui/RawTexture;
.super Lcom/android/gallery3d/ui/BasicTexture;
.source ""


# static fields
.field public static final TAG:Ljava/lang/String; = "RawTexture"

.field public static final sTextureId:[I


# instance fields
.field public final mOpaque:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    new-array v0, v0, [I

    sput-object v0, Lcom/android/gallery3d/ui/RawTexture;->sTextureId:[I

    return-void
.end method

.method public constructor <init>(IIZ)V
    .locals 0

    invoke-direct {p0}, Lcom/android/gallery3d/ui/BasicTexture;-><init>()V

    iput-boolean p3, p0, Lcom/android/gallery3d/ui/RawTexture;->mOpaque:Z

    invoke-virtual {p0, p1, p2}, Lcom/android/gallery3d/ui/BasicTexture;->setSize(II)V

    return-void
.end method


# virtual methods
.method public getTarget()I
    .locals 1

    const/16 v0, 0xde1

    return v0
.end method

.method public isOpaque()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/gallery3d/ui/RawTexture;->mOpaque:Z

    return v0
.end method

.method public onBind(Lcom/android/gallery3d/ui/GLCanvas;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/gallery3d/ui/BasicTexture;->isLoaded()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const-string p1, "RawTexture"

    const-string v0, "lost the content due to context change"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1
.end method

.method public prepare(Lcom/android/gallery3d/ui/GLCanvas;)V
    .locals 14

    sget-object v0, Lcom/android/gallery3d/ui/RawTexture;->sTextureId:[I

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    sget-object v0, Lcom/android/gallery3d/ui/RawTexture;->sTextureId:[I

    aget v0, v0, v2

    const/16 v3, 0xde1

    invoke-static {v3, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const v0, 0x812f

    const/16 v4, 0x2802

    invoke-static {v3, v4, v0}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v4, 0x2803

    invoke-static {v3, v4, v0}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const v0, 0x46180400    # 9729.0f

    const/16 v4, 0x2801

    invoke-static {v3, v4, v0}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v4, 0x2800

    invoke-static {v3, v4, v0}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    invoke-virtual {p0}, Lcom/android/gallery3d/ui/BasicTexture;->getTextureWidth()I

    move-result v8

    invoke-virtual {p0}, Lcom/android/gallery3d/ui/BasicTexture;->getTextureHeight()I

    move-result v9

    const/16 v5, 0xde1

    const/4 v6, 0x0

    const/16 v7, 0x1908

    const/4 v10, 0x0

    const/16 v11, 0x1908

    const/16 v12, 0x1401

    const/4 v13, 0x0

    invoke-static/range {v5 .. v13}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "prepare textureSize="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/gallery3d/ui/BasicTexture;->getTextureWidth()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "x"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/gallery3d/ui/BasicTexture;->getTextureHeight()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " id="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/android/gallery3d/ui/RawTexture;->sTextureId:[I

    aget v3, v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "RawTexture"

    invoke-static {v3, v0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/gallery3d/ui/RawTexture;->sTextureId:[I

    aget v0, v0, v2

    iput v0, p0, Lcom/android/gallery3d/ui/BasicTexture;->mId:I

    iput v1, p0, Lcom/android/gallery3d/ui/BasicTexture;->mState:I

    invoke-virtual {p0, p1}, Lcom/android/gallery3d/ui/BasicTexture;->setAssociatedCanvas(Lcom/android/gallery3d/ui/GLCanvas;)V

    return-void
.end method

.method public yield()V
    .locals 0

    return-void
.end method
