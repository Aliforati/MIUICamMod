.class public Lcom/android/camera/fragment/music/MusicCut;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final TAG:Ljava/lang/String; = "MusicCut"


# instance fields
.field public SAMPLE_SIZE:I

.field public mBitRate:I

.field public mLoopNum:I


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/camera/fragment/music/MusicCut;->mLoopNum:I

    return-void
.end method

.method private convertKbpsToBpm(I)J
    .locals 4

    int-to-long v0, p1

    const-wide/16 v2, 0x400

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x8

    div-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    return-wide v0
.end method

.method private getAudioTrack(Landroid/media/MediaExtractor;)I
    .locals 4

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p1, v0}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v1

    const-string v2, "mime"

    invoke-virtual {v1, v2}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string p1, "bitrate"

    invoke-virtual {v1, p1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p1

    div-int/lit16 p1, p1, 0x3e8

    iput p1, p0, Lcom/android/camera/fragment/music/MusicCut;->mBitRate:I

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method


# virtual methods
.method public clipMp3(Ljava/lang/String;Ljava/lang/String;JJ)Z
    .locals 7

    const-string v0, "Music cut failed"

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Landroid/media/MediaExtractor;

    invoke-direct {v3}, Landroid/media/MediaExtractor;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    invoke-virtual {v3, p1}, Landroid/media/MediaExtractor;->setDataSource(Ljava/lang/String;)V

    invoke-direct {p0, v3}, Lcom/android/camera/fragment/music/MusicCut;->getAudioTrack(Landroid/media/MediaExtractor;)I

    move-result p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-gez p1, :cond_0

    invoke-virtual {v3}, Landroid/media/MediaExtractor;->release()V

    return v2

    :cond_0
    :try_start_2
    invoke-virtual {v3, p1}, Landroid/media/MediaExtractor;->selectTrack(I)V

    iget p1, p0, Lcom/android/camera/fragment/music/MusicCut;->mBitRate:I

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/music/MusicCut;->convertKbpsToBpm(I)J

    move-result-wide v4

    long-to-int p1, v4

    mul-int/lit8 p1, p1, 0x64

    iput p1, p0, Lcom/android/camera/fragment/music/MusicCut;->SAMPLE_SIZE:I

    new-instance p1, Ljava/io/BufferedOutputStream;

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    iget p2, p0, Lcom/android/camera/fragment/music/MusicCut;->SAMPLE_SIZE:I

    invoke-direct {p1, v4, p2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const-wide/16 v4, 0x3e8

    mul-long/2addr p3, v4

    mul-long/2addr p5, v4

    move p2, v2

    :goto_0
    :try_start_3
    iget v1, p0, Lcom/android/camera/fragment/music/MusicCut;->mLoopNum:I

    if-ge p2, v1, :cond_3

    invoke-virtual {v3, p3, p4, v2}, Landroid/media/MediaExtractor;->seekTo(JI)V

    :goto_1
    iget v1, p0, Lcom/android/camera/fragment/music/MusicCut;->SAMPLE_SIZE:I

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v3, v1, v2}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v4

    invoke-virtual {v3}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v5

    cmp-long v5, v5, p5

    if-lez v5, :cond_1

    goto :goto_2

    :cond_1
    if-gtz v4, :cond_2

    :goto_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    new-array v5, v4, [B

    invoke-virtual {v1, v5, v2, v4}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v5}, Ljava/io/BufferedOutputStream;->write([B)V

    invoke-virtual {v3}, Landroid/media/MediaExtractor;->advance()Z
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :cond_3
    invoke-virtual {v3}, Landroid/media/MediaExtractor;->release()V

    :try_start_4
    invoke-virtual {p1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    sget-object p2, Lcom/android/camera/fragment/music/MusicCut;->TAG:Ljava/lang/String;

    invoke-static {p2, v0, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v2

    :catchall_0
    move-exception p2

    goto :goto_3

    :catch_1
    move-exception p2

    goto :goto_4

    :catchall_1
    move-exception p2

    move-object p1, v1

    :goto_3
    move-object v1, v3

    goto :goto_6

    :catch_2
    move-exception p2

    move-object p1, v1

    :goto_4
    move-object v1, v3

    goto :goto_5

    :catchall_2
    move-exception p2

    move-object p1, v1

    goto :goto_6

    :catch_3
    move-exception p2

    move-object p1, v1

    :goto_5
    :try_start_5
    sget-object p3, Lcom/android/camera/fragment/music/MusicCut;->TAG:Ljava/lang/String;

    invoke-static {p3, v0, p2}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/media/MediaExtractor;->release()V

    :cond_4
    if-eqz p1, :cond_5

    :try_start_6
    invoke-virtual {p1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    :cond_5
    return v2

    :catchall_3
    move-exception p2

    :goto_6
    if-eqz v1, :cond_6

    invoke-virtual {v1}, Landroid/media/MediaExtractor;->release()V

    :cond_6
    if-eqz p1, :cond_7

    :try_start_7
    invoke-virtual {p1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    :cond_7
    throw p2
.end method

.method public setLoopNum(I)V
    .locals 0

    iput p1, p0, Lcom/android/camera/fragment/music/MusicCut;->mLoopNum:I

    return-void
.end method
