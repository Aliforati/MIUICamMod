.class public Ljava8/util/stream/IntPipeline$1$1;
.super Ljava8/util/stream/Sink$ChainedInt;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava8/util/stream/IntPipeline$1;->opWrapSink(ILjava8/util/stream/Sink;)Ljava8/util/stream/Sink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava8/util/stream/Sink$ChainedInt<",
        "TU;>;"
    }
.end annotation


# instance fields
.field public final synthetic this$1:Ljava8/util/stream/IntPipeline$1;


# direct methods
.method public constructor <init>(Ljava8/util/stream/IntPipeline$1;Ljava8/util/stream/Sink;)V
    .locals 0

    iput-object p1, p0, Ljava8/util/stream/IntPipeline$1$1;->this$1:Ljava8/util/stream/IntPipeline$1;

    invoke-direct {p0, p2}, Ljava8/util/stream/Sink$ChainedInt;-><init>(Ljava8/util/stream/Sink;)V

    return-void
.end method


# virtual methods
.method public accept(I)V
    .locals 2

    iget-object v0, p0, Ljava8/util/stream/Sink$ChainedInt;->downstream:Ljava8/util/stream/Sink;

    iget-object v1, p0, Ljava8/util/stream/IntPipeline$1$1;->this$1:Ljava8/util/stream/IntPipeline$1;

    iget-object v1, v1, Ljava8/util/stream/IntPipeline$1;->val$mapper:Ljava8/util/function/IntFunction;

    invoke-interface {v1, p1}, Ljava8/util/function/IntFunction;->apply(I)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava8/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method
