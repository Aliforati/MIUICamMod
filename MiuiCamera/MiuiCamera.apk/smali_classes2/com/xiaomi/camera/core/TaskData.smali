.class public Lcom/xiaomi/camera/core/TaskData;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public mContainsFirstFrame:Z

.field public mDataBeans:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;",
            ">;"
        }
    .end annotation
.end field

.field public mFirstTimestamp:J


# direct methods
.method public constructor <init>(Ljava/util/List;ZJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;",
            ">;ZJ)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/camera/core/TaskData;->mDataBeans:Ljava/util/List;

    iput-boolean p2, p0, Lcom/xiaomi/camera/core/TaskData;->mContainsFirstFrame:Z

    iput-wide p3, p0, Lcom/xiaomi/camera/core/TaskData;->mFirstTimestamp:J

    return-void
.end method


# virtual methods
.method public containsFirstFrame()Z
    .locals 1

    iget-boolean v0, p0, Lcom/xiaomi/camera/core/TaskData;->mContainsFirstFrame:Z

    return v0
.end method

.method public getDataBeans()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/camera/core/TaskData;->mDataBeans:Ljava/util/List;

    return-object v0
.end method

.method public getFirstTimestamp()J
    .locals 2

    iget-wide v0, p0, Lcom/xiaomi/camera/core/TaskData;->mFirstTimestamp:J

    return-wide v0
.end method
