.class public Ljava8/util/stream/DoublePipeline$2$1;
.super Ljava8/util/stream/Sink$ChainedDouble;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava8/util/stream/DoublePipeline$2;->opWrapSink(ILjava8/util/stream/Sink;)Ljava8/util/stream/Sink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava8/util/stream/Sink$ChainedDouble<",
        "Ljava/lang/Double;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$1:Ljava8/util/stream/DoublePipeline$2;


# direct methods
.method public constructor <init>(Ljava8/util/stream/DoublePipeline$2;Ljava8/util/stream/Sink;)V
    .locals 0

    iput-object p1, p0, Ljava8/util/stream/DoublePipeline$2$1;->this$1:Ljava8/util/stream/DoublePipeline$2;

    invoke-direct {p0, p2}, Ljava8/util/stream/Sink$ChainedDouble;-><init>(Ljava8/util/stream/Sink;)V

    return-void
.end method


# virtual methods
.method public accept(D)V
    .locals 2

    iget-object v0, p0, Ljava8/util/stream/Sink$ChainedDouble;->downstream:Ljava8/util/stream/Sink;

    iget-object v1, p0, Ljava8/util/stream/DoublePipeline$2$1;->this$1:Ljava8/util/stream/DoublePipeline$2;

    iget-object v1, v1, Ljava8/util/stream/DoublePipeline$2;->val$mapper:Ljava8/util/function/DoubleUnaryOperator;

    invoke-interface {v1, p1, p2}, Ljava8/util/function/DoubleUnaryOperator;->applyAsDouble(D)D

    move-result-wide p1

    invoke-interface {v0, p1, p2}, Ljava8/util/stream/Sink;->accept(D)V

    return-void
.end method
