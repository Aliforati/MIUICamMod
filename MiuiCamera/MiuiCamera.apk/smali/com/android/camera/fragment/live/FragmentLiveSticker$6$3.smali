.class public Lcom/android/camera/fragment/live/FragmentLiveSticker$6$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/functions/Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/fragment/live/FragmentLiveSticker$6;->onResponseError(Lcom/android/camera/network/net/base/ErrorCode;Ljava/lang/String;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/android/camera/fragment/live/FragmentLiveSticker$6;

.field public final synthetic val$list:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/android/camera/fragment/live/FragmentLiveSticker$6;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/fragment/live/FragmentLiveSticker$6$3;->this$1:Lcom/android/camera/fragment/live/FragmentLiveSticker$6;

    iput-object p2, p0, Lcom/android/camera/fragment/live/FragmentLiveSticker$6$3;->val$list:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/fragment/live/FragmentLiveSticker$6$3;->this$1:Lcom/android/camera/fragment/live/FragmentLiveSticker$6;

    iget-object v0, v0, Lcom/android/camera/fragment/live/FragmentLiveSticker$6;->this$0:Lcom/android/camera/fragment/live/FragmentLiveSticker;

    iget-object v1, p0, Lcom/android/camera/fragment/live/FragmentLiveSticker$6$3;->val$list:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/android/camera/fragment/live/FragmentLiveSticker;->access$100(Lcom/android/camera/fragment/live/FragmentLiveSticker;Ljava/util/List;)V

    return-void
.end method
