.class public Lcom/android/camera/fragment/vv/VVWorkspaceAdapter$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/fragment/vv/VVWorkspaceAdapter;->loadThumbnailByLastSegment(Ljava/lang/String;Landroid/widget/ImageView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Function<",
        "Ljava/lang/String;",
        "Lcom/android/camera/module/loader/NullHolder<",
        "Landroid/graphics/Bitmap;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/fragment/vv/VVWorkspaceAdapter;


# direct methods
.method public constructor <init>(Lcom/android/camera/fragment/vv/VVWorkspaceAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/fragment/vv/VVWorkspaceAdapter$3;->this$0:Lcom/android/camera/fragment/vv/VVWorkspaceAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/String;)Lcom/android/camera/module/loader/NullHolder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/camera/module/loader/NullHolder<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    new-instance v0, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    invoke-virtual {v0, p1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(J)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-static {p1}, Lcom/android/camera/module/loader/NullHolder;->ofNullable(Ljava/lang/Object;)Lcom/android/camera/module/loader/NullHolder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/vv/VVWorkspaceAdapter$3;->apply(Ljava/lang/String;)Lcom/android/camera/module/loader/NullHolder;

    move-result-object p1

    return-object p1
.end method
