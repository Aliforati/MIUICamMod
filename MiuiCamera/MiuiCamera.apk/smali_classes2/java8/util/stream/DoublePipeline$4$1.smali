.class public Ljava8/util/stream/DoublePipeline$4$1;
.super Ljava8/util/stream/Sink$ChainedDouble;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava8/util/stream/DoublePipeline$4;->opWrapSink(ILjava8/util/stream/Sink;)Ljava8/util/stream/Sink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava8/util/stream/Sink$ChainedDouble<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$1:Ljava8/util/stream/DoublePipeline$4;


# direct methods
.method public constructor <init>(Ljava8/util/stream/DoublePipeline$4;Ljava8/util/stream/Sink;)V
    .locals 0

    iput-object p1, p0, Ljava8/util/stream/DoublePipeline$4$1;->this$1:Ljava8/util/stream/DoublePipeline$4;

    invoke-direct {p0, p2}, Ljava8/util/stream/Sink$ChainedDouble;-><init>(Ljava8/util/stream/Sink;)V

    return-void
.end method


# virtual methods
.method public accept(D)V
    .locals 2

    iget-object v0, p0, Ljava8/util/stream/Sink$ChainedDouble;->downstream:Ljava8/util/stream/Sink;

    iget-object v1, p0, Ljava8/util/stream/DoublePipeline$4$1;->this$1:Ljava8/util/stream/DoublePipeline$4;

    iget-object v1, v1, Ljava8/util/stream/DoublePipeline$4;->val$mapper:Ljava8/util/function/DoubleToLongFunction;

    invoke-interface {v1, p1, p2}, Ljava8/util/function/DoubleToLongFunction;->applyAsLong(D)J

    move-result-wide p1

    invoke-interface {v0, p1, p2}, Ljava8/util/stream/Sink;->accept(J)V

    return-void
.end method
