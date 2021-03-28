.class public Lcom/ss/android/vesdk/model/BefTextLayoutResult;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public bitmap:Landroid/graphics/Bitmap;

.field public height:I

.field public lineCount:I

.field public width:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/ss/android/vesdk/model/BefTextLayoutResult;->bitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Lcom/ss/android/vesdk/model/BefTextLayoutResult;->height:I

    return v0
.end method

.method public getLineCount()I
    .locals 1

    iget v0, p0, Lcom/ss/android/vesdk/model/BefTextLayoutResult;->lineCount:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Lcom/ss/android/vesdk/model/BefTextLayoutResult;->width:I

    return v0
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/vesdk/model/BefTextLayoutResult;->bitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setHeight(I)V
    .locals 0

    iput p1, p0, Lcom/ss/android/vesdk/model/BefTextLayoutResult;->height:I

    return-void
.end method

.method public setLineCount(I)V
    .locals 0

    iput p1, p0, Lcom/ss/android/vesdk/model/BefTextLayoutResult;->lineCount:I

    return-void
.end method

.method public setWidth(I)V
    .locals 0

    iput p1, p0, Lcom/ss/android/vesdk/model/BefTextLayoutResult;->width:I

    return-void
.end method
