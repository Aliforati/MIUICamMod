.class public final Lcom/google/zxing/pdf417/PDF417ResultMetadata;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public addressee:Ljava/lang/String;

.field public checksum:I

.field public fileId:Ljava/lang/String;

.field public fileName:Ljava/lang/String;

.field public fileSize:J

.field public lastSegment:Z

.field public optionalData:[I

.field public segmentCount:I

.field public segmentIndex:I

.field public sender:Ljava/lang/String;

.field public timestamp:J


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->segmentCount:I

    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->fileSize:J

    iput-wide v1, p0, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->timestamp:J

    iput v0, p0, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->checksum:I

    return-void
.end method


# virtual methods
.method public getAddressee()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->addressee:Ljava/lang/String;

    return-object v0
.end method

.method public getChecksum()I
    .locals 1

    iget v0, p0, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->checksum:I

    return v0
.end method

.method public getFileId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->fileId:Ljava/lang/String;

    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public getFileSize()J
    .locals 2

    iget-wide v0, p0, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->fileSize:J

    return-wide v0
.end method

.method public getOptionalData()[I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->optionalData:[I

    return-object v0
.end method

.method public getSegmentCount()I
    .locals 1

    iget v0, p0, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->segmentCount:I

    return v0
.end method

.method public getSegmentIndex()I
    .locals 1

    iget v0, p0, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->segmentIndex:I

    return v0
.end method

.method public getSender()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->sender:Ljava/lang/String;

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    iget-wide v0, p0, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->timestamp:J

    return-wide v0
.end method

.method public isLastSegment()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->lastSegment:Z

    return v0
.end method

.method public setAddressee(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->addressee:Ljava/lang/String;

    return-void
.end method

.method public setChecksum(I)V
    .locals 0

    iput p1, p0, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->checksum:I

    return-void
.end method

.method public setFileId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->fileId:Ljava/lang/String;

    return-void
.end method

.method public setFileName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->fileName:Ljava/lang/String;

    return-void
.end method

.method public setFileSize(J)V
    .locals 0

    iput-wide p1, p0, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->fileSize:J

    return-void
.end method

.method public setLastSegment(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->lastSegment:Z

    return-void
.end method

.method public setOptionalData([I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-object p1, p0, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->optionalData:[I

    return-void
.end method

.method public setSegmentCount(I)V
    .locals 0

    iput p1, p0, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->segmentCount:I

    return-void
.end method

.method public setSegmentIndex(I)V
    .locals 0

    iput p1, p0, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->segmentIndex:I

    return-void
.end method

.method public setSender(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->sender:Ljava/lang/String;

    return-void
.end method

.method public setTimestamp(J)V
    .locals 0

    iput-wide p1, p0, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->timestamp:J

    return-void
.end method
