.class public Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/ImageBufferUtil;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final COLOR_FormatI420:I = 0x1

.field public static final COLOR_FormatNV21:I = 0x2

.field public static data:[B

.field public static imageHeight:I

.field public static imageWidth:I

.field public static rowData:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDataFromImage(Landroid/media/Image;I)[B
    .locals 19

    move/from16 v0, p1

    const/4 v1, 0x0

    if-nez p0, :cond_0

    const-string v0, "image null"

    :goto_0
    invoke-static {v1, v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/LogUtil;->logE(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_0
    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v0, v3, :cond_1

    if-eq v0, v2, :cond_1

    const-string v0, "only support COLOR_FormatI420 and COLOR_FormatNV21"

    goto :goto_0

    :cond_1
    invoke-static/range {p0 .. p0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/ImageBufferUtil;->isImageFormatSupported(Landroid/media/Image;)Z

    move-result v4

    if-nez v4, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can\'t convert Image to byte array, format "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Landroid/media/Image;->getFormat()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/media/Image;->getCropRect()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Landroid/media/Image;->getFormat()I

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v7

    sget v8, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/ImageBufferUtil;->imageWidth:I

    const/4 v9, 0x0

    if-ne v8, v5, :cond_3

    sget v8, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/ImageBufferUtil;->imageHeight:I

    if-eq v8, v6, :cond_4

    :cond_3
    mul-int v8, v5, v6

    invoke-static {v4}, Landroid/graphics/ImageFormat;->getBitsPerPixel(I)I

    move-result v4

    mul-int/2addr v8, v4

    div-int/lit8 v8, v8, 0x8

    new-array v4, v8, [B

    sput-object v4, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/ImageBufferUtil;->data:[B

    aget-object v4, v7, v9

    invoke-virtual {v4}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v4

    new-array v4, v4, [B

    sput-object v4, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/ImageBufferUtil;->rowData:[B

    sput v5, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/ImageBufferUtil;->imageWidth:I

    sput v6, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/ImageBufferUtil;->imageHeight:I

    :cond_4
    move v10, v3

    move v4, v9

    move v8, v4

    :goto_1
    array-length v11, v7

    if-ge v4, v11, :cond_10

    if-eqz v4, :cond_9

    if-eq v4, v3, :cond_7

    if-eq v4, v2, :cond_5

    goto :goto_4

    :cond_5
    if-ne v0, v3, :cond_6

    mul-int v8, v5, v6

    int-to-double v10, v8

    const-wide/high16 v12, 0x3ff4000000000000L    # 1.25

    mul-double/2addr v10, v12

    double-to-int v8, v10

    goto :goto_2

    :cond_6
    if-ne v0, v2, :cond_a

    mul-int v8, v5, v6

    goto :goto_3

    :cond_7
    if-ne v0, v3, :cond_8

    mul-int v8, v5, v6

    :goto_2
    move v10, v3

    goto :goto_4

    :cond_8
    if-ne v0, v2, :cond_a

    mul-int v8, v5, v6

    add-int/2addr v8, v3

    :goto_3
    move v10, v2

    goto :goto_4

    :cond_9
    move v10, v3

    move v8, v9

    :cond_a
    :goto_4
    aget-object v11, v7, v4

    invoke-virtual {v11}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v11

    aget-object v12, v7, v4

    invoke-virtual {v12}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v12

    aget-object v13, v7, v4

    invoke-virtual {v13}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v13

    if-nez v4, :cond_b

    move v14, v9

    goto :goto_5

    :cond_b
    move v14, v3

    :goto_5
    shr-int v15, v5, v14

    shr-int v2, v6, v14

    iget v9, v1, Landroid/graphics/Rect;->top:I

    shr-int/2addr v9, v14

    mul-int/2addr v9, v12

    iget v3, v1, Landroid/graphics/Rect;->left:I

    shr-int/2addr v3, v14

    mul-int/2addr v3, v13

    add-int/2addr v9, v3

    invoke-virtual {v11, v9}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    const/4 v3, 0x0

    :goto_6
    if-ge v3, v2, :cond_f

    const/4 v9, 0x1

    if-ne v13, v9, :cond_c

    if-ne v10, v9, :cond_c

    sget-object v14, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/ImageBufferUtil;->data:[B

    invoke-virtual {v11, v14, v8, v15}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    add-int/2addr v8, v15

    move v14, v15

    const/4 v0, 0x0

    goto :goto_8

    :cond_c
    add-int/lit8 v14, v15, -0x1

    mul-int/2addr v14, v13

    add-int/2addr v14, v9

    sget-object v9, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/ImageBufferUtil;->rowData:[B

    const/4 v0, 0x0

    invoke-virtual {v11, v9, v0, v14}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    move v9, v0

    :goto_7
    if-ge v9, v15, :cond_d

    sget-object v16, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/ImageBufferUtil;->data:[B

    sget-object v17, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/ImageBufferUtil;->rowData:[B

    mul-int v18, v9, v13

    aget-byte v17, v17, v18

    aput-byte v17, v16, v8

    add-int/2addr v8, v10

    add-int/lit8 v9, v9, 0x1

    goto :goto_7

    :cond_d
    :goto_8
    add-int/lit8 v9, v2, -0x1

    if-ge v3, v9, :cond_e

    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->position()I

    move-result v9

    add-int/2addr v9, v12

    sub-int/2addr v9, v14

    invoke-virtual {v11, v9}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    :cond_e
    add-int/lit8 v3, v3, 0x1

    move/from16 v0, p1

    goto :goto_6

    :cond_f
    const/4 v0, 0x0

    add-int/lit8 v4, v4, 0x1

    move v9, v0

    const/4 v2, 0x2

    const/4 v3, 0x1

    move/from16 v0, p1

    goto/16 :goto_1

    :cond_10
    sget-object v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/ImageBufferUtil;->data:[B

    return-object v0
.end method

.method public static getNV21(Landroid/media/Image;)[B
    .locals 1

    const/4 v0, 0x2

    invoke-static {p0, v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/ImageBufferUtil;->getDataFromImage(Landroid/media/Image;I)[B

    move-result-object p0

    return-object p0
.end method

.method public static isImageFormatSupported(Landroid/media/Image;)Z
    .locals 1

    invoke-virtual {p0}, Landroid/media/Image;->getFormat()I

    move-result p0

    const/16 v0, 0x11

    if-eq p0, v0, :cond_0

    const/16 v0, 0x23

    if-eq p0, v0, :cond_0

    const v0, 0x32315659

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method
