.class public Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgInfo;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public mBackgroundInfo:Lcom/arcsoft/avatar2/BackgroundInfo;

.field public mBgId:I

.field public mDescId:I

.field public mFrame:I

.field public mFuItem:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;

.field public mIsApply:Z

.field public mIsSelected:Z

.field public mLastRefreshTime:J

.field public mResourceId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgInfo;->mIsApply:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgInfo;->mFrame:I

    iput v0, p0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgInfo;->mFrame:I

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;III)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgInfo;->mIsApply:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgInfo;->mFrame:I

    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgInfo;->mFuItem:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;

    iput p2, p0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgInfo;->mResourceId:I

    iput p3, p0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgInfo;->mDescId:I

    iput p4, p0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgInfo;->mBgId:I

    iput v0, p0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgInfo;->mFrame:I

    return-void
.end method

.method public constructor <init>(Lcom/arcsoft/avatar2/BackgroundInfo;III)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgInfo;->mIsApply:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgInfo;->mFrame:I

    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgInfo;->mBackgroundInfo:Lcom/arcsoft/avatar2/BackgroundInfo;

    iput p2, p0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgInfo;->mResourceId:I

    iput p3, p0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgInfo;->mDescId:I

    iput p4, p0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgInfo;->mBgId:I

    iput v0, p0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgInfo;->mFrame:I

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgInfo;->mIsApply:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgInfo;->mFrame:I

    iput-boolean p1, p0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgInfo;->mIsSelected:Z

    const p1, 0x7f10034e

    iput p1, p0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgInfo;->mDescId:I

    return-void
.end method


# virtual methods
.method public clone()Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgInfo;
    .locals 2

    new-instance v0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgInfo;

    invoke-direct {v0}, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgInfo;-><init>()V

    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgInfo;->getBackgroundInfo()Lcom/arcsoft/avatar2/BackgroundInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgInfo;->setBackgroundInfo(Lcom/arcsoft/avatar2/BackgroundInfo;)V

    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgInfo;->getFuItem()Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgInfo;->setFuItem(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;)V

    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgInfo;->getResourceId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgInfo;->setResourceId(I)V

    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgInfo;->getBgId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgInfo;->setBgId(I)V

    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgInfo;->getBgId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgInfo;->setBgId(I)V

    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgInfo;->isApply()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgInfo;->setIsApply(Z)V

    const/4 v1, 0x0

    iput v1, v0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgInfo;->mFrame:I

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgInfo;->clone()Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgInfo;

    move-result-object v0

    return-object v0
.end method

.method public getBackgroundInfo()Lcom/arcsoft/avatar2/BackgroundInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgInfo;->mBackgroundInfo:Lcom/arcsoft/avatar2/BackgroundInfo;

    return-object v0
.end method

.method public getBgId()I
    .locals 1

    iget v0, p0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgInfo;->mBgId:I

    return v0
.end method

.method public getDescId()I
    .locals 1

    iget v0, p0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgInfo;->mDescId:I

    return v0
.end method

.method public getFuItem()Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgInfo;->mFuItem:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;

    return-object v0
.end method

.method public getIsNeedRefresh()Z
    .locals 8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgInfo;->mBackgroundInfo:Lcom/arcsoft/avatar2/BackgroundInfo;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return v3

    :cond_0
    iget-wide v4, p0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgInfo;->mLastRefreshTime:J

    sub-long v4, v0, v4

    invoke-virtual {v2}, Lcom/arcsoft/avatar2/BackgroundInfo;->getDelayMillis()I

    move-result v2

    int-to-long v6, v2

    cmp-long v2, v4, v6

    if-gez v2, :cond_2

    iget v2, p0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgInfo;->mFrame:I

    if-gez v2, :cond_1

    goto :goto_0

    :cond_1
    return v3

    :cond_2
    :goto_0
    iput-wide v0, p0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgInfo;->mLastRefreshTime:J

    const/4 v0, 0x1

    return v0
.end method

.method public getRefreshTime()J
    .locals 2

    iget-wide v0, p0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgInfo;->mLastRefreshTime:J

    return-wide v0
.end method

.method public getResourceId()I
    .locals 1

    iget v0, p0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgInfo;->mResourceId:I

    return v0
.end method

.method public isApply()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgInfo;->mIsApply:Z

    return v0
.end method

.method public isSelected()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgInfo;->mIsSelected:Z

    return v0
.end method

.method public nextFrame()I
    .locals 3

    iget v0, p0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgInfo;->mFrame:I

    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgInfo;->mBackgroundInfo:Lcom/arcsoft/avatar2/BackgroundInfo;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/arcsoft/avatar2/BackgroundInfo;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    iget v1, p0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgInfo;->mFrame:I

    iget-object v2, p0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgInfo;->mBackgroundInfo:Lcom/arcsoft/avatar2/BackgroundInfo;

    invoke-virtual {v2}, Lcom/arcsoft/avatar2/BackgroundInfo;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_0

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgInfo;->mFrame:I

    :cond_0
    iget v1, p0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgInfo;->mFrame:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iput v1, p0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgInfo;->mFrame:I

    return v0
.end method

.method public setBackgroundInfo(Lcom/arcsoft/avatar2/BackgroundInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgInfo;->mBackgroundInfo:Lcom/arcsoft/avatar2/BackgroundInfo;

    return-void
.end method

.method public setBgId(I)V
    .locals 0

    iput p1, p0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgInfo;->mBgId:I

    return-void
.end method

.method public setDescId(I)V
    .locals 0

    iput p1, p0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgInfo;->mDescId:I

    return-void
.end method

.method public setFuItem(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgInfo;->mFuItem:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;

    return-void
.end method

.method public setIsApply(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgInfo;->mIsApply:Z

    return-void
.end method

.method public setRefreshTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgInfo;->mLastRefreshTime:J

    return-void
.end method

.method public setResourceId(I)V
    .locals 0

    iput p1, p0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgInfo;->mResourceId:I

    return-void
.end method

.method public setSelected(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgInfo;->mIsSelected:Z

    return-void
.end method
