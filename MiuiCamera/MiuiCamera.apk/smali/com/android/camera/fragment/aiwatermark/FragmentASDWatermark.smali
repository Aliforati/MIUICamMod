.class public Lcom/android/camera/fragment/aiwatermark/FragmentASDWatermark;
.super Lcom/android/camera/fragment/aiwatermark/FragmentBaseWatermark;
.source ""


# static fields
.field public static final FRAGMENT_INFO:I = 0xffffc


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/fragment/aiwatermark/FragmentBaseWatermark;-><init>()V

    return-void
.end method


# virtual methods
.method public getWatermarkList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/camera/aiwatermark/data/WatermarkItem;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/camera/fragment/aiwatermark/FragmentBaseWatermark;->mData:Lcom/android/camera/aiwatermark/data/AbstractWatermarkData;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/camera/aiwatermark/data/ASDWatermark;

    invoke-direct {v0}, Lcom/android/camera/aiwatermark/data/ASDWatermark;-><init>()V

    iput-object v0, p0, Lcom/android/camera/fragment/aiwatermark/FragmentBaseWatermark;->mData:Lcom/android/camera/aiwatermark/data/AbstractWatermarkData;

    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/aiwatermark/FragmentBaseWatermark;->mData:Lcom/android/camera/aiwatermark/data/AbstractWatermarkData;

    invoke-virtual {v0}, Lcom/android/camera/aiwatermark/data/AbstractWatermarkData;->getForManual()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method
