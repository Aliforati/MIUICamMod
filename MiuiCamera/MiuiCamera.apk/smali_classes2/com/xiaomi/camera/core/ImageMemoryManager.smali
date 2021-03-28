.class public Lcom/xiaomi/camera/core/ImageMemoryManager;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/camera/core/ImageMemoryManager$ImageInfo;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "ImageMemoryManager"

.field public static final TOTAL_MAX_MEMORY_USAGE:I = 0x40000000

.field public static mUsedMemory:I


# instance fields
.field public mHoldImageNumArray:Landroid/util/SparseIntArray;

.field public mImagesMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/media/Image;",
            "Lcom/xiaomi/camera/core/ImageMemoryManager$ImageInfo;",
            ">;"
        }
    .end annotation
.end field

.field public mMaxHoldImageNumber:I

.field public final mObjLock:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/camera/core/ImageMemoryManager;->mImagesMap:Ljava/util/Map;

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/camera/core/ImageMemoryManager;->mHoldImageNumArray:Landroid/util/SparseIntArray;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/camera/core/ImageMemoryManager;->mObjLock:Ljava/lang/Object;

    iput p1, p0, Lcom/xiaomi/camera/core/ImageMemoryManager;->mMaxHoldImageNumber:I

    return-void
.end method

.method private getHoldImageNumber(I)I
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/camera/core/ImageMemoryManager;->mHoldImageNumArray:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result p1

    return p1
.end method

