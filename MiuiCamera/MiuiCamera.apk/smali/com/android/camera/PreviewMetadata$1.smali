.class public Lcom/android/camera/PreviewMetadata$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/FlowableOnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/PreviewMetadata;->initPartialMetadataFlowable()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/FlowableOnSubscribe<",
        "Landroid/hardware/camera2/CaptureResult;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/PreviewMetadata;


# direct methods
.method public constructor <init>(Lcom/android/camera/PreviewMetadata;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/PreviewMetadata$1;->this$0:Lcom/android/camera/PreviewMetadata;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public subscribe(Lio/reactivex/FlowableEmitter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/FlowableEmitter<",
            "Landroid/hardware/camera2/CaptureResult;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/camera/PreviewMetadata$1;->this$0:Lcom/android/camera/PreviewMetadata;

    invoke-static {v0}, Lcom/android/camera/PreviewMetadata;->access$000(Lcom/android/camera/PreviewMetadata;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
