.class public Lcom/ss/android/ttve/nativePort/TEImageFactory$ImageInfo;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/ttve/nativePort/TEImageFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImageInfo"
.end annotation


# instance fields
.field public bitmap:Landroid/graphics/Bitmap;

.field public height:I

.field public mimeType:Ljava/lang/String;

.field public rotation:I

.field public width:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/ss/android/ttve/nativePort/TEImageFactory$ImageInfo;->rotation:I

    return-void
.end method


# virtual methods
.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/ss/android/ttve/nativePort/TEImageFactory$ImageInfo;->bitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Lcom/ss/android/ttve/nativePort/TEImageFactory$ImageInfo;->height:I

    return v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ss/android/ttve/nativePort/TEImageFactory$ImageInfo;->mimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getRotation()I
    .locals 1

    iget v0, p0, Lcom/ss/android/ttve/nativePort/TEImageFactory$ImageInfo;->rotation:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Lcom/ss/android/ttve/nativePort/TEImageFactory$ImageInfo;->width:I

    return v0
.end method