.method private getImageUsedMemory(Landroid/media/Image;)I
    .locals 4

    invoke-virtual {p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-virtual {p1}, Landroid/media/Image;->getFormat()I

    move-result p1

    const/16 v1, 0x20

    if-eq p1, v1, :cond_1

    const/16 v1, 0x23

    if-eq p1, v1, :cond_0

    const v1, 0x32315659

    if-eq p1, v1, :cond_0

    return v0

    :cond_0
    int-to-double v0, v0

    const-wide/high16 v2, 0x3ff8000000000000L    # 1.5

    mul-double/2addr v0, v2

    double-to-int p1, v0

    return p1

    :cond_1
    mul-int/lit8 v0, v0, 0x2

    return v0
.end method

.method private getMaxHoldImageNumber()I
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/xiaomi/camera/core/ImageMemoryManager;->mHoldImageNumArray:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/xiaomi/camera/core/ImageMemoryManager;->mHoldImageNumArray:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v2

    if-le v2, v1, :cond_0

    iget-object v1, p0, Lcom/xiaomi/camera/core/ImageMemoryManager;->mHoldImageNumArray:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static isMemoryFull()Z
    .locals 2

    sget v0, Lcom/xiaomi/camera/core/ImageMemoryManager;->mUsedMemory:I

    const/high16 v1, 0x40000000    # 2.0f

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public holdAnImage(ILandroid/media/Image;)V
    .locals 6

    iget-object v0, p0, Lcom/xiaomi/camera/core/ImageMemoryManager;->mObjLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/camera/core/ImageMemoryManager;->mHoldImageNumArray:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    iget-object v2, p0, Lcom/xiaomi/camera/core/ImageMemoryManager;->mHoldImageNumArray:Landroid/util/SparseIntArray;

    const/4 v3, 0x1

    add-int/2addr v1, v3

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseIntArray;->put(II)V

    invoke-direct {p0, p2}, Lcom/xiaomi/camera/core/ImageMemoryManager;->getImageUsedMemory(Landroid/media/Image;)I

    move-result v1

    iget-object v2, p0, Lcom/xiaomi/camera/core/ImageMemoryManager;->mImagesMap:Ljava/util/Map;

    new-instance v4, Lcom/xiaomi/camera/core/ImageMemoryManager$ImageInfo;

    invoke-direct {v4, p0, p1, v1}, Lcom/xiaomi/camera/core/ImageMemoryManager$ImageInfo;-><init>(Lcom/xiaomi/camera/core/ImageMemoryManager;II)V

    invoke-interface {v2, p2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget v2, Lcom/xiaomi/camera/core/ImageMemoryManager;->mUsedMemory:I

    add-int/2addr v2, v1

    sput v2, Lcom/xiaomi/camera/core/ImageMemoryManager;->mUsedMemory:I

    sget-object v1, Lcom/xiaomi/camera/core/ImageMemoryManager;->TAG:Ljava/lang/String;

    const-string v2, "holdAnImage: %s, queue_%d.size=%d"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v4, v3

    const/4 p2, 0x2

    invoke-direct {p0, p1}, Lcom/xiaomi/camera/core/ImageMemoryManager;->getHoldImageNumber(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, p2

    invoke-static {v1, v2, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public needWaitImageClose()Z
    .locals 4

    iget-object v0, p0, Lcom/xiaomi/camera/core/ImageMemoryManager;->mObjLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/xiaomi/camera/core/ImageMemoryManager;->getMaxHoldImageNumber()I

    move-result v1

    iget v2, p0, Lcom/xiaomi/camera/core/ImageMemoryManager;->mMaxHoldImageNumber:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    if-lt v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    monitor-exit v0

    return v3

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public releaseAnImage(Landroid/media/Image;)V
    .locals 7

    iget-object v0, p0, Lcom/xiaomi/camera/core/ImageMemoryManager;->mObjLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/camera/core/ImageMemoryManager;->mImagesMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/xiaomi/camera/core/ImageMemoryManager;->mImagesMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/camera/core/ImageMemoryManager$ImageInfo;

    iget-object v2, p0, Lcom/xiaomi/camera/core/ImageMemoryManager;->mHoldImageNumArray:Landroid/util/SparseIntArray;

    iget v3, v1, Lcom/xiaomi/camera/core/ImageMemoryManager$ImageInfo;->owner:I

    invoke-virtual {v2, v3}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    const/4 v3, 0x1

    if-lez v2, :cond_0

    iget-object v4, p0, Lcom/xiaomi/camera/core/ImageMemoryManager;->mHoldImageNumArray:Landroid/util/SparseIntArray;

    iget v5, v1, Lcom/xiaomi/camera/core/ImageMemoryManager$ImageInfo;->owner:I

    sub-int/2addr v2, v3

    invoke-virtual {v4, v5, v2}, Landroid/util/SparseIntArray;->put(II)V

    :cond_0
    sget v2, Lcom/xiaomi/camera/core/ImageMemoryManager;->mUsedMemory:I

    iget v4, v1, Lcom/xiaomi/camera/core/ImageMemoryManager$ImageInfo;->size:I

    sub-int/2addr v2, v4

    sput v2, Lcom/xiaomi/camera/core/ImageMemoryManager;->mUsedMemory:I

    iget-object v2, p0, Lcom/xiaomi/camera/core/ImageMemoryManager;->mImagesMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/xiaomi/camera/core/ImageMemoryManager;->mObjLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    sget-object v2, Lcom/xiaomi/camera/core/ImageMemoryManager;->TAG:Ljava/lang/String;

    const-string v4, "releaseAnImage: %s, queue_%d.size=%d"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    iget p1, v1, Lcom/xiaomi/camera/core/ImageMemoryManager$ImageInfo;->owner:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v5, v3

    const/4 p1, 0x2

    iget v1, v1, Lcom/xiaomi/camera/core/ImageMemoryManager$ImageInfo;->owner:I

    invoke-direct {p0, v1}, Lcom/xiaomi/camera/core/ImageMemoryManager;->getHoldImageNumber(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, p1

    invoke-static {v2, v4, v5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/xiaomi/camera/core/ImageMemoryManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "releaseAnImage: not hold image "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public waitImageCloseIfNeeded(I)V
    .locals 4

    iget-object v0, p0, Lcom/xiaomi/camera/core/ImageMemoryManager;->mObjLock:Ljava/lang/Object;

    monitor-enter v0

    :goto_0
    :try_start_0
    invoke-direct {p0, p1}, Lcom/xiaomi/camera/core/ImageMemoryManager;->getHoldImageNumber(I)I

    move-result v1

    iget v2, p0, Lcom/xiaomi/camera/core/ImageMemoryManager;->mMaxHoldImageNumber:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v2, v2, -0x1

    if-lt v1, v2, :cond_0

    :try_start_1
    sget-object v1, Lcom/xiaomi/camera/core/ImageMemoryManager;->TAG:Ljava/lang/String;

    const-string v2, "waitImageCloseIfNeeded: wait E"

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/xiaomi/camera/core/ImageMemoryManager;->mObjLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    sget-object v1, Lcom/xiaomi/camera/core/ImageMemoryManager;->TAG:Ljava/lang/String;

    const-string v2, "waitImageCloseIfNeeded: wait X"

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    sget-object v2, Lcom/xiaomi/camera/core/ImageMemoryManager;->TAG:Ljava/lang/String;

    const-string v3, "waitImageCloseIfNeeded: failed!"

    invoke-static {v2, v3, v1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method
