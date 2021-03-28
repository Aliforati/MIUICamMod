.class public Lcom/android/gallery3d/exif/ExifReader;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final TAG:Ljava/lang/String; = "ExifReader"


# instance fields
.field public final mInterface:Lcom/android/gallery3d/exif/ExifInterface;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/exif/ExifInterface;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/gallery3d/exif/ExifReader;->mInterface:Lcom/android/gallery3d/exif/ExifInterface;

    return-void
.end method


# virtual methods
.method public read(Ljava/io/InputStream;)Lcom/android/gallery3d/exif/ExifData;
    .locals 5

    iget-object v0, p0, Lcom/android/gallery3d/exif/ExifReader;->mInterface:Lcom/android/gallery3d/exif/ExifInterface;

    invoke-static {p1, v0}, Lcom/android/gallery3d/exif/ExifParser;->parse(Ljava/io/InputStream;Lcom/android/gallery3d/exif/ExifInterface;)Lcom/android/gallery3d/exif/ExifParser;

    move-result-object p1

    new-instance v0, Lcom/android/gallery3d/exif/ExifData;

    invoke-virtual {p1}, Lcom/android/gallery3d/exif/ExifParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/gallery3d/exif/ExifData;-><init>(Ljava/nio/ByteOrder;)V

    :goto_0
    invoke-virtual {p1}, Lcom/android/gallery3d/exif/ExifParser;->next()I

    move-result v1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_9

    if-eqz v1, :cond_8

    const/4 v2, 0x1

    if-eq v1, v2, :cond_6

    const/4 v2, 0x2

    if-eq v1, v2, :cond_5

    const/4 v2, 0x3

    const-string v3, "ExifReader"

    if-eq v1, v2, :cond_2

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/android/gallery3d/exif/ExifParser;->getStripSize()I

    move-result v1

    new-array v2, v1, [B

    invoke-virtual {p1, v2}, Lcom/android/gallery3d/exif/ExifParser;->read([B)I

    move-result v4

    if-ne v1, v4, :cond_1

    invoke-virtual {p1}, Lcom/android/gallery3d/exif/ExifParser;->getStripIndex()I

    move-result v1

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/exif/ExifData;->setStripBytes(I[B)V

    goto :goto_0

    :cond_1
    const-string v1, "Failed to read the strip bytes"

    :goto_1
    invoke-static {v3, v1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/android/gallery3d/exif/ExifParser;->getCompressedImageSize()I

    move-result v1

    if-lez v1, :cond_4

    new-array v2, v1, [B

    invoke-virtual {p1, v2}, Lcom/android/gallery3d/exif/ExifParser;->read([B)I

    move-result v4

    if-ne v1, v4, :cond_3

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/exif/ExifData;->setCompressedThumbnail([B)V

    goto :goto_0

    :cond_3
    const-string v1, "Failed to read the compressed thumbnail"

    goto :goto_1

    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "compressedImageSize="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Lcom/android/gallery3d/exif/ExifParser;->getTag()Lcom/android/gallery3d/exif/ExifTag;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/gallery3d/exif/ExifTag;->getDataType()S

    move-result v2

    const/4 v3, 0x7

    if-ne v2, v3, :cond_7

    invoke-virtual {p1, v1}, Lcom/android/gallery3d/exif/ExifParser;->readFullTagValue(Lcom/android/gallery3d/exif/ExifTag;)V

    goto :goto_2

    :cond_6
    invoke-virtual {p1}, Lcom/android/gallery3d/exif/ExifParser;->getTag()Lcom/android/gallery3d/exif/ExifTag;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/gallery3d/exif/ExifTag;->hasValue()Z

    move-result v2

    if-nez v2, :cond_7

    invoke-virtual {p1, v1}, Lcom/android/gallery3d/exif/ExifParser;->registerForTagValue(Lcom/android/gallery3d/exif/ExifTag;)V

    goto :goto_0

    :cond_7
    :goto_2
    invoke-virtual {v1}, Lcom/android/gallery3d/exif/ExifTag;->getIfd()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/exif/ExifData;->getIfdData(I)Lcom/android/gallery3d/exif/IfdData;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/gallery3d/exif/IfdData;->setTag(Lcom/android/gallery3d/exif/ExifTag;)Lcom/android/gallery3d/exif/ExifTag;

    goto/16 :goto_0

    :cond_8
    new-instance v1, Lcom/android/gallery3d/exif/IfdData;

    invoke-virtual {p1}, Lcom/android/gallery3d/exif/ExifParser;->getCurrentIfd()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/android/gallery3d/exif/IfdData;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/exif/ExifData;->addIfdData(Lcom/android/gallery3d/exif/IfdData;)V

    goto/16 :goto_0

    :cond_9
    return-object v0
.end method
