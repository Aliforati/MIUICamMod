.class public final Ljava8/util/stream/Nodes$CollectorTask$OfLong;
.super Ljava8/util/stream/Nodes$CollectorTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava8/util/stream/Nodes$CollectorTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OfLong"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<P_IN:",
        "Ljava/lang/Object;",
        ">",
        "Ljava8/util/stream/Nodes$CollectorTask<",
        "TP_IN;",
        "Ljava/lang/Long;",
        "Ljava8/util/stream/Node$OfLong;",
        "Ljava8/util/stream/Node$Builder$OfLong;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava8/util/stream/PipelineHelper;Ljava8/util/Spliterator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/stream/PipelineHelper<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava8/util/Spliterator<",
            "TP_IN;>;)V"
        }
    .end annotation

    invoke-static {}, Ljava8/util/stream/Nodes$CollectorTask$OfLong$$Lambda$1;->lambdaFactory$()Ljava8/util/function/LongFunction;

    move-result-object v0

    invoke-static {}, Ljava8/util/stream/Nodes$CollectorTask$OfLong$$Lambda$2;->lambdaFactory$()Ljava8/util/function/BinaryOperator;

    move-result-object v1

    invoke-direct {p0, p1, p2, v0, v1}, Ljava8/util/stream/Nodes$CollectorTask;-><init>(Ljava8/util/stream/PipelineHelper;Ljava8/util/Spliterator;Ljava8/util/function/LongFunction;Ljava8/util/function/BinaryOperator;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic doLeaf()Ljava/lang/Object;
    .locals 1

    invoke-super {p0}, Ljava8/util/stream/Nodes$CollectorTask;->doLeaf()Ljava8/util/stream/Node;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic makeChild(Ljava8/util/Spliterator;)Ljava8/util/stream/AbstractTask;
    .locals 0

    invoke-super {p0, p1}, Ljava8/util/stream/Nodes$CollectorTask;->makeChild(Ljava8/util/Spliterator;)Ljava8/util/stream/Nodes$CollectorTask;

    move-result-object p1

    return-object p1
.end method
