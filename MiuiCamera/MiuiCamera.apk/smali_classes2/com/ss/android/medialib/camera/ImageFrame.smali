.class public Lcom/ss/android/medialib/camera/ImageFrame;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final BMP:I = 0x2

.field public static final JPEG:I = 0x1

.field public static final NV21:I = -0x3

.field public static final PNG:I = 0x0

.field public static final UNKNOW:I = -0x1

.field public static final YUV_888:I = -0x2


# instance fields
.field public bitmap:Landroid/graphics/Bitmap;

.field public format:I

.field public height:I

.field public mBuf:[B

.field public mPlans:[Landroid/media/Image$Plane;

.field public width:I


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ss/android/medialib/camera/ImageFrame;->bitmap:Landroid/graphics/Bitmap;

    iput p2, p0, Lcom/ss/android/medialib/camera/ImageFrame;->format:I

    return-void
.end method

.method public constructor <init>([BIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ss/android/medialib/camera/ImageFrame;->mBuf:[B

    iput p2, p0, Lcom/ss/android/medialib/camera/ImageFrame;->format:I

    iput p3, p0, Lcom/ss/android/medialib/camera/ImageFrame;->width:I

    iput p4, p0, Lcom/ss/android/medialib/camera/ImageFrame;->height:I

    return-void
.end method

.method public constructor <init>([Landroid/media/Image$Plane;III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ss/android/medialib/camera/ImageFrame;->mPlans:[Landroid/media/Image$Plane;

    iput p2, p0, Lcom/ss/android/medialib/camera/ImageFrame;->format:I

    iput p3, p0, Lcom/ss/android/medialib/camera/ImageFrame;->width:I

    iput p4, p0, Lcom/ss/android/medialib/camera/ImageFrame;->height:I

    return-void
.end method


# virtual methods
.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/ss/android/medialib/camera/ImageFrame;->bitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getBuf()[B
    .locals 1

    iget-object v0, p0, Lcom/ss/android/medialib/camera/ImageFrame;->mBuf:[B

    return-object v0
.end method

.method public getFormat()I
    .locals 1

    iget v0, p0, Lcom/ss/android/medialib/camera/ImageFrame;->format:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Lcom/ss/android/medialib/camera/ImageFrame;->height:I

    return v0
.end method

.method public getPlans()[Landroid/media/Image$Plane;
    .locals 1

    iget-object v0, p0, Lcom/ss/android/medialib/camera/ImageFrame;->mPlans:[Landroid/media/Image$Plane;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Lcom/ss/android/medialib/camera/ImageFrame;->width:I

    return v0
.end method

.method public setBuf([B)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/medialib/camera/ImageFrame;->mBuf:[B

    return-void
.end method

.method public setHeight(I)V
    .locals 0

    iput p1, p0, Lcom/ss/android/medialib/camera/ImageFrame;->height:I

    return-void
.end method

.method public setWidth(I)V
    .locals 0

    iput p1, p0, Lcom/ss/android/medialib/camera/ImageFrame;->width:I

    return-void
.end method
