.class public Lcom/android/camera/fragment/clone/BaseVideoItem$1;
.super Lcom/android/camera/videoplayer/ui/SimpleMainThreadMediaPlayerListener;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/fragment/clone/BaseVideoItem;->createView(Landroid/view/View;I)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/fragment/clone/BaseVideoItem;

.field public final synthetic val$videoViewHolder:Lcom/android/camera/fragment/clone/VideoViewHolder;


# direct methods
.method public constructor <init>(Lcom/android/camera/fragment/clone/BaseVideoItem;Lcom/android/camera/fragment/clone/VideoViewHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/fragment/clone/BaseVideoItem$1;->this$0:Lcom/android/camera/fragment/clone/BaseVideoItem;

    iput-object p2, p0, Lcom/android/camera/fragment/clone/BaseVideoItem$1;->val$videoViewHolder:Lcom/android/camera/fragment/clone/VideoViewHolder;

    invoke-direct {p0}, Lcom/android/camera/videoplayer/ui/SimpleMainThreadMediaPlayerListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onVideoPreparedMainThread()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/fragment/clone/BaseVideoItem$1;->val$videoViewHolder:Lcom/android/camera/fragment/clone/VideoViewHolder;

    iget-object v0, v0, Lcom/android/camera/fragment/clone/VideoViewHolder;->mCover:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public onVideoSizeChangedMainThread(II)V
    .locals 0

    return-void
.end method

.method public onVideoStoppedMainThread()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/fragment/clone/BaseVideoItem$1;->val$videoViewHolder:Lcom/android/camera/fragment/clone/VideoViewHolder;

    iget-object v0, v0, Lcom/android/camera/fragment/clone/VideoViewHolder;->mCover:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method
