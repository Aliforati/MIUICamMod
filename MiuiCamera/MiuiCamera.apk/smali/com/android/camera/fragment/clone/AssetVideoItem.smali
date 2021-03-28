.class public Lcom/android/camera/fragment/clone/AssetVideoItem;
.super Lcom/android/camera/fragment/clone/BaseVideoItem;
.source ""


# static fields
.field public static final SHOW_LOGS:Z = false

.field public static final TAG:Ljava/lang/String; = "AssetVideoItem"


# instance fields
.field public final mAssetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

.field public final mCoverResource:I


# direct methods
.method public constructor <init>(Landroid/content/res/AssetFileDescriptor;Lcom/android/camera/videoplayer/manager/VideoPlayerManager;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/AssetFileDescriptor;",
            "Lcom/android/camera/videoplayer/manager/VideoPlayerManager<",
            "Lcom/android/camera/videoplayer/meta/MetaData;",
            ">;I)V"
        }
    .end annotation

    invoke-direct {p0, p2}, Lcom/android/camera/fragment/clone/BaseVideoItem;-><init>(Lcom/android/camera/videoplayer/manager/VideoPlayerManager;)V

    iput-object p1, p0, Lcom/android/camera/fragment/clone/AssetVideoItem;->mAssetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    iput p3, p0, Lcom/android/camera/fragment/clone/AssetVideoItem;->mCoverResource:I

    return-void
.end method


# virtual methods
.method public getContentDescription()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public playNewVideo(Lcom/android/camera/videoplayer/meta/MetaData;Lcom/android/camera/videoplayer/ui/VideoPlayerView;Lcom/android/camera/videoplayer/manager/VideoPlayerManager;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/videoplayer/meta/MetaData;",
            "Lcom/android/camera/videoplayer/ui/VideoPlayerView;",
            "Lcom/android/camera/videoplayer/manager/VideoPlayerManager<",
            "Lcom/android/camera/videoplayer/meta/MetaData;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/camera/fragment/clone/AssetVideoItem;->mAssetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    if-eqz v0, :cond_0

    invoke-interface {p3, p1, p2, v0}, Lcom/android/camera/videoplayer/manager/VideoPlayerManager;->playNewVideo(Lcom/android/camera/videoplayer/meta/MetaData;Lcom/android/camera/videoplayer/ui/VideoPlayerView;Landroid/content/res/AssetFileDescriptor;)V

    goto :goto_0

    :cond_0
    invoke-interface {p3}, Lcom/android/camera/videoplayer/manager/VideoPlayerManager;->stopAnyPlayback()V

    :goto_0
    return-void
.end method

.method public stopPlayback(Lcom/android/camera/videoplayer/manager/VideoPlayerManager;)V
    .locals 0

    invoke-interface {p1}, Lcom/android/camera/videoplayer/manager/VideoPlayerManager;->stopAnyPlayback()V

    return-void
.end method

.method public update(ILcom/android/camera/fragment/clone/VideoViewHolder;Lcom/android/camera/videoplayer/manager/VideoPlayerManager;)V
    .locals 0

    iget-object p1, p2, Lcom/android/camera/fragment/clone/VideoViewHolder;->mCover:Landroid/widget/ImageView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method
