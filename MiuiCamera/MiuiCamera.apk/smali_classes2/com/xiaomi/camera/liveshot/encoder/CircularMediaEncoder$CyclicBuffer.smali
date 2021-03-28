.class public final Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder$CyclicBuffer;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CyclicBuffer"
.end annotation


# static fields
.field public static final DEBUG:Z = true

.field public static final TAG:Ljava/lang/String; = "CyclicBuffer"


# instance fields
.field public final mDataBuffer:[B

.field public final mLivePhotoResults:[Lcom/xiaomi/camera/liveshot/LivePhotoResult;

.field public mMetaHead:I

.field public mMetaTail:I

.field public final mPacketFlags:[I

.field public final mPacketLength:[I

.field public final mPacketPtsUs:[J

.field public final mPacketStart:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/media/MediaFormat;J)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_2

    const-string v0, "mime"

    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "bitrate"

    invoke-virtual {p1, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    int-to-long v2, v1

    mul-long/2addr v2, p2

    const-wide/16 v4, 0x1f40

    div-long/2addr v2, v4

    long-to-int v2, v2

    new-array v3, v2, [B

    iput-object v3, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder$CyclicBuffer;->mDataBuffer:[B

    const-string v3, "video"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "frame-rate"

    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p1

    int-to-double v3, p1

    goto :goto_0

    :cond_0
    const-string v0, "sample-rate"

    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p1

    int-to-double v3, p1

    const-wide/high16 v5, 0x4090000000000000L    # 1024.0

    div-double/2addr v3, v5

    :goto_0
    int-to-double v0, v1

    div-double/2addr v0, v3

    const-wide/high16 v3, 0x4020000000000000L    # 8.0

    div-double/2addr v0, v3

    int-to-double v3, v2

    div-double/2addr v3, v0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    add-double/2addr v3, v0

    double-to-int p1, v3

    mul-int/lit8 v0, p1, 0x2

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder$CyclicBuffer;->mPacketFlags:[I

    new-array v1, v0, [J

    iput-object v1, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder$CyclicBuffer;->mPacketPtsUs:[J

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder$CyclicBuffer;->mPacketStart:[I

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder$CyclicBuffer;->mPacketLength:[I

    new-array v1, v0, [Lcom/xiaomi/camera/liveshot/LivePhotoResult;

    iput-object v1, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder$CyclicBuffer;->mLivePhotoResults:[Lcom/xiaomi/camera/liveshot/LivePhotoResult;

    sget-object v1, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder$CyclicBuffer;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DesiredSpan = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, ", dataBufferSize = "

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", metaBufferCount = "

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", estimatedPacketCount = "

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The desired mimeType is not specified"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The desired MediaFormat must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private canAdd(I)Z
    .locals 9

    iget-object v0, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder$CyclicBuffer;->mDataBuffer:[B

    array-length v0, v0

    iget-object v1, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder$CyclicBuffer;->mPacketStart:[I

    array-length v1, v1

    if-gt p1, v0, :cond_3

    iget v2, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder$CyclicBuffer;->mMetaHead:I

    iget v3, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder$CyclicBuffer;->mMetaTail:I

    const/4 v4, 0x1

    if-ne v2, v3, :cond_0

    return v4

    :cond_0
    add-int/2addr v2, v4

    rem-int/2addr v2, v1

    const/4 v5, 0x0

    const-string v6, ")"

    if-ne v2, v3, :cond_1

    sget-object p1, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder$CyclicBuffer;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ran out of metadata (head="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder$CyclicBuffer;->mMetaHead:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " tail="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder$CyclicBuffer;->mMetaTail:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_1
    invoke-direct {p0}, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder$CyclicBuffer;->getHeadStart()I

    move-result v2

    iget-object v3, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder$CyclicBuffer;->mPacketStart:[I

    iget v7, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder$CyclicBuffer;->mMetaTail:I

    aget v3, v3, v7

    add-int v7, v3, v0

    sub-int/2addr v7, v2

    rem-int/2addr v7, v0

    const-string v0, " free="

    if-le p1, v7, :cond_2

    sget-object v1, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder$CyclicBuffer;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Ran out of data (tailStart="

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " headStart="

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " req="

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_2
    sget-object v2, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder$CyclicBuffer;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Okay: size="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " metaFree="

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder$CyclicBuffer;->mMetaTail:I

    add-int/2addr p1, v1

    iget v0, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder$CyclicBuffer;->mMetaHead:I

    sub-int/2addr p1, v0

    rem-int/2addr p1, v1

    sub-int/2addr p1, v4

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_3
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Enormous packet: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " vs. buffer "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private getHeadStart()I
    .locals 4

    iget v0, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder$CyclicBuffer;->mMetaHead:I

    iget v1, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder$CyclicBuffer;->mMetaTail:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v1, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder$CyclicBuffer;->mDataBuffer:[B

    array-length v1, v1

    iget-object v2, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder$CyclicBuffer;->mPacketStart:[I

    array-length v3, v2

    add-int/2addr v0, v3

    add-int/lit8 v0, v0, -0x1

    rem-int/2addr v0, v3

    aget v2, v2, v0

    iget-object v3, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder$CyclicBuffer;->mPacketLength:[I

    aget v0, v3, v0

    add-int/2addr v2, v0

    add-int/lit8 v2, v2, 0x1

    rem-int/2addr v2, v1

    return v2
.end method

.method private removeTail()V
    .locals 2

    iget v0, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder$CyclicBuffer;->mMetaHead:I

    iget v1, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder$CyclicBuffer;->mMetaTail:I

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder$CyclicBuffer;->mPacketStart:[I

    array-length v0, v0

    add-int/lit8 v1, v1, 0x1

    rem-int/2addr v1, v0

    iput v1, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder$CyclicBuffer;->mMetaTail:I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Can\'t removeTail() in empty buffer"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public add(Ljava/nio/ByteBuffer;IJLcom/xiaomi/camera/liveshot/LivePhotoResult;)V
    .locals 6

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    sub-int/2addr v0, v1

    sget-object v1, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder$CyclicBuffer;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Add size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " flags=0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " pts="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-direct {p0, v0}, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder$CyclicBuffer;->canAdd(I)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder$CyclicBuffer;->TAG:Ljava/lang/String;

    const-string v2, "Cached buffer removed from tail"

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder$CyclicBuffer;->removeTail()V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder$CyclicBuffer;->mDataBuffer:[B

    array-length v1, v1

    iget-object v2, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder$CyclicBuffer;->mPacketStart:[I

    array-length v2, v2

    invoke-direct {p0}, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder$CyclicBuffer;->getHeadStart()I

    move-result v3

    iget-object v4, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder$CyclicBuffer;->mPacketFlags:[I

    iget v5, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder$CyclicBuffer;->mMetaHead:I

    aput p2, v4, v5

    iget-object p2, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder$CyclicBuffer;->mPacketPtsUs:[J

    aput-wide p3, p2, v5

    iget-object p2, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder$CyclicBuffer;->mPacketStart:[I

    aput v3, p2, v5

    iget-object p2, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder$CyclicBuffer;->mPacketLength:[I

    aput v0, p2, v5

    iget-object p2, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder$CyclicBuffer;->mLivePhotoResults:[Lcom/xiaomi/camera/liveshot/LivePhotoResult;

    aput-object p5, p2, v5

    add-int p2, v3, v0

    if-ge p2, v1, :cond_1

    iget-object p2, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder$CyclicBuffer;->mDataBuffer:[B

    invoke-virtual {p1, p2, v3, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    goto :goto_1

    :cond_1
    sub-int/2addr v1, v3

    sget-object p2, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder$CyclicBuffer;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Split, firstsize="

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, " size="

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder$CyclicBuffer;->mDataBuffer:[B

    invoke-virtual {p1, p2, v3, v1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    iget-object p2, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder$CyclicBuffer;->mDataBuffer:[B

    const/4 p3, 0x0

    sub-int/2addr v0, v1

    invoke-virtual {p1, p2, p3, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    :goto_1
    iget p1, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder$CyclicBuffer;->mMetaHead:I

    add-int/lit8 p1, p1, 0x1

    rem-int/2addr p1, v2

    iput p1, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder$CyclicBuffer;->mMetaHead:I

    return-void
.end method

.method public clear()V
    .locals 4

    iget-object v0, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder$CyclicBuffer;->mDataBuffer:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    iget-object v0, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder$CyclicBuffer;->mPacketFlags:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    iget-object v0, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder$CyclicBuffer;->mPacketPtsUs:[J

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Ljava/util/Arrays;->fill([JJ)V

    iget-object v0, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder$CyclicBuffer;->mPacketStart:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    iget-object v0, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder$CyclicBuffer;->mPacketLength:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    iget-object v0, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder$CyclicBuffer;->mLivePhotoResults:[Lcom/xiaomi/camera/liveshot/LivePhotoResult;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    iput v1, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder$CyclicBuffer;->mMetaHead:I

    iput v1, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder$CyclicBuffer;->mMetaTail:I

    return-void
.end method

.method public computeTimeSpanUsec()J
    .locals 5

    iget-object v0, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder$CyclicBuffer;->mPacketStart:[I

    array-length v0, v0

    iget v1, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder$CyclicBuffer;->mMetaHead:I

    iget v2, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder$CyclicBuffer;->mMetaTail:I

    if-ne v1, v2, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    add-int/2addr v1, v0

    add-int/lit8 v1, v1, -0x1

    rem-int/2addr v1, v0

    iget-object v0, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder$CyclicBuffer;->mPacketPtsUs:[J

    aget-wide v3, v0, v1

    aget-wide v0, v0, v2

    sub-long/2addr v3, v0

    return-wide v3
.end method

.method public getChunk(ILandroid/media/MediaCodec$BufferInfo;)Ljava/nio/ByteBuffer;
    .locals 6

    iget-object v0, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder$CyclicBuffer;->mDataBuffer:[B

    array-length v0, v0

    iget-object v1, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder$CyclicBuffer;->mPacketStart:[I

    aget v1, v1, p1

    iget-object v2, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder$CyclicBuffer;->mPacketLength:[I

    aget v2, v2, p1

    iget-object v3, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder$CyclicBuffer;->mPacketFlags:[I

    aget v3, v3, p1

    iput v3, p2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    iput v1, p2, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget-object v3, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder$CyclicBuffer;->mPacketPtsUs:[J

    aget-wide v3, v3, p1

    iput-wide v3, p2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iput v2, p2, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int v3, v1, v2

    const/4 v4, 0x0

    if-gt v3, v0, :cond_0

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    iget-object v0, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder$CyclicBuffer;->mDataBuffer:[B

    invoke-virtual {p1, v0, v1, v2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    iput v4, p2, Landroid/media/MediaCodec$BufferInfo;->offset:I

    return-object p1

    :cond_0
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder$CyclicBuffer;->mDataBuffer:[B

    iget-object v5, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder$CyclicBuffer;->mPacketStart:[I

    aget p1, v5, p1

    invoke-virtual {v3, v1, p1, v0}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    iget-object p1, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder$CyclicBuffer;->mDataBuffer:[B

    sub-int/2addr v2, v0

    invoke-virtual {v3, p1, v4, v2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    iput v4, p2, Landroid/media/MediaCodec$BufferInfo;->offset:I

    return-object v3
.end method

.method public getFirstIndex()I
    .locals 2

    iget v0, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder$CyclicBuffer;->mMetaTail:I

    iget v1, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder$CyclicBuffer;->mMetaHead:I

    if-ne v0, v1, :cond_0

    const/4 v0, -0x1

    :cond_0
    return v0
.end method

.method public getLivePhotoResult(I)Lcom/xiaomi/camera/liveshot/LivePhotoResult;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder$CyclicBuffer;->mLivePhotoResults:[Lcom/xiaomi/camera/liveshot/LivePhotoResult;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getNextIndex(I)I
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder$CyclicBuffer;->mPacketStart:[I

    array-length v0, v0

    add-int/lit8 p1, p1, 0x1

    rem-int/2addr p1, v0

    iget v0, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder$CyclicBuffer;->mMetaHead:I

    if-ne p1, v0, :cond_0

    const/4 p1, -0x1

    :cond_0
    return p1
.end method
